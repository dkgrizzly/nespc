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
   ,input wire  [15:0]  CPU_A
   ,input wire   [7:0]  CPU_D
   ,input wire          CPU_RW
   ,output wire         IWRAM_nCE
   ,output wire         PPU_nCE
);

// Yes, I know this wastes 1 output pin for nWR, and could be replaced by a transistor for nRD.
wire CPU_nRD = ~CPU_RW;
wire CPU_nWR =  CPU_RW;

reg HIDE_PPU = 1'b0;
reg MOVE_PPU = 1'b0;
reg ALIAS_20 = 1'b1;
reg ALIAS_00 = 1'b1;
reg EWRAM_20 = 1'b0;
reg EWRAM_00 = 1'b0;

// WRAM $0000-$1FFF External / Internal (Aliased, Non-aliased)
assign IWRAM_nCE = EWRAM_00 ? 1'b1 : !(M2 && (ALIAS_00 ? (CPU_A[15:13] == 3'h0) : (CPU_A[15:11] == 5'h0)));

// PPU $4038-$403F / $3FF8-$3FFF / $2000-$3FFF (Aliased, Non-aliased)
assign PPU_nCE = HIDE_PPU || !(M2 && (MOVE_PPU ? (CPU_A[15:3] == 13'b0100000000111) : (
                                      EWRAM_20 ? (CPU_A[15:3] == 13'b0011111111111) : (
                                      ALIAS_20 ? (CPU_A[15:13] == 3'h1) : (CPU_A[15:3] == 13'b0010000000000)))));

// MMU Registers

always @ (posedge M2) begin
    // $402F: MMU Flags Register
    // D7 toggles $FC00-$FFFF between (0) PRG-ROM and (1) PRG-RAM
    // D1 enables/disables hiding the PPU
    // D0 enables/disables $0000-$3FFF mapping
    if(!CPU_nWR && (CPU_A[15:0] == 16'h402F)) begin
        HIDE_PPU <= CPU_D[6];
        ALIAS_20 <= CPU_D[5];
        ALIAS_00 <= CPU_D[4];
        MOVE_PPU <= CPU_D[2];
        EWRAM_20 <= CPU_D[1];
        EWRAM_00 <= CPU_D[0];
    end
end

endmodule
