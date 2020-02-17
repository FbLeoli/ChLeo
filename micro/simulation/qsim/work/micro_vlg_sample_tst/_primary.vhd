library verilog;
use verilog.vl_types.all;
entity micro_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        RI1_inC         : in     vl_logic_vector(7 downto 0);
        RI2_inC         : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end micro_vlg_sample_tst;
