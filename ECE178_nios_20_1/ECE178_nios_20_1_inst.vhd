	component ECE178_nios_20_1 is
		port (
			clk_clk                                     : in    std_logic                     := 'X';             -- clk
			hex0_3_export                               : out   std_logic_vector(31 downto 0);                    -- export
			hex4_7_export                               : out   std_logic_vector(31 downto 0);                    -- export
			key_export                                  : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			ledg_export                                 : out   std_logic_vector(8 downto 0);                     -- export
			ledr_export                                 : out   std_logic_vector(17 downto 0);                    -- export
			reset_reset                                 : in    std_logic                     := 'X';             -- reset
			sdram_addr                                  : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba                                    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n                                 : out   std_logic;                                        -- cas_n
			sdram_cke                                   : out   std_logic;                                        -- cke
			sdram_cs_n                                  : out   std_logic;                                        -- cs_n
			sdram_dq                                    : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_dqm                                   : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_ras_n                                 : out   std_logic;                                        -- ras_n
			sdram_we_n                                  : out   std_logic;                                        -- we_n
			sdram_clk_clk                               : out   std_logic;                                        -- clk
			switches0_17_export                         : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			slave_user_interface_user_dataout_0_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_0_export
			slave_user_interface_user_dataout_1_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_1_export
			slave_user_interface_user_dataout_2_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_2_export
			slave_user_interface_user_dataout_3_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_3_export
			slave_user_interface_user_dataout_4_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_4_export
			slave_user_interface_user_dataout_5_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_5_export
			slave_user_interface_user_dataout_6_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_6_export
			slave_user_interface_user_dataout_7_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_7_export
			slave_user_interface_user_dataout_8_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_8_export
			slave_user_interface_user_dataout_9_export  : out   std_logic_vector(31 downto 0);                    -- user_dataout_9_export
			slave_user_interface_user_dataout_10_export : out   std_logic_vector(31 downto 0);                    -- user_dataout_10_export
			slave_user_interface_user_dataout_11_export : out   std_logic_vector(31 downto 0);                    -- user_dataout_11_export
			slave_user_interface_user_dataout_12_export : out   std_logic_vector(31 downto 0);                    -- user_dataout_12_export
			slave_user_interface_user_dataout_13_export : out   std_logic_vector(31 downto 0);                    -- user_dataout_13_export
			slave_user_interface_user_dataout_14_export : out   std_logic_vector(31 downto 0);                    -- user_dataout_14_export
			slave_user_interface_user_dataout_15_export : out   std_logic_vector(31 downto 0);                    -- user_dataout_15_export
			slave_user_interface_user_datain_0_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_0_export
			slave_user_interface_user_datain_1_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_1_export
			slave_user_interface_user_datain_2_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_2_export
			slave_user_interface_user_datain_3_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_3_export
			slave_user_interface_user_datain_4_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_4_export
			slave_user_interface_user_datain_5_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_5_export
			slave_user_interface_user_datain_6_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_6_export
			slave_user_interface_user_datain_7_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_7_export
			slave_user_interface_user_datain_8_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_8_export
			slave_user_interface_user_datain_9_export   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_9_export
			slave_user_interface_user_datain_10_export  : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_10_export
			slave_user_interface_user_datain_11_export  : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_11_export
			slave_user_interface_user_datain_12_export  : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_12_export
			slave_user_interface_user_datain_13_export  : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_13_export
			slave_user_interface_user_datain_14_export  : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_14_export
			slave_user_interface_user_datain_15_export  : in    std_logic_vector(31 downto 0) := (others => 'X'); -- user_datain_15_export
			slave_user_interface_user_write_export      : out   std_logic;                                        -- user_write_export
			slave_user_interface_user_read_export       : out   std_logic;                                        -- user_read_export
			slave_user_interface_user_chipselect_export : out   std_logic_vector(15 downto 0)                     -- user_chipselect_export
		);
	end component ECE178_nios_20_1;

	u0 : component ECE178_nios_20_1
		port map (
			clk_clk                                     => CONNECTED_TO_clk_clk,                                     --                  clk.clk
			hex0_3_export                               => CONNECTED_TO_hex0_3_export,                               --               hex0_3.export
			hex4_7_export                               => CONNECTED_TO_hex4_7_export,                               --               hex4_7.export
			key_export                                  => CONNECTED_TO_key_export,                                  --                  key.export
			ledg_export                                 => CONNECTED_TO_ledg_export,                                 --                 ledg.export
			ledr_export                                 => CONNECTED_TO_ledr_export,                                 --                 ledr.export
			reset_reset                                 => CONNECTED_TO_reset_reset,                                 --                reset.reset
			sdram_addr                                  => CONNECTED_TO_sdram_addr,                                  --                sdram.addr
			sdram_ba                                    => CONNECTED_TO_sdram_ba,                                    --                     .ba
			sdram_cas_n                                 => CONNECTED_TO_sdram_cas_n,                                 --                     .cas_n
			sdram_cke                                   => CONNECTED_TO_sdram_cke,                                   --                     .cke
			sdram_cs_n                                  => CONNECTED_TO_sdram_cs_n,                                  --                     .cs_n
			sdram_dq                                    => CONNECTED_TO_sdram_dq,                                    --                     .dq
			sdram_dqm                                   => CONNECTED_TO_sdram_dqm,                                   --                     .dqm
			sdram_ras_n                                 => CONNECTED_TO_sdram_ras_n,                                 --                     .ras_n
			sdram_we_n                                  => CONNECTED_TO_sdram_we_n,                                  --                     .we_n
			sdram_clk_clk                               => CONNECTED_TO_sdram_clk_clk,                               --            sdram_clk.clk
			switches0_17_export                         => CONNECTED_TO_switches0_17_export,                         --         switches0_17.export
			slave_user_interface_user_dataout_0_export  => CONNECTED_TO_slave_user_interface_user_dataout_0_export,  -- slave_user_interface.user_dataout_0_export
			slave_user_interface_user_dataout_1_export  => CONNECTED_TO_slave_user_interface_user_dataout_1_export,  --                     .user_dataout_1_export
			slave_user_interface_user_dataout_2_export  => CONNECTED_TO_slave_user_interface_user_dataout_2_export,  --                     .user_dataout_2_export
			slave_user_interface_user_dataout_3_export  => CONNECTED_TO_slave_user_interface_user_dataout_3_export,  --                     .user_dataout_3_export
			slave_user_interface_user_dataout_4_export  => CONNECTED_TO_slave_user_interface_user_dataout_4_export,  --                     .user_dataout_4_export
			slave_user_interface_user_dataout_5_export  => CONNECTED_TO_slave_user_interface_user_dataout_5_export,  --                     .user_dataout_5_export
			slave_user_interface_user_dataout_6_export  => CONNECTED_TO_slave_user_interface_user_dataout_6_export,  --                     .user_dataout_6_export
			slave_user_interface_user_dataout_7_export  => CONNECTED_TO_slave_user_interface_user_dataout_7_export,  --                     .user_dataout_7_export
			slave_user_interface_user_dataout_8_export  => CONNECTED_TO_slave_user_interface_user_dataout_8_export,  --                     .user_dataout_8_export
			slave_user_interface_user_dataout_9_export  => CONNECTED_TO_slave_user_interface_user_dataout_9_export,  --                     .user_dataout_9_export
			slave_user_interface_user_dataout_10_export => CONNECTED_TO_slave_user_interface_user_dataout_10_export, --                     .user_dataout_10_export
			slave_user_interface_user_dataout_11_export => CONNECTED_TO_slave_user_interface_user_dataout_11_export, --                     .user_dataout_11_export
			slave_user_interface_user_dataout_12_export => CONNECTED_TO_slave_user_interface_user_dataout_12_export, --                     .user_dataout_12_export
			slave_user_interface_user_dataout_13_export => CONNECTED_TO_slave_user_interface_user_dataout_13_export, --                     .user_dataout_13_export
			slave_user_interface_user_dataout_14_export => CONNECTED_TO_slave_user_interface_user_dataout_14_export, --                     .user_dataout_14_export
			slave_user_interface_user_dataout_15_export => CONNECTED_TO_slave_user_interface_user_dataout_15_export, --                     .user_dataout_15_export
			slave_user_interface_user_datain_0_export   => CONNECTED_TO_slave_user_interface_user_datain_0_export,   --                     .user_datain_0_export
			slave_user_interface_user_datain_1_export   => CONNECTED_TO_slave_user_interface_user_datain_1_export,   --                     .user_datain_1_export
			slave_user_interface_user_datain_2_export   => CONNECTED_TO_slave_user_interface_user_datain_2_export,   --                     .user_datain_2_export
			slave_user_interface_user_datain_3_export   => CONNECTED_TO_slave_user_interface_user_datain_3_export,   --                     .user_datain_3_export
			slave_user_interface_user_datain_4_export   => CONNECTED_TO_slave_user_interface_user_datain_4_export,   --                     .user_datain_4_export
			slave_user_interface_user_datain_5_export   => CONNECTED_TO_slave_user_interface_user_datain_5_export,   --                     .user_datain_5_export
			slave_user_interface_user_datain_6_export   => CONNECTED_TO_slave_user_interface_user_datain_6_export,   --                     .user_datain_6_export
			slave_user_interface_user_datain_7_export   => CONNECTED_TO_slave_user_interface_user_datain_7_export,   --                     .user_datain_7_export
			slave_user_interface_user_datain_8_export   => CONNECTED_TO_slave_user_interface_user_datain_8_export,   --                     .user_datain_8_export
			slave_user_interface_user_datain_9_export   => CONNECTED_TO_slave_user_interface_user_datain_9_export,   --                     .user_datain_9_export
			slave_user_interface_user_datain_10_export  => CONNECTED_TO_slave_user_interface_user_datain_10_export,  --                     .user_datain_10_export
			slave_user_interface_user_datain_11_export  => CONNECTED_TO_slave_user_interface_user_datain_11_export,  --                     .user_datain_11_export
			slave_user_interface_user_datain_12_export  => CONNECTED_TO_slave_user_interface_user_datain_12_export,  --                     .user_datain_12_export
			slave_user_interface_user_datain_13_export  => CONNECTED_TO_slave_user_interface_user_datain_13_export,  --                     .user_datain_13_export
			slave_user_interface_user_datain_14_export  => CONNECTED_TO_slave_user_interface_user_datain_14_export,  --                     .user_datain_14_export
			slave_user_interface_user_datain_15_export  => CONNECTED_TO_slave_user_interface_user_datain_15_export,  --                     .user_datain_15_export
			slave_user_interface_user_write_export      => CONNECTED_TO_slave_user_interface_user_write_export,      --                     .user_write_export
			slave_user_interface_user_read_export       => CONNECTED_TO_slave_user_interface_user_read_export,       --                     .user_read_export
			slave_user_interface_user_chipselect_export => CONNECTED_TO_slave_user_interface_user_chipselect_export  --                     .user_chipselect_export
		);

