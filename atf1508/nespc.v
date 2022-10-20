//`timescale 1ns / 1ps
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
   ,input wire  [14:0]  CPU_A
   ,input wire   [7:0]  CPU_D
   ,input wire          CPU_RW
   ,input wire          PPU_A13
   ,input wire          PPU_A12
   ,output wire         CPU_nRD
   ,output wire         CPU_nWR
   ,output wire         FDC_nCE
   ,output wire  [7:0]  SEL
   ,output wire  [6:0]  MMU_A
   ,output wire  [6:0]  PMU_A
   ,output wire         PRG_RAM_nCE
   ,output wire         PRG_ROM_nCE
   ,output wire         CHR_RAM_nCE
   ,output wire         CHR_ROM_nCE
   ,output wire         CI_RAM_nCE
   ,output wire         CI_RAM_A10
   ,output wire         FDC_RST
);

// Yes, I know this wastes 1 output pin for nWR, and could be replaced by a transistor for nRD.
assign CPU_nRD = ~CPU_RW;
assign CPU_nWR =  CPU_RW;

// Floppy Disk Controller at $404x, Reset at $4050
assign FDC_nCE = M2 || nROMSEL || (CPU_A[14:4] != 11'h0404);
assign FDC_RST = M2 && nROMSEL && (CPU_A[14:0] == 15'h04050);

// I/O0 $48xx -> Slot 0 I/O Window
assign SEL[0] = M2 && nROMSEL && (CPU_A[14:8] == 7'h48);

// ROM0 $49xx -> Slot 0 ROM Window
assign SEL[1] = M2 && nROMSEL && (CPU_A[14:8] == 7'h49);

// I/O1 $4Axx -> Slot 1 I/O Window
assign SEL[2] = M2 && nROMSEL && (CPU_A[14:8] == 7'h4A);

// ROM1 $4Bxx -> Slot 1 ROM Window
assign SEL[3] = M2 && nROMSEL && (CPU_A[14:8] == 7'h4B);

// I/O2 $4Cxx -> Slot 2 I/O Window
assign SEL[4] = M2 && nROMSEL && (CPU_A[14:8] == 7'h4C);

// ROM2 $4Dxx -> Slot 2 ROM Window
assign SEL[5] = M2 && nROMSEL && (CPU_A[14:8] == 7'h4D);

// I/O3 $4Exx -> Slot 3 I/O Window
assign SEL[6] = M2 && nROMSEL && (CPU_A[14:8] == 7'h4E);

// ROM3 $4Fxx -> Slot 3 ROM Window
assign SEL[7] = M2 && nROMSEL && (CPU_A[14:8] == 7'h4F);




// PPU/CHR Memory Mapper

// PPU $0000-$0FFF  4KB Pattern Table 0 (Default CHR-ROM $FFF000-$FFFFFF)
reg [7:0] PPU_WIN0 = 8'h7f;

// PPU $1000-$1FFF  4KB Pattern Table 1 (Default CHR-ROM $FFE000-$FFEFFF)
reg [7:0] PPU_WIN1 = 8'h7e;

// PPU $2000-$2FFF  4KB Name Tables (Default CHR-ROM $FFD000-$FFDFFF)
reg [7:0] PPU_WIN2 = 8'h7d;

// PPU $3000-$3EFF  CI-A10 value for CI-RAM (Mostly Useless)
reg       PPU_WIN3 = 1'b1;

assign PMU_A[6:0]  = PPU_A13 ? (PPU_A12 ? 7'h7f : PPU_WIN2[6:0]) : (PPU_A12 ? PPU_WIN1[6:0] : PPU_WIN0[6:0]);
assign CHR_ROM_nCE = PPU_A13 ? (PPU_A12 ?  1'b1 : PPU_WIN2[7]  ) : (PPU_A12 ? PPU_WIN1[7]   : PPU_WIN0[7]  );
assign CHR_RAM_nCE = PPU_A13 ? (PPU_A12 ?  1'b1 : PPU_WIN2[7]  ) : (PPU_A12 ? PPU_WIN1[7]   : PPU_WIN0[7]  );

// Cull these to drop the (Mostly Useless) CI-RAM and save two I/O pins (wire CI_RAM_nCE to +5V instead)
assign CI_RAM_nCE  = (PPU_A13 && PPU_A12) ? 1'b0 : 1'b1;
assign CI_RAM_A10  = PPU_WIN3;




// CPU/PRG Memory Mapper

// $0000-$3FFF 16KB Base Window (Fixed at PRG-RAM $FF0000-$FF3FFF)
reg PAGE00_EN = 1'b0;
wire PAGE00_SEL = PAGE00_EN && M2 && nROMSEL && (CPU_A[14:12] < 3'd3);

// $5000-$5FFF  4KB Page Window
reg [7:0] PAGE50_WIN = 8'h7f;
wire PAGE50_SEL =  M2 && nROMSEL && (CPU_A[14:12] == 5'd5);

// $6000-$FBFF 39KB User Window (Fixed at PRG-ROM/PRG-RAM $FF6000-$FFFBFF)
reg PAGE60_RAM = 1'b0;
wire PAGE60_SEL = !nROMSEL || (M2 && (CPU_A[14:12] >= 3'd6));

// $FC00-$FFFF  1KB Vector Window (Fixed at PRG-ROM/PRG-RAM $FFFC00-$FFFFFF)
reg PAGEFC_RAM = 1'b0;
wire PAGEFC_SEL = !nROMSEL && CPU_A[14] &&  CPU_A[13] &&  CPU_A[12]  &&  CPU_A[11] &&  CPU_A[10];


assign MMU_A[6:0]  = PAGEFC_SEL ? 7'h7f : (
							PAGE50_SEL ? PAGE50_WIN[6:0] :
							{ 3'd7, !nROMSEL, CPU_A[14:12] } );

assign PRG_ROM_nCE = !((PAGEFC_SEL && !PAGEFC_RAM) ||
                       (PAGE60_SEL && !PAGE60_RAM) ||
                       (PAGE50_SEL && !PAGE50_WIN[7]));

assign PRG_RAM_nCE = !((PAGEFC_SEL && PAGEFC_RAM) ||
                       (PAGE60_SEL && PAGE60_RAM) ||
                       (PAGE50_SEL && PAGE50_WIN[7]) || 
							   PAGE00_SEL);




// MMU Registers

always @ (posedge SYSCLK) begin
    // $4020: MMU Register for CPU Bus $5000-$5FFF
    if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4020)) begin
       PAGE50_WIN <= CPU_D;
    end

    // $402F: MMU Flags Register
	 // D7 toggles $FC00-$FFFF between (0) PRG-ROM and (1) PRG-RAM
	 // D6 toggles $6000-$FBFF between (0) PRG-ROM and (1) PRG-RAM
	 // D0 enables/disables $0000-$3FFF mapping
    if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h402F)) begin
       PAGEFC_RAM <= CPU_D[7];
       PAGE60_RAM <= CPU_D[6];
       PAGE00_EN <= CPU_D[0];
    end

    // $4030: MMU Register for PPU Bus $0000-$0FFF
    if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4030)) begin
       PPU_WIN0 <= CPU_D;
    end
    // $4031: MMU Register for PPU Bus $1000-$1FFF
    if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4031)) begin
       PPU_WIN1 <= CPU_D;
    end
    // $4032: MMU Register for PPU Bus $2000-$2FFF
    if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4032)) begin
       PPU_WIN2 <= CPU_D;
    end
    // $4033: MMU Register for PPU Bus $3000-$3EFF
    if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4033)) begin
       PPU_WIN3 <= CPU_D[0];
    end
end

endmodule
