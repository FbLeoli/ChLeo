library ieee;
use ieee.std_logic_1164.all;

entity micro is
	port
	(
		clk		   : in	std_logic;
		reset	      : in	std_logic;
		
		outGenerico1: out std_logic_vector(15 downto 0);
		outGenerico2: out std_logic_vector(10 downto 0);
		outGenerico3: out std_logic_vector(7 downto 0);
		outGenerico4: out std_logic_vector(7 downto 0);
		outGenerico5: out std_logic_vector(7 downto 0);
		outGenerico6: out std_logic_vector(7 downto 0);
		outGenerico7: out std_logic;
	
		RI1_inC     : in std_logic_vector(7 downto 0);
		RI2_inC     : in std_logic_vector(7 downto 0);	
		RO1_outC    : out std_logic_vector(7 downto 0);
		RO2_outC    : out std_logic_vector(7 downto 0);
		saiClock    : out std_logic;
		ResetOut    : out std_logic
	);

end entity;

architecture arq_micro of micro is


	signal instruction :  std_logic_vector(15 downto 0);
	signal MD_rwC, PC_ldC, PC_clrC, PC_fC, PC_fos8C, IR_ldC, IR_clrC, RO1_ldC, RO2_ldC, RI1_ldC, flg_ldC, RI2_ldC, R3_ldC, R1_ldC, R2_ldC: std_logic;
	signal flag_outC, Mux_1sC, Mux_2sC, Mux_3sC, Mux_DsC: std_logic_vector(1 downto 0);
	signal ALU_sC: std_logic_vector(3 downto 0);
	signal CompOutExtC: std_logic_vector(7 downto 0);
	signal s: std_logic_vector(1 downto 0); 
	component Datapath is
			port( MD_rw  : in std_logic;
					clk	 : in std_logic;
					PC_ld	 : in std_logic;
					PC_clr : in std_logic;
					PC_f	 : in std_logic;
					PC_fos8: in std_logic;
					IR_ld	 : in std_logic;
					IR_clr : in std_logic;
					RI1_in  : in std_logic_vector(7 downto 0);
					RI2_in  : in std_logic_vector(7 downto 0);	
					RO1_out: out std_logic_vector(7 downto 0);
					RO2_out: out std_logic_vector(7 downto 0);
					RO1_ld : in std_logic;
					RO2_ld : in std_logic;
					RI1_ld : in std_logic;
					RI2_ld : in std_logic;
					R3_ld  : in std_logic;
					R1_ld : in std_logic;
					R2_ld : in std_logic;
					Mux_1s : in std_logic_vector(1 downto 0);
					Mux_2s : in std_logic_vector(1 downto 0);
					Mux_3s : in std_logic_vector(1 downto 0);
					Mux_Ds : in std_logic_vector(1 downto 0);
					ALU_s  : in std_logic_vector(3 downto 0);
					flg_ld : in std_logic;
					flag_out  : out std_logic_vector(1 downto 0);
					Inst 	    : buffer std_logic_vector(15 downto 0);
					CompOutExt: out std_logic_vector(7 downto 0);
					SaidaAux0: out std_logic_vector(10 downto 0);									
					SaidaAux1: out std_logic_vector(7 downto 0);
					SaidaAux2: out std_logic_vector(7 downto 0);
					SaidaAux3: out std_logic_vector(7 downto 0);
					SaidaAux4: out std_logic_vector(7 downto 0);
					SaidaAux5: out std_logic);
	end component;

	
	component controlador is port
	(
		clk		   : in	std_logic;
		reset	      : in	std_logic;
		instruction : in  std_logic_vector(15 downto 0);
		PC_fC			: buffer std_logic;
		PC_fos8C			: buffer std_logic;
		MD_rwC, PC_ldC, PC_clrC, IR_ldC, IR_clrC, RO1_ldC, RO2_ldC, RI1_ldC, flg_ldC, RI2_ldC, R3_ldC, R1_ldC, R2_ldC: out std_logic;
		Mux_1sC, Mux_2sC, Mux_3sC, Mux_DsC: out std_logic_vector(1 downto 0);
		ALU_sC		: out std_logic_vector(3 downto 0);
		CompOutExtC : in std_logic_vector(7 downto 0);
		s				: out std_logic_vector(1 downto 0)
	);
	end component;
	
	
	begin 
	outGenerico1 <= instruction;			
	Cont: controlador port map(clk, reset, instruction, PC_fC, PC_fos8C, MD_rwC, PC_ldC, PC_clrC, IR_ldC, IR_clrC,  RO1_ldC, 
								 RO2_ldC, RI1_ldC, flg_ldC, RI2_ldC, R3_ldC, R1_ldC, R2_ldC, Mux_1sC, Mux_2sC, Mux_3sC, Mux_DsC, ALU_sC, CompOutExtC, s);
	DP: datapath port map(MD_rwC, clk, PC_ldC, PC_clrC, PC_fC, PC_fos8C, IR_ldC, IR_clrC, RI1_inC, RI2_inC, RO1_outC, RO2_outC, RO1_ldC, 
								 RO2_ldC, RI1_ldC, RI2_ldC, R3_ldC, R1_ldC, R2_ldC, Mux_1sC, Mux_2sC, Mux_3sC, Mux_DsC, ALU_sC, flg_ldC, flag_outC, instruction, CompOutExtC, outGenerico2, outGenerico3, outGenerico4, outGenerico5, outGenerico6, outGenerico7); 
		
	saiClock <= clk;	
	ResetOut <= Reset;
end arq_micro;