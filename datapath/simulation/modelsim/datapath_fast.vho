-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/09/2019 18:22:13"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	MD_rw : IN std_logic;
	clk : IN std_logic;
	PC_ld : IN std_logic;
	PC_clr : IN std_logic;
	PC_f : IN std_logic;
	IR_ld : IN std_logic;
	IR_clr : IN std_logic;
	RI1_in : IN std_logic_vector(7 DOWNTO 0);
	RI2_in : IN std_logic_vector(7 DOWNTO 0);
	RO1_out : OUT std_logic_vector(7 DOWNTO 0);
	RO2_out : OUT std_logic_vector(7 DOWNTO 0);
	RO1_ld : IN std_logic;
	RO2_ld : IN std_logic;
	RI1_ld : IN std_logic;
	RI2_ld : IN std_logic;
	R3_ld : IN std_logic;
	R1_ld : IN std_logic;
	R2_ld : IN std_logic;
	Mux_1s : IN std_logic_vector(1 DOWNTO 0);
	Mux_2s : IN std_logic_vector(1 DOWNTO 0);
	Mux_3s : IN std_logic_vector(1 DOWNTO 0);
	ALU_s : IN std_logic_vector(3 DOWNTO 0);
	flg_ld : IN std_logic;
	flag_out : OUT std_logic_vector(1 DOWNTO 0);
	Inst : BUFFER std_logic_vector(15 DOWNTO 0);
	CompOutExt : OUT std_logic_vector(7 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- MD_rw	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[0]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[1]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[2]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[3]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[4]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[5]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[6]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_in[7]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[3]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[4]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[5]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[6]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_in[7]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RO1_out[0]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_out[1]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_out[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_out[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_out[4]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_out[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_out[6]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_out[7]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[0]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[1]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[2]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[4]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[5]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[6]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO2_out[7]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RO1_ld	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RO2_ld	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI1_ld	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RI2_ld	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R3_ld	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R1_ld	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R2_ld	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mux_1s[0]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mux_1s[1]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mux_3s[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mux_3s[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_s[0]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_s[1]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_s[2]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALU_s[3]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- flg_ld	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- flag_out[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flag_out[1]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[5]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[7]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[8]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[9]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[10]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[11]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[12]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[13]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[14]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Inst[15]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[5]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[6]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CompOutExt[7]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mux_2s[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mux_2s[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR_clr	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR_ld	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_f	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_clr	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_ld	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MD_rw : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PC_ld : std_logic;
SIGNAL ww_PC_clr : std_logic;
SIGNAL ww_PC_f : std_logic;
SIGNAL ww_IR_ld : std_logic;
SIGNAL ww_IR_clr : std_logic;
SIGNAL ww_RI1_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RI2_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RO1_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RO2_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RO1_ld : std_logic;
SIGNAL ww_RO2_ld : std_logic;
SIGNAL ww_RI1_ld : std_logic;
SIGNAL ww_RI2_ld : std_logic;
SIGNAL ww_R3_ld : std_logic;
SIGNAL ww_R1_ld : std_logic;
SIGNAL ww_R2_ld : std_logic;
SIGNAL ww_Mux_1s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Mux_2s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Mux_3s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flg_ld : std_logic;
SIGNAL ww_flag_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Inst : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CompOutExt : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC1|Add0~1_combout\ : std_logic;
SIGNAL \PC1|Add0~4_combout\ : std_logic;
SIGNAL \PC1|Add0~6_combout\ : std_logic;
SIGNAL \compExt|result[0]~6_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \IR_clr~combout\ : std_logic;
SIGNAL \PC_f~combout\ : std_logic;
SIGNAL \PC1|Add0~0_combout\ : std_logic;
SIGNAL \PC1|address_prog[0]~11_combout\ : std_logic;
SIGNAL \PC_clr~combout\ : std_logic;
SIGNAL \PC_ld~combout\ : std_logic;
SIGNAL \PC1|address_prog[1]~13_combout\ : std_logic;
SIGNAL \PC1|address_prog[0]~12\ : std_logic;
SIGNAL \PC1|address_prog[1]~14_combout\ : std_logic;
SIGNAL \PC1|address_prog[1]~15\ : std_logic;
SIGNAL \PC1|address_prog[2]~17\ : std_logic;
SIGNAL \PC1|address_prog[3]~19\ : std_logic;
SIGNAL \PC1|address_prog[4]~20_combout\ : std_logic;
SIGNAL \PC1|address_prog[4]~21\ : std_logic;
SIGNAL \PC1|address_prog[5]~23\ : std_logic;
SIGNAL \PC1|address_prog[6]~24_combout\ : std_logic;
SIGNAL \IR|reg_var~11_combout\ : std_logic;
SIGNAL \IR_ld~combout\ : std_logic;
SIGNAL \IR|reg_var[0]~1_combout\ : std_logic;
SIGNAL \PC1|Add0~10_combout\ : std_logic;
SIGNAL \PC1|address_prog[6]~25\ : std_logic;
SIGNAL \PC1|address_prog[7]~27\ : std_logic;
SIGNAL \PC1|address_prog[8]~29\ : std_logic;
SIGNAL \PC1|address_prog[9]~31\ : std_logic;
SIGNAL \PC1|address_prog[10]~32_combout\ : std_logic;
SIGNAL \IR|reg_var~10_combout\ : std_logic;
SIGNAL \PC1|Add0~9_combout\ : std_logic;
SIGNAL \PC1|address_prog[9]~30_combout\ : std_logic;
SIGNAL \IR|reg_var~9_combout\ : std_logic;
SIGNAL \PC1|Add0~8_combout\ : std_logic;
SIGNAL \PC1|address_prog[8]~28_combout\ : std_logic;
SIGNAL \IR|reg_var~8_combout\ : std_logic;
SIGNAL \PC1|Add0~7_combout\ : std_logic;
SIGNAL \PC1|address_prog[7]~26_combout\ : std_logic;
SIGNAL \IR|reg_var~6_combout\ : std_logic;
SIGNAL \PC1|Add0~5_combout\ : std_logic;
SIGNAL \PC1|address_prog[5]~22_combout\ : std_logic;
SIGNAL \IR|reg_var~4_combout\ : std_logic;
SIGNAL \PC1|Add0~3_combout\ : std_logic;
SIGNAL \PC1|address_prog[3]~18_combout\ : std_logic;
SIGNAL \IR|reg_var~3_combout\ : std_logic;
SIGNAL \PC1|Add0~2_combout\ : std_logic;
SIGNAL \PC1|address_prog[2]~16_combout\ : std_logic;
SIGNAL \IR|reg_var~0_combout\ : std_logic;
SIGNAL \IR|reg_var~2_combout\ : std_logic;
SIGNAL \IR|reg_var~5_combout\ : std_logic;
SIGNAL \IR|reg_var~7_combout\ : std_logic;
SIGNAL \IR|reg_var~12_combout\ : std_logic;
SIGNAL \IR|reg_var~13_combout\ : std_logic;
SIGNAL \IR|reg_var~14_combout\ : std_logic;
SIGNAL \IR|reg_var~15_combout\ : std_logic;
SIGNAL \IR|reg_var~16_combout\ : std_logic;
SIGNAL \compExt|result[0]~3_combout\ : std_logic;
SIGNAL \compExt|result[0]~22_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \PC1|address_prog\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MemPro|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IR|reg_var\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mux_2s~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_PC_clr~combout\ : std_logic;

BEGIN

ww_MD_rw <= MD_rw;
ww_clk <= clk;
ww_PC_ld <= PC_ld;
ww_PC_clr <= PC_clr;
ww_PC_f <= PC_f;
ww_IR_ld <= IR_ld;
ww_IR_clr <= IR_clr;
ww_RI1_in <= RI1_in;
ww_RI2_in <= RI2_in;
RO1_out <= ww_RO1_out;
RO2_out <= ww_RO2_out;
ww_RO1_ld <= RO1_ld;
ww_RO2_ld <= RO2_ld;
ww_RI1_ld <= RI1_ld;
ww_RI2_ld <= RI2_ld;
ww_R3_ld <= R3_ld;
ww_R1_ld <= R1_ld;
ww_R2_ld <= R2_ld;
ww_Mux_1s <= Mux_1s;
ww_Mux_2s <= Mux_2s;
ww_Mux_3s <= Mux_3s;
ww_ALU_s <= ALU_s;
ww_flg_ld <= flg_ld;
flag_out <= ww_flag_out;
Inst <= ww_Inst;
CompOutExt <= ww_CompOutExt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MemPro|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & \PC1|address_prog\(4)
& \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(0) <= \MemPro|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(1) <= \MemPro|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\MemPro|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & \PC1|address_prog\(4)
& \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(2) <= \MemPro|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(3) <= \MemPro|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\MemPro|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & \PC1|address_prog\(4)
& \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(4) <= \MemPro|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(5) <= \MemPro|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\MemPro|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & \PC1|address_prog\(4)
& \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(6) <= \MemPro|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(7) <= \MemPro|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\MemPro|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & \PC1|address_prog\(4)
& \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(8) <= \MemPro|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(9) <= \MemPro|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\MemPro|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & 
\PC1|address_prog\(4) & \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(10) <= \MemPro|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(11) <= \MemPro|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\MemPro|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & 
\PC1|address_prog\(4) & \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(12) <= \MemPro|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(13) <= \MemPro|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\MemPro|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\PC1|address_prog\(10) & \PC1|address_prog\(9) & \PC1|address_prog\(8) & \PC1|address_prog\(7) & \PC1|address_prog\(6) & \PC1|address_prog\(5) & 
\PC1|address_prog\(4) & \PC1|address_prog\(3) & \PC1|address_prog\(2) & \PC1|address_prog\(1) & \PC1|address_prog\(0));

\MemPro|altsyncram_component|auto_generated|q_a\(14) <= \MemPro|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\MemPro|altsyncram_component|auto_generated|q_a\(15) <= \MemPro|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_PC_clr~combout\ <= NOT \PC_clr~combout\;

-- Location: LCCOMB_X27_Y34_N0
\PC1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~1_combout\ = (\PC_f~combout\ & \IR|reg_var\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_f~combout\,
	datad => \IR|reg_var\(1),
	combout => \PC1|Add0~1_combout\);

-- Location: LCCOMB_X27_Y34_N30
\PC1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~4_combout\ = (\PC_f~combout\ & \IR|reg_var\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_f~combout\,
	datad => \IR|reg_var\(4),
	combout => \PC1|Add0~4_combout\);

-- Location: LCCOMB_X27_Y34_N14
\PC1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~6_combout\ = (\PC_f~combout\ & \IR|reg_var\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_f~combout\,
	datad => \IR|reg_var\(6),
	combout => \PC1|Add0~6_combout\);

-- Location: LCCOMB_X27_Y34_N6
\compExt|result[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \compExt|result[0]~6_combout\ = (!\IR|reg_var\(4) & (!\IR|reg_var\(6) & (!\IR|reg_var\(5) & !\IR|reg_var\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|reg_var\(4),
	datab => \IR|reg_var\(6),
	datac => \IR|reg_var\(5),
	datad => \IR|reg_var\(7),
	combout => \compExt|result[0]~6_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR_clr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR_clr,
	combout => \IR_clr~combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC_f~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_f,
	combout => \PC_f~combout\);

-- Location: LCCOMB_X27_Y34_N26
\PC1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~0_combout\ = (\IR|reg_var\(0)) # (!\PC_f~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_f~combout\,
	datad => \IR|reg_var\(0),
	combout => \PC1|Add0~0_combout\);

-- Location: LCCOMB_X28_Y34_N6
\PC1|address_prog[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[0]~11_combout\ = (\PC1|address_prog\(0) & (\PC1|Add0~0_combout\ $ (VCC))) # (!\PC1|address_prog\(0) & (\PC1|Add0~0_combout\ & VCC))
-- \PC1|address_prog[0]~12\ = CARRY((\PC1|address_prog\(0) & \PC1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|address_prog\(0),
	datab => \PC1|Add0~0_combout\,
	datad => VCC,
	combout => \PC1|address_prog[0]~11_combout\,
	cout => \PC1|address_prog[0]~12\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC_clr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_clr,
	combout => \PC_clr~combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PC_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PC_ld,
	combout => \PC_ld~combout\);

-- Location: LCCOMB_X28_Y34_N4
\PC1|address_prog[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[1]~13_combout\ = (\PC_ld~combout\) # (!\PC_clr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_ld~combout\,
	datad => \PC_clr~combout\,
	combout => \PC1|address_prog[1]~13_combout\);

-- Location: LCFF_X28_Y34_N7
\PC1|address_prog[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[0]~11_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(0));

-- Location: LCCOMB_X28_Y34_N8
\PC1|address_prog[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[1]~14_combout\ = (\PC1|Add0~1_combout\ & ((\PC1|address_prog\(1) & (\PC1|address_prog[0]~12\ & VCC)) # (!\PC1|address_prog\(1) & (!\PC1|address_prog[0]~12\)))) # (!\PC1|Add0~1_combout\ & ((\PC1|address_prog\(1) & 
-- (!\PC1|address_prog[0]~12\)) # (!\PC1|address_prog\(1) & ((\PC1|address_prog[0]~12\) # (GND)))))
-- \PC1|address_prog[1]~15\ = CARRY((\PC1|Add0~1_combout\ & (!\PC1|address_prog\(1) & !\PC1|address_prog[0]~12\)) # (!\PC1|Add0~1_combout\ & ((!\PC1|address_prog[0]~12\) # (!\PC1|address_prog\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|Add0~1_combout\,
	datab => \PC1|address_prog\(1),
	datad => VCC,
	cin => \PC1|address_prog[0]~12\,
	combout => \PC1|address_prog[1]~14_combout\,
	cout => \PC1|address_prog[1]~15\);

-- Location: LCFF_X28_Y34_N9
\PC1|address_prog[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[1]~14_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(1));

-- Location: LCCOMB_X28_Y34_N10
\PC1|address_prog[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[2]~16_combout\ = ((\PC1|address_prog\(2) $ (\PC1|Add0~2_combout\ $ (!\PC1|address_prog[1]~15\)))) # (GND)
-- \PC1|address_prog[2]~17\ = CARRY((\PC1|address_prog\(2) & ((\PC1|Add0~2_combout\) # (!\PC1|address_prog[1]~15\))) # (!\PC1|address_prog\(2) & (\PC1|Add0~2_combout\ & !\PC1|address_prog[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|address_prog\(2),
	datab => \PC1|Add0~2_combout\,
	datad => VCC,
	cin => \PC1|address_prog[1]~15\,
	combout => \PC1|address_prog[2]~16_combout\,
	cout => \PC1|address_prog[2]~17\);

-- Location: LCCOMB_X28_Y34_N12
\PC1|address_prog[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[3]~18_combout\ = (\PC1|address_prog\(3) & ((\PC1|Add0~3_combout\ & (\PC1|address_prog[2]~17\ & VCC)) # (!\PC1|Add0~3_combout\ & (!\PC1|address_prog[2]~17\)))) # (!\PC1|address_prog\(3) & ((\PC1|Add0~3_combout\ & 
-- (!\PC1|address_prog[2]~17\)) # (!\PC1|Add0~3_combout\ & ((\PC1|address_prog[2]~17\) # (GND)))))
-- \PC1|address_prog[3]~19\ = CARRY((\PC1|address_prog\(3) & (!\PC1|Add0~3_combout\ & !\PC1|address_prog[2]~17\)) # (!\PC1|address_prog\(3) & ((!\PC1|address_prog[2]~17\) # (!\PC1|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|address_prog\(3),
	datab => \PC1|Add0~3_combout\,
	datad => VCC,
	cin => \PC1|address_prog[2]~17\,
	combout => \PC1|address_prog[3]~18_combout\,
	cout => \PC1|address_prog[3]~19\);

-- Location: LCCOMB_X28_Y34_N14
\PC1|address_prog[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[4]~20_combout\ = ((\PC1|Add0~4_combout\ $ (\PC1|address_prog\(4) $ (!\PC1|address_prog[3]~19\)))) # (GND)
-- \PC1|address_prog[4]~21\ = CARRY((\PC1|Add0~4_combout\ & ((\PC1|address_prog\(4)) # (!\PC1|address_prog[3]~19\))) # (!\PC1|Add0~4_combout\ & (\PC1|address_prog\(4) & !\PC1|address_prog[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|Add0~4_combout\,
	datab => \PC1|address_prog\(4),
	datad => VCC,
	cin => \PC1|address_prog[3]~19\,
	combout => \PC1|address_prog[4]~20_combout\,
	cout => \PC1|address_prog[4]~21\);

-- Location: LCFF_X28_Y34_N15
\PC1|address_prog[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[4]~20_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(4));

-- Location: LCCOMB_X28_Y34_N16
\PC1|address_prog[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[5]~22_combout\ = (\PC1|address_prog\(5) & ((\PC1|Add0~5_combout\ & (\PC1|address_prog[4]~21\ & VCC)) # (!\PC1|Add0~5_combout\ & (!\PC1|address_prog[4]~21\)))) # (!\PC1|address_prog\(5) & ((\PC1|Add0~5_combout\ & 
-- (!\PC1|address_prog[4]~21\)) # (!\PC1|Add0~5_combout\ & ((\PC1|address_prog[4]~21\) # (GND)))))
-- \PC1|address_prog[5]~23\ = CARRY((\PC1|address_prog\(5) & (!\PC1|Add0~5_combout\ & !\PC1|address_prog[4]~21\)) # (!\PC1|address_prog\(5) & ((!\PC1|address_prog[4]~21\) # (!\PC1|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|address_prog\(5),
	datab => \PC1|Add0~5_combout\,
	datad => VCC,
	cin => \PC1|address_prog[4]~21\,
	combout => \PC1|address_prog[5]~22_combout\,
	cout => \PC1|address_prog[5]~23\);

-- Location: LCCOMB_X28_Y34_N18
\PC1|address_prog[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[6]~24_combout\ = ((\PC1|Add0~6_combout\ $ (\PC1|address_prog\(6) $ (!\PC1|address_prog[5]~23\)))) # (GND)
-- \PC1|address_prog[6]~25\ = CARRY((\PC1|Add0~6_combout\ & ((\PC1|address_prog\(6)) # (!\PC1|address_prog[5]~23\))) # (!\PC1|Add0~6_combout\ & (\PC1|address_prog\(6) & !\PC1|address_prog[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|Add0~6_combout\,
	datab => \PC1|address_prog\(6),
	datad => VCC,
	cin => \PC1|address_prog[5]~23\,
	combout => \PC1|address_prog[6]~24_combout\,
	cout => \PC1|address_prog[6]~25\);

-- Location: LCFF_X28_Y34_N19
\PC1|address_prog[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[6]~24_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(6));

-- Location: M4K_X52_Y32
\MemPro|altsyncram_component|auto_generated|ram_block1a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y32_N12
\IR|reg_var~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~11_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(10),
	combout => \IR|reg_var~11_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IR_ld,
	combout => \IR_ld~combout\);

-- Location: LCCOMB_X51_Y34_N16
\IR|reg_var[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var[0]~1_combout\ = (\IR_ld~combout\) # (!\IR_clr~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \IR_ld~combout\,
	combout => \IR|reg_var[0]~1_combout\);

-- Location: LCFF_X51_Y32_N13
\IR|reg_var[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~11_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(10));

-- Location: LCCOMB_X28_Y34_N28
\PC1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~10_combout\ = (\IR|reg_var\(10) & \PC_f~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|reg_var\(10),
	datad => \PC_f~combout\,
	combout => \PC1|Add0~10_combout\);

-- Location: LCCOMB_X28_Y34_N20
\PC1|address_prog[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[7]~26_combout\ = (\PC1|address_prog\(7) & ((\PC1|Add0~7_combout\ & (\PC1|address_prog[6]~25\ & VCC)) # (!\PC1|Add0~7_combout\ & (!\PC1|address_prog[6]~25\)))) # (!\PC1|address_prog\(7) & ((\PC1|Add0~7_combout\ & 
-- (!\PC1|address_prog[6]~25\)) # (!\PC1|Add0~7_combout\ & ((\PC1|address_prog[6]~25\) # (GND)))))
-- \PC1|address_prog[7]~27\ = CARRY((\PC1|address_prog\(7) & (!\PC1|Add0~7_combout\ & !\PC1|address_prog[6]~25\)) # (!\PC1|address_prog\(7) & ((!\PC1|address_prog[6]~25\) # (!\PC1|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|address_prog\(7),
	datab => \PC1|Add0~7_combout\,
	datad => VCC,
	cin => \PC1|address_prog[6]~25\,
	combout => \PC1|address_prog[7]~26_combout\,
	cout => \PC1|address_prog[7]~27\);

-- Location: LCCOMB_X28_Y34_N22
\PC1|address_prog[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[8]~28_combout\ = ((\PC1|address_prog\(8) $ (\PC1|Add0~8_combout\ $ (!\PC1|address_prog[7]~27\)))) # (GND)
-- \PC1|address_prog[8]~29\ = CARRY((\PC1|address_prog\(8) & ((\PC1|Add0~8_combout\) # (!\PC1|address_prog[7]~27\))) # (!\PC1|address_prog\(8) & (\PC1|Add0~8_combout\ & !\PC1|address_prog[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|address_prog\(8),
	datab => \PC1|Add0~8_combout\,
	datad => VCC,
	cin => \PC1|address_prog[7]~27\,
	combout => \PC1|address_prog[8]~28_combout\,
	cout => \PC1|address_prog[8]~29\);

-- Location: LCCOMB_X28_Y34_N24
\PC1|address_prog[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[9]~30_combout\ = (\PC1|address_prog\(9) & ((\PC1|Add0~9_combout\ & (\PC1|address_prog[8]~29\ & VCC)) # (!\PC1|Add0~9_combout\ & (!\PC1|address_prog[8]~29\)))) # (!\PC1|address_prog\(9) & ((\PC1|Add0~9_combout\ & 
-- (!\PC1|address_prog[8]~29\)) # (!\PC1|Add0~9_combout\ & ((\PC1|address_prog[8]~29\) # (GND)))))
-- \PC1|address_prog[9]~31\ = CARRY((\PC1|address_prog\(9) & (!\PC1|Add0~9_combout\ & !\PC1|address_prog[8]~29\)) # (!\PC1|address_prog\(9) & ((!\PC1|address_prog[8]~29\) # (!\PC1|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|address_prog\(9),
	datab => \PC1|Add0~9_combout\,
	datad => VCC,
	cin => \PC1|address_prog[8]~29\,
	combout => \PC1|address_prog[9]~30_combout\,
	cout => \PC1|address_prog[9]~31\);

-- Location: LCCOMB_X28_Y34_N26
\PC1|address_prog[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|address_prog[10]~32_combout\ = \PC1|address_prog\(10) $ (\PC1|address_prog[9]~31\ $ (!\PC1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC1|address_prog\(10),
	datad => \PC1|Add0~10_combout\,
	cin => \PC1|address_prog[9]~31\,
	combout => \PC1|address_prog[10]~32_combout\);

-- Location: LCFF_X28_Y34_N27
\PC1|address_prog[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[10]~32_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(10));

-- Location: M4K_X52_Y34
\MemPro|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y34_N6
\IR|reg_var~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~10_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(9),
	combout => \IR|reg_var~10_combout\);

-- Location: LCFF_X51_Y34_N7
\IR|reg_var[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~10_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(9));

-- Location: LCCOMB_X28_Y34_N0
\PC1|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~9_combout\ = (\PC_f~combout\ & \IR|reg_var\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_f~combout\,
	datad => \IR|reg_var\(9),
	combout => \PC1|Add0~9_combout\);

-- Location: LCFF_X28_Y34_N25
\PC1|address_prog[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[9]~30_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(9));

-- Location: LCCOMB_X51_Y34_N12
\IR|reg_var~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~9_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(8),
	combout => \IR|reg_var~9_combout\);

-- Location: LCFF_X51_Y34_N13
\IR|reg_var[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~9_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(8));

-- Location: LCCOMB_X28_Y34_N2
\PC1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~8_combout\ = (\PC_f~combout\ & \IR|reg_var\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_f~combout\,
	datad => \IR|reg_var\(8),
	combout => \PC1|Add0~8_combout\);

-- Location: LCFF_X28_Y34_N23
\PC1|address_prog[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[8]~28_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(8));

-- Location: M4K_X26_Y33
\MemPro|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y33_N18
\IR|reg_var~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~8_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(7),
	combout => \IR|reg_var~8_combout\);

-- Location: LCFF_X27_Y33_N19
\IR|reg_var[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~8_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(7));

-- Location: LCCOMB_X27_Y34_N4
\PC1|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~7_combout\ = (\PC_f~combout\ & \IR|reg_var\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_f~combout\,
	datad => \IR|reg_var\(7),
	combout => \PC1|Add0~7_combout\);

-- Location: LCFF_X28_Y34_N21
\PC1|address_prog[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[7]~26_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(7));

-- Location: M4K_X26_Y31
\MemPro|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y31_N2
\IR|reg_var~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~6_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(5),
	combout => \IR|reg_var~6_combout\);

-- Location: LCFF_X27_Y31_N3
\IR|reg_var[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~6_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(5));

-- Location: LCCOMB_X27_Y34_N28
\PC1|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~5_combout\ = (\PC_f~combout\ & \IR|reg_var\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_f~combout\,
	datad => \IR|reg_var\(5),
	combout => \PC1|Add0~5_combout\);

-- Location: LCFF_X28_Y34_N17
\PC1|address_prog[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[5]~22_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(5));

-- Location: M4K_X26_Y35
\MemPro|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y35_N6
\IR|reg_var~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~4_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(3),
	combout => \IR|reg_var~4_combout\);

-- Location: LCFF_X27_Y35_N7
\IR|reg_var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~4_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(3));

-- Location: LCCOMB_X27_Y34_N16
\PC1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~3_combout\ = (\PC_f~combout\ & \IR|reg_var\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_f~combout\,
	datad => \IR|reg_var\(3),
	combout => \PC1|Add0~3_combout\);

-- Location: LCFF_X28_Y34_N13
\PC1|address_prog[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[3]~18_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(3));

-- Location: LCCOMB_X27_Y35_N16
\IR|reg_var~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~3_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(2),
	combout => \IR|reg_var~3_combout\);

-- Location: LCFF_X27_Y35_N17
\IR|reg_var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~3_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(2));

-- Location: LCCOMB_X27_Y34_N18
\PC1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|Add0~2_combout\ = (\PC_f~combout\ & \IR|reg_var\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_f~combout\,
	datac => \IR|reg_var\(2),
	combout => \PC1|Add0~2_combout\);

-- Location: LCFF_X28_Y34_N11
\PC1|address_prog[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC1|address_prog[2]~16_combout\,
	sclr => \ALT_INV_PC_clr~combout\,
	ena => \PC1|address_prog[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC1|address_prog\(2));

-- Location: M4K_X26_Y34
\MemPro|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y34_N12
\IR|reg_var~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~0_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(0),
	combout => \IR|reg_var~0_combout\);

-- Location: LCFF_X27_Y34_N13
\IR|reg_var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~0_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(0));

-- Location: LCCOMB_X27_Y34_N2
\IR|reg_var~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~2_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(1),
	combout => \IR|reg_var~2_combout\);

-- Location: LCFF_X27_Y34_N3
\IR|reg_var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~2_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(1));

-- Location: LCCOMB_X27_Y31_N0
\IR|reg_var~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~5_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(4),
	combout => \IR|reg_var~5_combout\);

-- Location: LCFF_X27_Y31_N1
\IR|reg_var[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~5_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(4));

-- Location: LCCOMB_X27_Y33_N0
\IR|reg_var~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~7_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(6),
	combout => \IR|reg_var~7_combout\);

-- Location: LCFF_X27_Y33_N1
\IR|reg_var[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~7_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(6));

-- Location: LCCOMB_X51_Y32_N10
\IR|reg_var~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~12_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(11),
	combout => \IR|reg_var~12_combout\);

-- Location: LCFF_X51_Y32_N11
\IR|reg_var[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~12_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(11));

-- Location: M4K_X52_Y33
\MemPro|altsyncram_component|auto_generated|ram_block1a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y33_N0
\IR|reg_var~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~13_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(12),
	combout => \IR|reg_var~13_combout\);

-- Location: LCFF_X51_Y33_N1
\IR|reg_var[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~13_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(12));

-- Location: LCCOMB_X51_Y33_N2
\IR|reg_var~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~14_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(13),
	combout => \IR|reg_var~14_combout\);

-- Location: LCFF_X51_Y33_N3
\IR|reg_var[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~14_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(13));

-- Location: M4K_X26_Y32
\MemPro|altsyncram_component|auto_generated|ram_block1a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mif_memprog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memprog:MemPro|altsyncram:altsyncram_component|altsyncram_7f81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \MemPro|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MemPro|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y32_N28
\IR|reg_var~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~15_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(14),
	combout => \IR|reg_var~15_combout\);

-- Location: LCFF_X27_Y32_N29
\IR|reg_var[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~15_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(14));

-- Location: LCCOMB_X27_Y32_N22
\IR|reg_var~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \IR|reg_var~16_combout\ = (\IR_clr~combout\ & \MemPro|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR_clr~combout\,
	datad => \MemPro|altsyncram_component|auto_generated|q_a\(15),
	combout => \IR|reg_var~16_combout\);

-- Location: LCFF_X27_Y32_N23
\IR|reg_var[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \IR|reg_var~16_combout\,
	ena => \IR|reg_var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|reg_var\(15));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mux_2s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Mux_2s(0),
	combout => \Mux_2s~combout\(0));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mux_2s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Mux_2s(1),
	combout => \Mux_2s~combout\(1));

-- Location: LCCOMB_X27_Y34_N20
\compExt|result[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compExt|result[0]~3_combout\ = (\compExt|result[0]~6_combout\ & (!\IR|reg_var\(1) & (!\IR|reg_var\(2) & !\IR|reg_var\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compExt|result[0]~6_combout\,
	datab => \IR|reg_var\(1),
	datac => \IR|reg_var\(2),
	datad => \IR|reg_var\(3),
	combout => \compExt|result[0]~3_combout\);

-- Location: LCCOMB_X27_Y34_N22
\compExt|result[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \compExt|result[0]~22_combout\ = (\Mux_2s~combout\(0)) # ((\Mux_2s~combout\(1)) # ((\compExt|result[0]~3_combout\ & !\IR|reg_var\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_2s~combout\(0),
	datab => \Mux_2s~combout\(1),
	datac => \compExt|result[0]~3_combout\,
	datad => \IR|reg_var\(0),
	combout => \compExt|result[0]~22_combout\);

-- Location: LCCOMB_X27_Y34_N24
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\IR|reg_var\(7) & (!\Mux_2s~combout\(0) & !\Mux_2s~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|reg_var\(7),
	datac => \Mux_2s~combout\(0),
	datad => \Mux_2s~combout\(1),
	combout => \Mux8~0_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_rw~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_rw);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(0));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(1));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(2));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(3));

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(4));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(5));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(6));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_in(7));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(2));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(3));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(4));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(5));

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(6));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_in(7));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(0));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(3));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(4));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(5));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(6));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO1_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO1_out(7));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(0));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(1));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(3));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(4));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(5));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(6));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RO2_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO2_out(7));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RO1_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RO1_ld);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RO2_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RO2_ld);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI1_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI1_ld);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RI2_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI2_ld);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R3_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_R3_ld);

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R1_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_R1_ld);

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R2_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_R2_ld);

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mux_1s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Mux_1s(0));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mux_1s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Mux_1s(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mux_3s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Mux_3s(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mux_3s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Mux_3s(1));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ALU_s(0));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ALU_s(1));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_s[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ALU_s(2));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ALU_s[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ALU_s(3));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\flg_ld~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_flg_ld);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flag_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flag_out(0));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flag_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flag_out(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(4));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(6));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(7));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(8));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(9));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(10));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(11));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(12));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(13));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(14));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Inst[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR|reg_var\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Inst(15));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \compExt|result[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(1));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(2));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(4));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(5));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(6));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CompOutExt[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CompOutExt(7));
END structure;


