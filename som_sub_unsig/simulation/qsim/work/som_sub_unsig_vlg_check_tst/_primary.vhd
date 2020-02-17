library verilog;
use verilog.vl_types.all;
entity som_sub_unsig_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end som_sub_unsig_vlg_check_tst;
