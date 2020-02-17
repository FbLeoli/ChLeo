library verilog;
use verilog.vl_types.all;
entity controlador is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        outGenerico1    : out    vl_logic_vector(15 downto 0);
        outGenerico2    : out    vl_logic;
        outGenerico3    : out    vl_logic_vector(1 downto 0);
        RI1_inC         : in     vl_logic_vector(7 downto 0);
        RI2_inC         : in     vl_logic_vector(7 downto 0);
        RO1_outC        : out    vl_logic_vector(7 downto 0);
        RO2_outC        : out    vl_logic_vector(7 downto 0)
    );
end controlador;
