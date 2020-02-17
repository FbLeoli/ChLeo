library verilog;
use verilog.vl_types.all;
entity alu_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end alu_vlg_sample_tst;
