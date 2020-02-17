library verilog;
use verilog.vl_types.all;
entity micro is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        outGenerico1    : out    vl_logic_vector(15 downto 0);
        outGenerico2    : out    vl_logic_vector(10 downto 0);
        outGenerico3    : out    vl_logic_vector(7 downto 0);
        outGenerico4    : out    vl_logic_vector(7 downto 0);
        outGenerico5    : out    vl_logic_vector(7 downto 0);
        outGenerico6    : out    vl_logic_vector(7 downto 0);
        outGenerico7    : out    vl_logic;
        RI1_inC         : in     vl_logic_vector(7 downto 0);
        RI2_inC         : in     vl_logic_vector(7 downto 0);
        RO1_outC        : out    vl_logic_vector(7 downto 0);
        RO2_outC        : out    vl_logic_vector(7 downto 0);
        saiClock        : out    vl_logic;
        ResetOut        : out    vl_logic
    );
end micro;
