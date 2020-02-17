library verilog;
use verilog.vl_types.all;
entity som_sub_sig is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        add_sub         : in     vl_logic;
        result          : out    vl_logic_vector(7 downto 0)
    );
end som_sub_sig;
