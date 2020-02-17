library verilog;
use verilog.vl_types.all;
entity som_sub_unsig_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        add_sub         : in     vl_logic;
        b               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end som_sub_unsig_vlg_sample_tst;
