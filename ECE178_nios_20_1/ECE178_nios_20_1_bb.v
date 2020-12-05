
module ECE178_nios_20_1 (
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
	sdram_clk_clk,
	switches0_17_export,
	slave_user_interface_user_dataout_0_export,
	slave_user_interface_user_dataout_1_export,
	slave_user_interface_user_dataout_2_export,
	slave_user_interface_user_dataout_3_export,
	slave_user_interface_user_dataout_4_export,
	slave_user_interface_user_dataout_5_export,
	slave_user_interface_user_dataout_6_export,
	slave_user_interface_user_dataout_7_export,
	slave_user_interface_user_dataout_8_export,
	slave_user_interface_user_dataout_9_export,
	slave_user_interface_user_dataout_10_export,
	slave_user_interface_user_dataout_11_export,
	slave_user_interface_user_dataout_12_export,
	slave_user_interface_user_dataout_13_export,
	slave_user_interface_user_dataout_14_export,
	slave_user_interface_user_dataout_15_export,
	slave_user_interface_user_datain_0_export,
	slave_user_interface_user_datain_1_export,
	slave_user_interface_user_datain_2_export,
	slave_user_interface_user_datain_3_export,
	slave_user_interface_user_datain_4_export,
	slave_user_interface_user_datain_5_export,
	slave_user_interface_user_datain_6_export,
	slave_user_interface_user_datain_7_export,
	slave_user_interface_user_datain_8_export,
	slave_user_interface_user_datain_9_export,
	slave_user_interface_user_datain_10_export,
	slave_user_interface_user_datain_11_export,
	slave_user_interface_user_datain_12_export,
	slave_user_interface_user_datain_13_export,
	slave_user_interface_user_datain_14_export,
	slave_user_interface_user_datain_15_export,
	slave_user_interface_user_write_export,
	slave_user_interface_user_read_export,
	slave_user_interface_user_chipselect_export);	

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
	output		sdram_clk_clk;
	input	[17:0]	switches0_17_export;
	output	[31:0]	slave_user_interface_user_dataout_0_export;
	output	[31:0]	slave_user_interface_user_dataout_1_export;
	output	[31:0]	slave_user_interface_user_dataout_2_export;
	output	[31:0]	slave_user_interface_user_dataout_3_export;
	output	[31:0]	slave_user_interface_user_dataout_4_export;
	output	[31:0]	slave_user_interface_user_dataout_5_export;
	output	[31:0]	slave_user_interface_user_dataout_6_export;
	output	[31:0]	slave_user_interface_user_dataout_7_export;
	output	[31:0]	slave_user_interface_user_dataout_8_export;
	output	[31:0]	slave_user_interface_user_dataout_9_export;
	output	[31:0]	slave_user_interface_user_dataout_10_export;
	output	[31:0]	slave_user_interface_user_dataout_11_export;
	output	[31:0]	slave_user_interface_user_dataout_12_export;
	output	[31:0]	slave_user_interface_user_dataout_13_export;
	output	[31:0]	slave_user_interface_user_dataout_14_export;
	output	[31:0]	slave_user_interface_user_dataout_15_export;
	input	[31:0]	slave_user_interface_user_datain_0_export;
	input	[31:0]	slave_user_interface_user_datain_1_export;
	input	[31:0]	slave_user_interface_user_datain_2_export;
	input	[31:0]	slave_user_interface_user_datain_3_export;
	input	[31:0]	slave_user_interface_user_datain_4_export;
	input	[31:0]	slave_user_interface_user_datain_5_export;
	input	[31:0]	slave_user_interface_user_datain_6_export;
	input	[31:0]	slave_user_interface_user_datain_7_export;
	input	[31:0]	slave_user_interface_user_datain_8_export;
	input	[31:0]	slave_user_interface_user_datain_9_export;
	input	[31:0]	slave_user_interface_user_datain_10_export;
	input	[31:0]	slave_user_interface_user_datain_11_export;
	input	[31:0]	slave_user_interface_user_datain_12_export;
	input	[31:0]	slave_user_interface_user_datain_13_export;
	input	[31:0]	slave_user_interface_user_datain_14_export;
	input	[31:0]	slave_user_interface_user_datain_15_export;
	output		slave_user_interface_user_write_export;
	output		slave_user_interface_user_read_export;
	output	[15:0]	slave_user_interface_user_chipselect_export;
endmodule
