
module ECE178_nios_20_1_project (
	clk_clk,
	hex0_3_export,
	hex4_7_export,
	key_export,
	ledg_export,
	ledr_export,
	reset_reset,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	switches0_17_export);	

	input		clk_clk;
	output	[31:0]	hex0_3_export;
	output	[31:0]	hex4_7_export;
	input	[3:0]	key_export;
	output	[8:0]	ledg_export;
	output	[17:0]	ledr_export;
	input		reset_reset;
	output	[12:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[31:0]	sdram_dq;
	output	[3:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	input	[17:0]	switches0_17_export;
endmodule
