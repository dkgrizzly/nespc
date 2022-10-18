`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:37 10/16/2022 
// Design Name: 
// Module Name:    nespc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module nespc(
    input wire          SYSCLK
   ,input wire          M2
   ,input wire          nROMSEL
   ,input wire   [6:0]  CPU_A
   ,input wire   [7:0]  CPU_D
   ,input wire          CPU_RW
   ,input wire          PPU_A13
   ,input wire          PPU_A12
   ,output wire         CPU_nRD
   ,output wire         CPU_nWR
   ,output wire         FDC_nCE
   ,output reg   [7:0]  SEL
   ,output wire  [6:0]  MMU_A
   ,output wire  [6:0]  PMU_A
   ,output wire         PRG_RAM_nCE
   ,output wire         PRG_ROM_nCE
   ,output wire         CHR_RAM_nCE
   ,output wire         CHR_ROM_nCE
   ,output wire         CI_RAM_nCE
   ,output wire         FDC_nRST
);

assign CPU_nRD = ~CPU_RW;
assign CPU_nWR =  CPU_RW;

// Floppy Disk Controller at $46xx, Reset at $47xx
assign FDC_nCE  = ({!M2, !nROMSEL, CPU_A[6:0]} != 9'h046);
assign FDC_nRST = ({!M2, !nROMSEL, CPU_A[6:0]} != 9'h047);

// $5000-$5FFF
wire PAGEL =  { M2, nROMSEL, CPU_A[6:4] } == 5'b11101;

// $6000-$FFFF
wire PAGEH = ({ M2, nROMSEL, CPU_A[6:5] } == 4'b1111) || !nROMSEL;


reg [7:0] CPU_WIN0 = 8'h7f;
reg [7:0] CPU_WIN1 = 8'h7f;
reg [7:0] PPU_WIN0 = 8'h7f;
reg [7:0] PPU_WIN1 = 8'h7f;
reg [7:0] PPU_WIN2 = 8'h7f;

assign PMU_A[6:0] = PPU_A13 ? (PPU_A12 ? 7'h7f : PPU_WIN2[6:0]) : (PPU_A12 ? PPU_WIN1[6:0] : PPU_WIN0[6:0]);
assign CHR_ROM_nCE = PPU_A13 ? (PPU_A12 ? 1'b1 : PPU_WIN2[7]) : (PPU_A12 ? PPU_WIN1[7] : PPU_WIN0[7]);
assign CHR_RAM_nCE = PPU_A13 ? (PPU_A12 ? 1'b1 : PPU_WIN2[7]) : (PPU_A12 ? PPU_WIN1[7] : PPU_WIN0[7]);
assign CI_RAM_nCE = (PPU_A13 && PPU_A12) ? 1'b0 : 1'b1;

assign MMU_A[6:0] = PAGEH ? CPU_WIN0[6:0] : (PAGEL ? (CPU_WIN1[6:0] + { 4'b0, CPU_A[6:4] }) : 7'h7f);
assign PRG_ROM_nCE = PAGEH ? !CPU_WIN0[7] : (PAGEL ? !CPU_WIN1[7] : 1'b1);
assign PRG_RAM_nCE = PAGEH ?  CPU_WIN0[7] : (PAGEL ?  CPU_WIN1[7] : 1'b1);

always @ (posedge SYSCLK) begin
    // $41xx: MMU Register for CPU Bus $5000-$5FFF
    if({CPU_nWR, !M2, !nROMSEL, CPU_A[6:0]} == 10'h041) begin
       CPU_WIN0 <= CPU_D;
    end
    // $42xx: MMU Register for CPU Bus $6000-$FFFF
    if({CPU_nWR, !M2, !nROMSEL, CPU_A[6:0]} == 10'h042) begin
       CPU_WIN1 <= CPU_D;
    end
    // $43xx: MMU Register for PPU Bus $0000-$0FFF
    if({CPU_nWR, !M2, !nROMSEL, CPU_A[6:0]} == 10'h043) begin
       PPU_WIN0 <= CPU_D;
    end
    // $44xx: MMU Register for PPU Bus $1000-$1FFF
    if({CPU_nWR, !M2, !nROMSEL, CPU_A[6:0]} == 10'h044) begin
       PPU_WIN1 <= CPU_D;
    end
    // $45xx: MMU Register for PPU Bus $2000-$2FFF
    if({CPU_nWR, !M2, !nROMSEL, CPU_A[6:0]} == 10'h045) begin
       PPU_WIN2 <= CPU_D;
    end

    case({!M2, !nROMSEL, CPU_A[6:0]})
      9'h048:  SEL[7:0] <= 14'b11111110; // I/O0 $48xx -> Slot 0 I/O Window
      9'h049:  SEL[7:0] <= 14'b11111101; // ROM0 $49xx -> Slot 0 ROM Window
      9'h04A:  SEL[7:0] <= 14'b11111011; // I/O1 $4Axx -> Slot 1 I/O Window
      9'h04B:  SEL[7:0] <= 14'b11110111; // ROM1 $4Bxx -> Slot 1 ROM Window
      9'h04C:  SEL[7:0] <= 14'b11101111; // I/O2 $4Cxx -> Slot 2 I/O Window
      9'h04D:  SEL[7:0] <= 14'b11011111; // ROM2 $4Dxx -> Slot 2 ROM Window
      9'h04E:  SEL[7:0] <= 14'b10111111; // I/O3 $4Exx -> Slot 3 I/O Window
      9'h04F:  SEL[7:0] <= 14'b01111111; // ROM3 $4Fxx -> Slot 3 ROM Window
      default: SEL[7:0] <= 14'b11111111;
    endcase
end

endmodule
