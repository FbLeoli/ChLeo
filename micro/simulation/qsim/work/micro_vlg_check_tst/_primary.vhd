library verilog;
use verilog.vl_types.all;
entity micro_vlg_check_tst is
    port(
        outGenerico1    : in     vl_logic_vector(15 downto 0);
        outGenerico2    : in     vl_logic_vector(10 downto 0);
        outGenerico3    : in     vl_logic_vector(7 downto 0);
        outGenerico4    : in     vl_logic_vector(7 downto 0);
        outGenerico5    : in     vl_logic_vector(7 downto 0);
        outGenerico6    : in     vl_logic_vector(7 downto 0);
        outGenerico7    : in     vl_logic;
        ResetOut        : in     vl_logic;
        RO1_outC        : in     vl_logic_vector(7 downto 0);
        RO2_outC        : in     vl_logic_vector(7 downto 0);
        saiClock        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end micro_vlg_check_tst;
