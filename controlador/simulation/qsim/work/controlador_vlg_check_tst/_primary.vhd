library verilog;
use verilog.vl_types.all;
entity controlador_vlg_check_tst is
    port(
        outGenerico1    : in     vl_logic_vector(15 downto 0);
        outGenerico2    : in     vl_logic;
        outGenerico3    : in     vl_logic_vector(1 downto 0);
        RO1_outC        : in     vl_logic_vector(7 downto 0);
        RO2_outC        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end controlador_vlg_check_tst;
