library verilog;
use verilog.vl_types.all;
entity datapath_vlg_check_tst is
    port(
        CompOutExt      : in     vl_logic_vector(7 downto 0);
        flag_out        : in     vl_logic_vector(1 downto 0);
        Inst            : in     vl_logic_vector(15 downto 0);
        RO1_out         : in     vl_logic_vector(7 downto 0);
        RO2_out         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end datapath_vlg_check_tst;
