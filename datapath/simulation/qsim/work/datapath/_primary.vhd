library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        MD_rw           : in     vl_logic;
        clk             : in     vl_logic;
        PC_ld           : in     vl_logic;
        PC_clr          : in     vl_logic;
        PC_f            : in     vl_logic;
        IR_ld           : in     vl_logic;
        IR_clr          : in     vl_logic;
        RI1_in          : in     vl_logic_vector(7 downto 0);
        RI2_in          : in     vl_logic_vector(7 downto 0);
        RO1_out         : out    vl_logic_vector(7 downto 0);
        RO2_out         : out    vl_logic_vector(7 downto 0);
        RO1_ld          : in     vl_logic;
        RO2_ld          : in     vl_logic;
        RI1_ld          : in     vl_logic;
        RI2_ld          : in     vl_logic;
        R3_ld           : in     vl_logic;
        R1_ld           : in     vl_logic;
        R2_ld           : in     vl_logic;
        Mux_1s          : in     vl_logic_vector(1 downto 0);
        Mux_2s          : in     vl_logic_vector(1 downto 0);
        Mux_3s          : in     vl_logic_vector(1 downto 0);
        ALU_s           : in     vl_logic_vector(3 downto 0);
        flg_ld          : in     vl_logic;
        flag_out        : out    vl_logic_vector(1 downto 0);
        Inst            : out    vl_logic_vector(15 downto 0);
        CompOutExt      : out    vl_logic_vector(7 downto 0)
    );
end datapath;
