library verilog;
use verilog.vl_types.all;
entity comp8_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end comp8_vlg_check_tst;
