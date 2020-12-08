	component ECE178_nios_20_1 is
		port (
			clk_clk                                            : in    std_logic                     := 'X';             -- clk
			gpio_external_connection_export                    : out   std_logic_vector(7 downto 0);                     -- export
			hex0_3_export                                      : out   std_logic_vector(31 downto 0);                    -- export
			hex4_7_export                                      : out   std_logic_vector(31 downto 0);                    -- export
			key_export                                         : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			ledg_export                                        : out   std_logic_vector(8 downto 0);                     -- export
			ledr_export                                        : out   std_logic_vector(17 downto 0);                    -- export
			reset_reset                                        : in    std_logic                     := 'X';             -- reset
			sbus_decoder_channel_0_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_10_external_connection_export : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_11_external_connection_export : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_12_external_connection_export : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_13_external_connection_export : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_14_external_connection_export : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_15_external_connection_export : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_1_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_2_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_3_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_4_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_5_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_6_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_7_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_8_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_channel_9_external_connection_export  : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			sbus_decoder_reg_0_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_10_external_connection_export     : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_1_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_2_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_3_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_4_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_5_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_6_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_7_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_8_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sbus_decoder_reg_9_external_connection_export      : out   std_logic_vector(15 downto 0);                    -- export
			sdram_addr                                         : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba                                           : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n                                        : out   std_logic;                                        -- cas_n
			sdram_cke                                          : out   std_logic;                                        -- cke
			sdram_cs_n                                         : out   std_logic;                                        -- cs_n
			sdram_dq                                           : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_dqm                                          : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_ras_n                                        : out   std_logic;                                        -- ras_n
			sdram_we_n                                         : out   std_logic;                                        -- we_n
			switches0_17_export                                : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			uart_0_external_connection_rxd                     : in    std_logic                     := 'X';             -- rxd
			uart_0_external_connection_txd                     : out   std_logic;                                        -- txd
			sdram_clk_clk                                      : out   std_logic                                         -- clk
		);
	end component ECE178_nios_20_1;

	u0 : component ECE178_nios_20_1
		port map (
			clk_clk                                            => CONNECTED_TO_clk_clk,                                            --                                         clk.clk
			gpio_external_connection_export                    => CONNECTED_TO_gpio_external_connection_export,                    --                    gpio_external_connection.export
			hex0_3_export                                      => CONNECTED_TO_hex0_3_export,                                      --                                      hex0_3.export
			hex4_7_export                                      => CONNECTED_TO_hex4_7_export,                                      --                                      hex4_7.export
			key_export                                         => CONNECTED_TO_key_export,                                         --                                         key.export
			ledg_export                                        => CONNECTED_TO_ledg_export,                                        --                                        ledg.export
			ledr_export                                        => CONNECTED_TO_ledr_export,                                        --                                        ledr.export
			reset_reset                                        => CONNECTED_TO_reset_reset,                                        --                                       reset.reset
			sbus_decoder_channel_0_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_0_external_connection_export,  --  sbus_decoder_channel_0_external_connection.export
			sbus_decoder_channel_10_external_connection_export => CONNECTED_TO_sbus_decoder_channel_10_external_connection_export, -- sbus_decoder_channel_10_external_connection.export
			sbus_decoder_channel_11_external_connection_export => CONNECTED_TO_sbus_decoder_channel_11_external_connection_export, -- sbus_decoder_channel_11_external_connection.export
			sbus_decoder_channel_12_external_connection_export => CONNECTED_TO_sbus_decoder_channel_12_external_connection_export, -- sbus_decoder_channel_12_external_connection.export
			sbus_decoder_channel_13_external_connection_export => CONNECTED_TO_sbus_decoder_channel_13_external_connection_export, -- sbus_decoder_channel_13_external_connection.export
			sbus_decoder_channel_14_external_connection_export => CONNECTED_TO_sbus_decoder_channel_14_external_connection_export, -- sbus_decoder_channel_14_external_connection.export
			sbus_decoder_channel_15_external_connection_export => CONNECTED_TO_sbus_decoder_channel_15_external_connection_export, -- sbus_decoder_channel_15_external_connection.export
			sbus_decoder_channel_1_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_1_external_connection_export,  --  sbus_decoder_channel_1_external_connection.export
			sbus_decoder_channel_2_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_2_external_connection_export,  --  sbus_decoder_channel_2_external_connection.export
			sbus_decoder_channel_3_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_3_external_connection_export,  --  sbus_decoder_channel_3_external_connection.export
			sbus_decoder_channel_4_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_4_external_connection_export,  --  sbus_decoder_channel_4_external_connection.export
			sbus_decoder_channel_5_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_5_external_connection_export,  --  sbus_decoder_channel_5_external_connection.export
			sbus_decoder_channel_6_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_6_external_connection_export,  --  sbus_decoder_channel_6_external_connection.export
			sbus_decoder_channel_7_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_7_external_connection_export,  --  sbus_decoder_channel_7_external_connection.export
			sbus_decoder_channel_8_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_8_external_connection_export,  --  sbus_decoder_channel_8_external_connection.export
			sbus_decoder_channel_9_external_connection_export  => CONNECTED_TO_sbus_decoder_channel_9_external_connection_export,  --  sbus_decoder_channel_9_external_connection.export
			sbus_decoder_reg_0_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_0_external_connection_export,      --      sbus_decoder_reg_0_external_connection.export
			sbus_decoder_reg_10_external_connection_export     => CONNECTED_TO_sbus_decoder_reg_10_external_connection_export,     --     sbus_decoder_reg_10_external_connection.export
			sbus_decoder_reg_1_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_1_external_connection_export,      --      sbus_decoder_reg_1_external_connection.export
			sbus_decoder_reg_2_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_2_external_connection_export,      --      sbus_decoder_reg_2_external_connection.export
			sbus_decoder_reg_3_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_3_external_connection_export,      --      sbus_decoder_reg_3_external_connection.export
			sbus_decoder_reg_4_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_4_external_connection_export,      --      sbus_decoder_reg_4_external_connection.export
			sbus_decoder_reg_5_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_5_external_connection_export,      --      sbus_decoder_reg_5_external_connection.export
			sbus_decoder_reg_6_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_6_external_connection_export,      --      sbus_decoder_reg_6_external_connection.export
			sbus_decoder_reg_7_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_7_external_connection_export,      --      sbus_decoder_reg_7_external_connection.export
			sbus_decoder_reg_8_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_8_external_connection_export,      --      sbus_decoder_reg_8_external_connection.export
			sbus_decoder_reg_9_external_connection_export      => CONNECTED_TO_sbus_decoder_reg_9_external_connection_export,      --      sbus_decoder_reg_9_external_connection.export
			sdram_addr                                         => CONNECTED_TO_sdram_addr,                                         --                                       sdram.addr
			sdram_ba                                           => CONNECTED_TO_sdram_ba,                                           --                                            .ba
			sdram_cas_n                                        => CONNECTED_TO_sdram_cas_n,                                        --                                            .cas_n
			sdram_cke                                          => CONNECTED_TO_sdram_cke,                                          --                                            .cke
			sdram_cs_n                                         => CONNECTED_TO_sdram_cs_n,                                         --                                            .cs_n
			sdram_dq                                           => CONNECTED_TO_sdram_dq,                                           --                                            .dq
			sdram_dqm                                          => CONNECTED_TO_sdram_dqm,                                          --                                            .dqm
			sdram_ras_n                                        => CONNECTED_TO_sdram_ras_n,                                        --                                            .ras_n
			sdram_we_n                                         => CONNECTED_TO_sdram_we_n,                                         --                                            .we_n
			switches0_17_export                                => CONNECTED_TO_switches0_17_export,                                --                                switches0_17.export
			uart_0_external_connection_rxd                     => CONNECTED_TO_uart_0_external_connection_rxd,                     --                  uart_0_external_connection.rxd
			uart_0_external_connection_txd                     => CONNECTED_TO_uart_0_external_connection_txd,                     --                                            .txd
			sdram_clk_clk                                      => CONNECTED_TO_sdram_clk_clk                                       --                                   sdram_clk.clk
		);

