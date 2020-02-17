library verilog;
use verilog.vl_types.all;
entity datapath_vlg_sample_tst is
    port(
        ALU_s           : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        flg_ld          : in     vl_logic;
        IR_clr          : in     vl_logic;
        IR_ld           : in     vl_logic;
        MD_rw           : in     vl_logic;
        Mux_1s          : in     vl_logic_vector(1 downto 0);
        Mux_2s          : in     vl_logic_vector(1 downto 0);
        Mux_3s          : in     vl_logic_vector(1 downto 0);
        PC_clr          : in     vl_logic;
        PC_f            : in     vl_logic;
        PC_ld           : in     vl_logic;
        R1_ld           : in     vl_logic;
        R2_ld           : in     vl_logic;
        R3_ld           : in     vl_logic;
        RI1_in          : in     vl_logic_vector(7 downto 0);
        RI1_ld          : in     vl_logic;
        RI2_in          : in     vl_logic_vector(7 downto 0);
        RI2_ld          : in     vl_logic;
        RO1_ld          : in     vl_logic;
        RO2_ld          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end datapath_vlg_sample_tst;
