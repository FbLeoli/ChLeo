library verilog;
use verilog.vl_types.all;
entity comp8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        result          : out    vl_logic_vector(1 downto 0)
    );
end comp8;
