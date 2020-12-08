
module ECE178_nios_20_1 (
	clk_clk,
	gpio_external_connection_export,
	hex0_3_export,
	hex4_7_export,
	key_export,
	ledg_export,
	ledr_export,
	reset_reset,
	sbus_decoder_channel_0_external_connection_export,
	sbus_decoder_channel_10_external_connection_export,
	sbus_decoder_channel_11_external_connection_export,
	sbus_decoder_channel_12_external_connection_export,
	sbus_decoder_channel_13_external_connection_export,
	sbus_decoder_channel_14_external_connection_export,
	sbus_decoder_channel_15_external_connection_export,
	sbus_decoder_channel_1_external_connection_export,
	sbus_decoder_channel_2_external_connection_export,
	sbus_decoder_channel_3_external_connection_export,
	sbus_decoder_channel_4_external_connection_export,
	sbus_decoder_channel_5_external_connection_export,
	sbus_decoder_channel_6_external_connection_export,
	sbus_decoder_channel_7_external_connection_export,
	sbus_decoder_channel_8_external_connection_export,
	sbus_decoder_channel_9_external_connection_export,
	sbus_decoder_reg_0_external_connection_export,
	sbus_decoder_reg_10_external_connection_export,
	sbus_decoder_reg_1_external_connection_export,
	sbus_decoder_reg_2_external_connection_export,
	sbus_decoder_reg_3_external_connection_export,
	sbus_decoder_reg_4_external_connection_export,
	sbus_decoder_reg_5_external_connection_export,
	sbus_decoder_reg_6_external_connection_export,
	sbus_decoder_reg_7_external_connection_export,
	sbus_decoder_reg_8_external_connection_export,
	sbus_decoder_reg_9_external_connection_export,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	switches0_17_export,
	uart_0_external_connection_rxd,
	uart_0_external_connection_txd,
	sdram_clk_clk);	

	input		clk_clk;
	output	[7:0]	gpio_external_connection_export;
	output	[31:0]	hex0_3_export;
	output	[31:0]	hex4_7_export;
	input	[3:0]	key_export;
	output	[8:0]	ledg_export;
	output	[17:0]	ledr_export;
	input		reset_reset;
	input	[10:0]	sbus_decoder_channel_0_external_connection_export;
	input	[10:0]	sbus_decoder_channel_10_external_connection_export;
	input	[10:0]	sbus_decoder_channel_11_external_connection_export;
	input	[10:0]	sbus_decoder_channel_12_external_connection_export;
	input	[10:0]	sbus_decoder_channel_13_external_connection_export;
	input	[10:0]	sbus_decoder_channel_14_external_connection_export;
	input	[10:0]	sbus_decoder_channel_15_external_connection_export;
	input	[10:0]	sbus_decoder_channel_1_external_connection_export;
	input	[10:0]	sbus_decoder_channel_2_external_connection_export;
	input	[10:0]	sbus_decoder_channel_3_external_connection_export;
	input	[10:0]	sbus_decoder_channel_4_external_connection_export;
	input	[10:0]	sbus_decoder_channel_5_external_connection_export;
	input	[10:0]	sbus_decoder_channel_6_external_connection_export;
	input	[10:0]	sbus_decoder_channel_7_external_connection_export;
	input	[10:0]	sbus_decoder_channel_8_external_connection_export;
	input	[10:0]	sbus_decoder_channel_9_external_connection_export;
	output	[15:0]	sbus_decoder_reg_0_external_connection_export;
	output	[15:0]	sbus_decoder_reg_10_external_connection_export;
	output	[15:0]	sbus_decoder_reg_1_external_connection_export;
	output	[15:0]	sbus_decoder_reg_2_external_connection_export;
	output	[15:0]	sbus_decoder_reg_3_external_connection_export;
	output	[15:0]	sbus_decoder_reg_4_external_connection_export;
	output	[15:0]	sbus_decoder_reg_5_external_connection_export;
	output	[15:0]	sbus_decoder_reg_6_external_connection_export;
	output	[15:0]	sbus_decoder_reg_7_external_connection_export;
	output	[15:0]	sbus_decoder_reg_8_external_connection_export;
	output	[15:0]	sbus_decoder_reg_9_external_connection_export;
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
	input		uart_0_external_connection_rxd;
	output		uart_0_external_connection_txd;
	output		sdram_clk_clk;
endmodule
