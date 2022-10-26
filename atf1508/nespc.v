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

reg [1:0] UNLOCK = 2'b0;

// $0000-$3FFF 16KB Base Window
reg EWRAM_20 = 1'b0;
reg EWRAM_00 = 1'b0;
reg [7:0] PAGE00_WIN = 8'h80;

// EWRAM
wire PAGE00_SEL = (CPU_A[14:3] != 12'b011111111111) && M2 && nROMSEL && !CPU_A[14] && ((EWRAM_00 && !CPU_A[13]) || (EWRAM_20 && CPU_A[13]));

// $5000-$5FFF  4KB Page Window
reg [7:0] PAGE50_WIN = 8'h75;
wire PAGE50_SEL =  M2 && nROMSEL && (CPU_A[14:12] == 3'h5);

// $6000-$7FFF  8KB Page Window
reg [7:0] PAGE60_WIN = 8'h76;
wire PAGE60_SEL =  M2 && nROMSEL && (CPU_A[14:13] == 2'h3);

// $8000-$9FFF  8KB Page Window
reg [7:0] PAGE80_WIN = 8'h78;
wire PAGE80_SEL =  M2 && !nROMSEL && (CPU_A[14:13] == 2'h0);

// $A000-$BFFF  8KB Page Window
reg [7:0] PAGEA0_WIN = 8'h7A;
wire PAGEA0_SEL =  M2 && !nROMSEL && (CPU_A[14:13] == 2'h1);

// $C000-$DFFF  8KB Page Window
reg [7:0] PAGEC0_WIN = 8'h7C;
wire PAGEC0_SEL =  M2 && !nROMSEL && (CPU_A[14:12] == 2'h2);

// $E000-$FBFF  7KB User Window (Fixed at PRG-ROM/PRG-RAM $FFE000-$FFFBFF)
//reg PAGEE0_RAM = 1'b0;
reg [7:0] PAGEE0_WIN = 8'h7E;
wire PAGEE0_SEL = !nROMSEL; // || (M2 && (CPU_A[14:12] >= 3'd6));

// $FC00-$FFFF  1KB Vector Window (Fixed at PRG-ROM/PRG-RAM $FFFC00-$FFFFFF)
reg PAGEFC_RAM = 1'b0;
wire PAGEFC_SEL = !nROMSEL && CPU_A[14] &&  CPU_A[13] &&  CPU_A[12]  &&  CPU_A[11] &&  CPU_A[10];


assign MMU_A[6:0]  = PAGEFC_SEL ? 7'h7f : (
                     PAGEE0_SEL ? { PAGEE0_WIN[6:1], CPU_A[12] } : (
                     PAGEC0_SEL ? { PAGEC0_WIN[6:1], CPU_A[12] } : (
                     PAGEA0_SEL ? { PAGEA0_WIN[6:1], CPU_A[12] } : (
                     PAGE80_SEL ? { PAGE80_WIN[6:1], CPU_A[12] } : (
                     PAGE60_SEL ? { PAGE60_WIN[6:1], CPU_A[12] } : (
                     PAGE50_SEL ? PAGE50_WIN[6:0] : (
							{ PAGE00_WIN[6:2], CPU_A[13:12] } )))))));

assign PRG_ROM_nCE = !((PAGEFC_SEL && !PAGEFC_RAM) ||
                       (PAGEE0_SEL && !PAGEE0_WIN[7]) ||
                       (PAGEC0_SEL && !PAGEC0_WIN[7]) ||
                       (PAGEA0_SEL && !PAGEA0_WIN[7]) ||
                       (PAGE80_SEL && !PAGE80_WIN[7]) ||
                       (PAGE60_SEL && !PAGE60_WIN[7]) ||
                       (PAGE50_SEL && !PAGE50_WIN[7]));

assign PRG_RAM_nCE = !((PAGEFC_SEL && PAGEFC_RAM) ||
                       (PAGEE0_SEL && PAGEE0_WIN[7]) ||
                       (PAGEC0_SEL && PAGEC0_WIN[7]) ||
                       (PAGEA0_SEL && PAGEA0_WIN[7]) ||
                       (PAGE80_SEL && PAGE80_WIN[7]) ||
                       (PAGE60_SEL && PAGE60_WIN[7]) ||
                       (PAGE50_SEL && PAGE50_WIN[7]) ||
                        PAGE00_SEL);



// MMU Registers

always @ (posedge M2) begin
    if(!CPU_nRD) begin
	     if(!nROMSEL && CPU_A[14] && (UNLOCK != 2'b11)) begin
	         UNLOCK <= UNLOCK + 2'b1;
		  end else if(UNLOCK != 2'b11) begin
	         UNLOCK <= 2'b0;
		  end
	 end
	 // $402E: MMU Lock Register
	 if(!CPU_nWR && nROMSEL && (CPU_A[14:0] == 15'h402E)) begin
	 	 UNLOCK <= 2'b0;
	 end
end

always @ (posedge SYSCLK) begin

    if(UNLOCK == 2'b11) begin
		  // $4020: MMU Register for CPU Bus $0000-$3FFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4020)) begin
            PAGE00_WIN <= CPU_D;
		  end
		  // $4022: MMU Register for CPU Bus $5000-$5FFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4022)) begin
            PAGE50_WIN <= CPU_D;
		  end
		  // $4023: MMU Register for CPU Bus $6000-$7FFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4023)) begin
            PAGE60_WIN <= CPU_D;
		  end
		  // $4024: MMU Register for CPU Bus $8000-$9FFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4024)) begin
            PAGE80_WIN <= CPU_D;
		  end
		  // $4025: MMU Register for CPU Bus $A000-$BFFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4025)) begin
            PAGEA0_WIN <= CPU_D;
		  end
		  // $4026: MMU Register for CPU Bus $C000-$DFFF
        if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4026)) begin
            PAGEC0_WIN <= CPU_D;
        end
        // $4027: MMU Register for CPU Bus $E000-$FBFF
        if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4027)) begin
            PAGEE0_WIN <= CPU_D;
        end

		  // $4028: MMU Register for CPU Bus $5000-$7FFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4028)) begin
            PAGE50_WIN <= { CPU_D[7:2], 2'h1 };
            PAGE60_WIN <= { CPU_D[7:2], 2'h2 };
		  end
		  // $4029: MMU Register for CPU Bus $8000-$BFFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h4029)) begin
            PAGE80_WIN <= { CPU_D[7:2], 2'h0 };
            PAGEA0_WIN <= { CPU_D[7:2], 2'h2 };
		  end
		  // $402A: MMU Register for CPU Bus $C000-$FBFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h402A)) begin
            PAGEC0_WIN <= { CPU_D[7:2], 2'h0 };
            PAGEE0_WIN <= { CPU_D[7:2], 2'h2 };
		  end

		  // $402B: MMU Bulk Register for CPU Bus $8000-$FBFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h402B)) begin
            PAGE80_WIN <= { CPU_D[7:3], 3'h0 };
            PAGEA0_WIN <= { CPU_D[7:3], 3'h2 };
            PAGEC0_WIN <= { CPU_D[7:3], 3'h4 };
            PAGEE0_WIN <= { CPU_D[7:3], 3'h6 };
		  end
		  // $402C: MMU Bulk Register for CPU Bus $0000-$3FFF, $6000-$FBFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h402C)) begin
		      if(CPU_D[0])
                PAGE00_WIN <= { 1'b1, CPU_D[6:4], 4'h0 };
            PAGE60_WIN <= { CPU_D[7:4], 4'h6 };
            PAGE80_WIN <= { CPU_D[7:4], 4'h8 };
            PAGEA0_WIN <= { CPU_D[7:4], 4'hA };
            PAGEC0_WIN <= { CPU_D[7:4], 4'hC };
            PAGEE0_WIN <= { CPU_D[7:4], 4'hE };
		  end
		  // $402D: MMU Bulk Register for CPU Bus $0000-$3FFF, $5000-$FBFF
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h402D)) begin
		      if(CPU_D[0])
                PAGE00_WIN <= { 1'b1, CPU_D[6:4], 4'h0 };
            PAGE50_WIN <= { CPU_D[7:4], 4'h5 };
            PAGE60_WIN <= { CPU_D[7:4], 4'h6 };
            PAGE80_WIN <= { CPU_D[7:4], 4'h8 };
            PAGEA0_WIN <= { CPU_D[7:4], 4'hA };
            PAGEC0_WIN <= { CPU_D[7:4], 4'hC };
            PAGEE0_WIN <= { CPU_D[7:4], 4'hE };
		  end
		  // $402F: MMU Vector Register
		  // D7 toggles $FC00-$FFFF between (0) PRG-ROM and (1) PRG-RAM
		  // D1 enables/disables $2000-$3FF8 mapping (Requires U3 MMU)
		  // D0 enables/disables $0000-$1FFF mapping
		  if(!CPU_nWR && M2 && nROMSEL && (CPU_A[14:0] == 15'h402F)) begin
            PAGEFC_RAM <= CPU_D[7];
            EWRAM_20   <= CPU_D[1];
            EWRAM_00   <= CPU_D[0];
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
end

endmodule
