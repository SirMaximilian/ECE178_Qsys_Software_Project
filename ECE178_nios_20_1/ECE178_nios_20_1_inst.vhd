	component ECE178_nios_20_1 is
		port (
			clk_clk             : in    std_logic                     := 'X';             -- clk
			hex0_3_export       : out   std_logic_vector(31 downto 0);                    -- export
			hex4_7_export       : out   std_logic_vector(31 downto 0);                    -- export
			ledg_export         : out   std_logic_vector(8 downto 0);                     -- export
			ledr_export         : out   std_logic_vector(17 downto 0);                    -- export
			reset_reset         : in    std_logic                     := 'X';             -- reset
			sdram_addr          : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba            : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n         : out   std_logic;                                        -- cas_n
			sdram_cke           : out   std_logic;                                        -- cke
			sdram_cs_n          : out   std_logic;                                        -- cs_n
			sdram_dq            : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_dqm           : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_ras_n         : out   std_logic;                                        -- ras_n
			sdram_we_n          : out   std_logic;                                        -- we_n
			sdram_clk_clk       : out   std_logic;                                        -- clk
			switches0_17_export : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			key_export          : in    std_logic_vector(3 downto 0)  := (others => 'X')  -- export
		);
	end component ECE178_nios_20_1;

	u0 : component ECE178_nios_20_1
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --          clk.clk
			hex0_3_export       => CONNECTED_TO_hex0_3_export,       --       hex0_3.export
			hex4_7_export       => CONNECTED_TO_hex4_7_export,       --       hex4_7.export
			ledg_export         => CONNECTED_TO_ledg_export,         --         ledg.export
			ledr_export         => CONNECTED_TO_ledr_export,         --         ledr.export
			reset_reset         => CONNECTED_TO_reset_reset,         --        reset.reset
			sdram_addr          => CONNECTED_TO_sdram_addr,          --        sdram.addr
			sdram_ba            => CONNECTED_TO_sdram_ba,            --             .ba
			sdram_cas_n         => CONNECTED_TO_sdram_cas_n,         --             .cas_n
			sdram_cke           => CONNECTED_TO_sdram_cke,           --             .cke
			sdram_cs_n          => CONNECTED_TO_sdram_cs_n,          --             .cs_n
			sdram_dq            => CONNECTED_TO_sdram_dq,            --             .dq
			sdram_dqm           => CONNECTED_TO_sdram_dqm,           --             .dqm
			sdram_ras_n         => CONNECTED_TO_sdram_ras_n,         --             .ras_n
			sdram_we_n          => CONNECTED_TO_sdram_we_n,          --             .we_n
			sdram_clk_clk       => CONNECTED_TO_sdram_clk_clk,       --    sdram_clk.clk
			switches0_17_export => CONNECTED_TO_switches0_17_export, -- switches0_17.export
			key_export          => CONNECTED_TO_key_export           --          key.export
		);

