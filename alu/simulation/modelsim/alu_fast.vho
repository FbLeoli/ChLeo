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

-- DATE "10/16/2019 14:04:47"

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

ENTITY 	alu IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	s : IN std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- result[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \sub_sig|Add1~4_combout\ : std_logic;
SIGNAL \sub_sig|Add1~16_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \sub_sig|Add1~9_combout\ : std_logic;
SIGNAL \sub_sig|Add1~12_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \sub_sig|Add1~24_combout\ : std_logic;
SIGNAL \sub_sig|Add1~25_combout\ : std_logic;
SIGNAL \sub_sig|Add1~26_combout\ : std_logic;
SIGNAL \sub_sig|Add1~27_combout\ : std_logic;
SIGNAL \comp|Equal0~1_combout\ : std_logic;
SIGNAL \comp|comb~1_combout\ : std_logic;
SIGNAL \compU|comb~1_combout\ : std_logic;
SIGNAL \compU|LessThan1~1_cout\ : std_logic;
SIGNAL \compU|LessThan1~3_cout\ : std_logic;
SIGNAL \compU|LessThan1~5_cout\ : std_logic;
SIGNAL \compU|LessThan1~7_cout\ : std_logic;
SIGNAL \compU|LessThan1~9_cout\ : std_logic;
SIGNAL \compU|LessThan1~11_cout\ : std_logic;
SIGNAL \compU|LessThan1~13_cout\ : std_logic;
SIGNAL \compU|LessThan1~14_combout\ : std_logic;
SIGNAL \compU|LessThan0~1_cout\ : std_logic;
SIGNAL \compU|LessThan0~3_cout\ : std_logic;
SIGNAL \compU|LessThan0~5_cout\ : std_logic;
SIGNAL \compU|LessThan0~7_cout\ : std_logic;
SIGNAL \compU|LessThan0~9_cout\ : std_logic;
SIGNAL \compU|LessThan0~11_cout\ : std_logic;
SIGNAL \compU|LessThan0~13_cout\ : std_logic;
SIGNAL \compU|LessThan0~14_combout\ : std_logic;
SIGNAL \comp|Equal0~0_combout\ : std_logic;
SIGNAL \comp|Equal0~3_combout\ : std_logic;
SIGNAL \comp|Equal0~2_combout\ : std_logic;
SIGNAL \comp|Equal0~4_combout\ : std_logic;
SIGNAL \compU|comb~0_combout\ : std_logic;
SIGNAL \comp|LessThan0~1_cout\ : std_logic;
SIGNAL \comp|LessThan0~3_cout\ : std_logic;
SIGNAL \comp|LessThan0~5_cout\ : std_logic;
SIGNAL \comp|LessThan0~7_cout\ : std_logic;
SIGNAL \comp|LessThan0~9_cout\ : std_logic;
SIGNAL \comp|LessThan0~11_cout\ : std_logic;
SIGNAL \comp|LessThan0~13_cout\ : std_logic;
SIGNAL \comp|LessThan0~14_combout\ : std_logic;
SIGNAL \comp|LessThan1~1_cout\ : std_logic;
SIGNAL \comp|LessThan1~3_cout\ : std_logic;
SIGNAL \comp|LessThan1~5_cout\ : std_logic;
SIGNAL \comp|LessThan1~7_cout\ : std_logic;
SIGNAL \comp|LessThan1~9_cout\ : std_logic;
SIGNAL \comp|LessThan1~11_cout\ : std_logic;
SIGNAL \comp|LessThan1~13_cout\ : std_logic;
SIGNAL \comp|LessThan1~14_combout\ : std_logic;
SIGNAL \comp|comb~0_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux7~16_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~15_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \sub_sig|Add1~6_combout\ : std_logic;
SIGNAL \sub_sig|Add1~1_combout\ : std_logic;
SIGNAL \sub_sig|Add1~3_cout\ : std_logic;
SIGNAL \sub_sig|Add1~5\ : std_logic;
SIGNAL \sub_sig|Add1~7_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \sub_sig|Add1~0_combout\ : std_logic;
SIGNAL \sub_sig|Add1~8\ : std_logic;
SIGNAL \sub_sig|Add1~10_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \sub_sig|Add1~11\ : std_logic;
SIGNAL \sub_sig|Add1~13_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \sub_sig|Add1~18_combout\ : std_logic;
SIGNAL \sub_sig|Add1~15_combout\ : std_logic;
SIGNAL \sub_sig|Add1~14\ : std_logic;
SIGNAL \sub_sig|Add1~17\ : std_logic;
SIGNAL \sub_sig|Add1~19_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \sub_sig|Add1~21_combout\ : std_logic;
SIGNAL \sub_sig|Add1~20\ : std_logic;
SIGNAL \sub_sig|Add1~22_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \sub_sig|Add1~29_combout\ : std_logic;
SIGNAL \sub_sig|Add1~28_combout\ : std_logic;
SIGNAL \sub_sig|Add1~23\ : std_logic;
SIGNAL \sub_sig|Add1~30_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \sub_sig|Add1~32_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \comp|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \compU|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_s <= s;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X22_Y32_N12
\sub_sig|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~4_combout\ = (\a~combout\(0) & ((\sub_sig|Add1~1_combout\ & (\sub_sig|Add1~3_cout\ & VCC)) # (!\sub_sig|Add1~1_combout\ & (!\sub_sig|Add1~3_cout\)))) # (!\a~combout\(0) & ((\sub_sig|Add1~1_combout\ & (!\sub_sig|Add1~3_cout\)) # 
-- (!\sub_sig|Add1~1_combout\ & ((\sub_sig|Add1~3_cout\) # (GND)))))
-- \sub_sig|Add1~5\ = CARRY((\a~combout\(0) & (!\sub_sig|Add1~1_combout\ & !\sub_sig|Add1~3_cout\)) # (!\a~combout\(0) & ((!\sub_sig|Add1~3_cout\) # (!\sub_sig|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \sub_sig|Add1~1_combout\,
	datad => VCC,
	cin => \sub_sig|Add1~3_cout\,
	combout => \sub_sig|Add1~4_combout\,
	cout => \sub_sig|Add1~5\);

-- Location: LCCOMB_X22_Y32_N20
\sub_sig|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~16_combout\ = (\a~combout\(4) & ((\sub_sig|Add1~15_combout\ & (\sub_sig|Add1~14\ & VCC)) # (!\sub_sig|Add1~15_combout\ & (!\sub_sig|Add1~14\)))) # (!\a~combout\(4) & ((\sub_sig|Add1~15_combout\ & (!\sub_sig|Add1~14\)) # 
-- (!\sub_sig|Add1~15_combout\ & ((\sub_sig|Add1~14\) # (GND)))))
-- \sub_sig|Add1~17\ = CARRY((\a~combout\(4) & (!\sub_sig|Add1~15_combout\ & !\sub_sig|Add1~14\)) # (!\a~combout\(4) & ((!\sub_sig|Add1~14\) # (!\sub_sig|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \sub_sig|Add1~15_combout\,
	datad => VCC,
	cin => \sub_sig|Add1~14\,
	combout => \sub_sig|Add1~16_combout\,
	cout => \sub_sig|Add1~17\);

-- Location: LCCOMB_X22_Y35_N16
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\s~combout\(1) & (\a~combout\(0) & (\b~combout\(0) & \s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \s~combout\(0),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X23_Y32_N16
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (!\s~combout\(3) & ((\Mux7~4_combout\) # ((\sub_sig|Add1~4_combout\ & \sub_sig|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~4_combout\,
	datab => \sub_sig|Add1~0_combout\,
	datac => \s~combout\(3),
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X21_Y34_N8
\ShiftRight1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = (\b~combout\(0) & (\a~combout\(7))) # (!\b~combout\(0) & ((\a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(7),
	datac => \b~combout\(0),
	datad => \a~combout\(6),
	combout => \ShiftRight1~0_combout\);

-- Location: LCCOMB_X22_Y35_N6
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\s~combout\(1) & ((\s~combout\(0) & (\compU|result\(1))) # (!\s~combout\(0) & ((\comp|result\(1)))))) # (!\s~combout\(1) & (((\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \compU|result\(1),
	datac => \comp|result\(1),
	datad => \s~combout\(0),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X22_Y35_N24
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\s~combout\(1) & (\Mux6~2_combout\)) # (!\s~combout\(1) & ((\b~combout\(1) & ((!\a~combout\(1)) # (!\Mux6~2_combout\))) # (!\b~combout\(1) & ((\a~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \b~combout\(1),
	datac => \a~combout\(1),
	datad => \s~combout\(1),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X22_Y34_N12
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux7~7_combout\ & ((\ShiftLeft0~2_combout\) # ((\b~combout\(1) & \b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \Mux7~7_combout\,
	datac => \ShiftLeft0~2_combout\,
	datad => \b~combout\(2),
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X23_Y33_N2
\Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (!\b~combout\(0) & ((\b~combout\(1) & ((\a~combout\(3)))) # (!\b~combout\(1) & (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X23_Y33_N4
\Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (!\b~combout\(2) & ((\Mux6~8_combout\) # ((\b~combout\(0) & \Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \Mux6~8_combout\,
	datac => \Mux5~0_combout\,
	datad => \b~combout\(2),
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X22_Y34_N24
\Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\Mux6~9_combout\) # ((\Mux2~0_combout\ & (!\b~combout\(1) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~9_combout\,
	datab => \Mux2~0_combout\,
	datac => \b~combout\(1),
	datad => \b~combout\(2),
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X22_Y34_N10
\Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\b~combout\(1) & (!\b~combout\(0) & (\a~combout\(7) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(7),
	datad => \b~combout\(2),
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X22_Y34_N20
\Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (\Mux6~11_combout\ & ((\Mux4~5_combout\) # ((\sub_sig|Add1~0_combout\ & \Mux6~10_combout\)))) # (!\Mux6~11_combout\ & (\sub_sig|Add1~0_combout\ & (\Mux6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~11_combout\,
	datab => \sub_sig|Add1~0_combout\,
	datac => \Mux6~10_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux6~12_combout\);

-- Location: LCCOMB_X24_Y34_N6
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\a~combout\(7) & ((\ShiftLeft0~2_combout\) # ((!\ShiftLeft0~1_combout\ & \b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \ShiftLeft0~2_combout\,
	datac => \ShiftLeft0~1_combout\,
	datad => \b~combout\(2),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X24_Y34_N24
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (!\b~combout\(7) & (\ShiftLeft0~1_combout\ & (!\ShiftLeft0~0_combout\ & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \ShiftLeft0~1_combout\,
	datac => \ShiftLeft0~0_combout\,
	datad => \b~combout\(2),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X24_Y34_N10
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\s~combout\(1) & ((\Mux5~2_combout\) # ((\Mux4~6_combout\ & \a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \a~combout\(6),
	datac => \s~combout\(1),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X24_Y32_N24
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\a~combout\(2) & (\b~combout\(2) & (\s~combout\(1) & \s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datac => \s~combout\(1),
	datad => \s~combout\(0),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X24_Y32_N26
\sub_sig|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~9_combout\ = \b~combout\(2) $ (\s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datac => \s~combout\(1),
	combout => \sub_sig|Add1~9_combout\);

-- Location: LCCOMB_X22_Y32_N4
\sub_sig|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~12_combout\ = \s~combout\(1) $ (\b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\(1),
	datac => \b~combout\(3),
	combout => \sub_sig|Add1~12_combout\);

-- Location: LCCOMB_X23_Y33_N12
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & (((\b~combout\(2))))) # (!\Mux3~5_combout\ & ((\b~combout\(2) & ((\a~combout\(0)))) # (!\b~combout\(2) & (\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \a~combout\(4),
	datac => \a~combout\(0),
	datad => \b~combout\(2),
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X23_Y34_N22
\ShiftLeft0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\b~combout\(0) & ((\a~combout\(4)))) # (!\b~combout\(0) & (\a~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datac => \b~combout\(0),
	datad => \a~combout\(4),
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X23_Y34_N16
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\b~combout\(2) & ((\b~combout\(1) & (\ShiftLeft0~6_combout\)) # (!\b~combout\(1) & ((\ShiftLeft0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \ShiftLeft0~6_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \b~combout\(1),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X22_Y34_N16
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\) # ((\ShiftLeft0~5_combout\ & (!\b~combout\(1) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \b~combout\(1),
	datac => \Mux2~6_combout\,
	datad => \b~combout\(2),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X21_Y32_N6
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\a~combout\(6) & ((\s~combout\(0)) # (!\b~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \a~combout\(6),
	datac => \b~combout\(6),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y34_N10
\Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\b~combout\(0) & ((\b~combout\(1) & ((\a~combout\(3)))) # (!\b~combout\(1) & (\a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(3),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X23_Y34_N20
\Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\b~combout\(0) & ((\b~combout\(1) & (\a~combout\(4))) # (!\b~combout\(1) & ((\a~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(4),
	datac => \a~combout\(6),
	datad => \b~combout\(1),
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X23_Y34_N14
\Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\b~combout\(2) & (\ShiftLeft0~4_combout\)) # (!\b~combout\(2) & (((\Mux1~5_combout\) # (\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~4_combout\,
	datab => \b~combout\(2),
	datac => \Mux1~5_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X24_Y34_N14
\sub_sig|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~24_combout\ = (!\b~combout\(7) & (\b~combout\(2) & (!\ShiftLeft0~0_combout\ & !\s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \b~combout\(2),
	datac => \ShiftLeft0~0_combout\,
	datad => \s~combout\(0),
	combout => \sub_sig|Add1~24_combout\);

-- Location: LCCOMB_X24_Y34_N16
\sub_sig|Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~25_combout\ = (\b~combout\(0) & (((\a~combout\(6) & !\s~combout\(0))))) # (!\b~combout\(0) & (\a~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \a~combout\(6),
	datac => \b~combout\(0),
	datad => \s~combout\(0),
	combout => \sub_sig|Add1~25_combout\);

-- Location: LCCOMB_X24_Y34_N2
\sub_sig|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~26_combout\ = (\b~combout\(1) & (((\ShiftLeft0~8_combout\ & !\s~combout\(0))))) # (!\b~combout\(1) & (\sub_sig|Add1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~25_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \b~combout\(1),
	datad => \s~combout\(0),
	combout => \sub_sig|Add1~26_combout\);

-- Location: LCCOMB_X24_Y34_N12
\sub_sig|Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~27_combout\ = (\Mux4~4_combout\ & ((\sub_sig|Add1~26_combout\) # ((\ShiftLeft0~7_combout\ & \sub_sig|Add1~24_combout\)))) # (!\Mux4~4_combout\ & (\ShiftLeft0~7_combout\ & (\sub_sig|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \sub_sig|Add1~24_combout\,
	datad => \sub_sig|Add1~26_combout\,
	combout => \sub_sig|Add1~27_combout\);

-- Location: LCCOMB_X22_Y33_N24
\comp|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|Equal0~1_combout\ = (\b~combout\(2) & (\a~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3))))) # (!\b~combout\(2) & (!\a~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(3),
	datac => \a~combout\(2),
	datad => \b~combout\(3),
	combout => \comp|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y35_N20
\comp|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|comb~1_combout\ = (\comp|Equal0~4_combout\) # (\comp|LessThan1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp|Equal0~4_combout\,
	datad => \comp|LessThan1~14_combout\,
	combout => \comp|comb~1_combout\);

-- Location: LCCOMB_X22_Y35_N30
\compU|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|comb~1_combout\ = (\comp|Equal0~4_combout\) # (\compU|LessThan1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp|Equal0~4_combout\,
	datac => \compU|LessThan1~14_combout\,
	combout => \compU|comb~1_combout\);

-- Location: LCCOMB_X22_Y35_N28
\comp|result[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|result\(1) = (!\comp|comb~1_combout\ & ((\comp|LessThan0~14_combout\) # (\comp|result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|comb~1_combout\,
	datac => \comp|LessThan0~14_combout\,
	datad => \comp|result\(1),
	combout => \comp|result\(1));

-- Location: LCCOMB_X22_Y35_N22
\compU|result[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|result\(1) = (!\compU|comb~1_combout\ & ((\compU|LessThan0~14_combout\) # (\compU|result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compU|comb~1_combout\,
	datac => \compU|LessThan0~14_combout\,
	datad => \compU|result\(1),
	combout => \compU|result\(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[2]~I\ : cycloneii_io
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
	padio => ww_s(2),
	combout => \s~combout\(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X22_Y33_N4
\compU|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~1_cout\ = CARRY((\b~combout\(0) & !\a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datad => VCC,
	cout => \compU|LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y33_N6
\compU|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~3_cout\ = CARRY((\a~combout\(1) & ((!\compU|LessThan1~1_cout\) # (!\b~combout\(1)))) # (!\a~combout\(1) & (!\b~combout\(1) & !\compU|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datad => VCC,
	cin => \compU|LessThan1~1_cout\,
	cout => \compU|LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y33_N8
\compU|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~5_cout\ = CARRY((\b~combout\(2) & ((!\compU|LessThan1~3_cout\) # (!\a~combout\(2)))) # (!\b~combout\(2) & (!\a~combout\(2) & !\compU|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	datad => VCC,
	cin => \compU|LessThan1~3_cout\,
	cout => \compU|LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y33_N10
\compU|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~7_cout\ = CARRY((\a~combout\(3) & ((!\compU|LessThan1~5_cout\) # (!\b~combout\(3)))) # (!\a~combout\(3) & (!\b~combout\(3) & !\compU|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \compU|LessThan1~5_cout\,
	cout => \compU|LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y33_N12
\compU|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~9_cout\ = CARRY((\a~combout\(4) & (\b~combout\(4) & !\compU|LessThan1~7_cout\)) # (!\a~combout\(4) & ((\b~combout\(4)) # (!\compU|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(4),
	datad => VCC,
	cin => \compU|LessThan1~7_cout\,
	cout => \compU|LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y33_N14
\compU|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~11_cout\ = CARRY((\b~combout\(5) & (\a~combout\(5) & !\compU|LessThan1~9_cout\)) # (!\b~combout\(5) & ((\a~combout\(5)) # (!\compU|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \a~combout\(5),
	datad => VCC,
	cin => \compU|LessThan1~9_cout\,
	cout => \compU|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y33_N16
\compU|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~13_cout\ = CARRY((\b~combout\(6) & ((!\compU|LessThan1~11_cout\) # (!\a~combout\(6)))) # (!\b~combout\(6) & (!\a~combout\(6) & !\compU|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(6),
	datad => VCC,
	cin => \compU|LessThan1~11_cout\,
	cout => \compU|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y33_N18
\compU|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan1~14_combout\ = (\a~combout\(7) & (\compU|LessThan1~13_cout\ & \b~combout\(7))) # (!\a~combout\(7) & ((\compU|LessThan1~13_cout\) # (\b~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(7),
	datad => \b~combout\(7),
	cin => \compU|LessThan1~13_cout\,
	combout => \compU|LessThan1~14_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X23_Y35_N0
\compU|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~1_cout\ = CARRY((!\b~combout\(0) & \a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datad => VCC,
	cout => \compU|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y35_N2
\compU|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~3_cout\ = CARRY((\b~combout\(1) & ((!\compU|LessThan0~1_cout\) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(1) & !\compU|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datad => VCC,
	cin => \compU|LessThan0~1_cout\,
	cout => \compU|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y35_N4
\compU|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~5_cout\ = CARRY((\a~combout\(2) & ((!\compU|LessThan0~3_cout\) # (!\b~combout\(2)))) # (!\a~combout\(2) & (!\b~combout\(2) & !\compU|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => VCC,
	cin => \compU|LessThan0~3_cout\,
	cout => \compU|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y35_N6
\compU|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~7_cout\ = CARRY((\a~combout\(3) & (\b~combout\(3) & !\compU|LessThan0~5_cout\)) # (!\a~combout\(3) & ((\b~combout\(3)) # (!\compU|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \compU|LessThan0~5_cout\,
	cout => \compU|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y35_N8
\compU|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~9_cout\ = CARRY((\a~combout\(4) & ((!\compU|LessThan0~7_cout\) # (!\b~combout\(4)))) # (!\a~combout\(4) & (!\b~combout\(4) & !\compU|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(4),
	datad => VCC,
	cin => \compU|LessThan0~7_cout\,
	cout => \compU|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y35_N10
\compU|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~11_cout\ = CARRY((\b~combout\(5) & ((!\compU|LessThan0~9_cout\) # (!\a~combout\(5)))) # (!\b~combout\(5) & (!\a~combout\(5) & !\compU|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \a~combout\(5),
	datad => VCC,
	cin => \compU|LessThan0~9_cout\,
	cout => \compU|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y35_N12
\compU|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~13_cout\ = CARRY((\a~combout\(6) & ((!\compU|LessThan0~11_cout\) # (!\b~combout\(6)))) # (!\a~combout\(6) & (!\b~combout\(6) & !\compU|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \b~combout\(6),
	datad => VCC,
	cin => \compU|LessThan0~11_cout\,
	cout => \compU|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y35_N14
\compU|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|LessThan0~14_combout\ = (\b~combout\(7) & (\compU|LessThan0~13_cout\ & \a~combout\(7))) # (!\b~combout\(7) & ((\compU|LessThan0~13_cout\) # (\a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datad => \a~combout\(7),
	cin => \compU|LessThan0~13_cout\,
	combout => \compU|LessThan0~14_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X22_Y33_N30
\comp|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|Equal0~0_combout\ = (\b~combout\(1) & (\a~combout\(1) & (\a~combout\(0) $ (!\b~combout\(0))))) # (!\b~combout\(1) & (!\a~combout\(1) & (\a~combout\(0) $ (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(0),
	datac => \a~combout\(1),
	datad => \b~combout\(0),
	combout => \comp|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y33_N20
\comp|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|Equal0~3_combout\ = (\b~combout\(7) & (\a~combout\(7) & (\a~combout\(6) $ (!\b~combout\(6))))) # (!\b~combout\(7) & (!\a~combout\(7) & (\a~combout\(6) $ (!\b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \a~combout\(6),
	datac => \a~combout\(7),
	datad => \b~combout\(6),
	combout => \comp|Equal0~3_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X22_Y33_N26
\comp|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|Equal0~2_combout\ = (\b~combout\(5) & (\a~combout\(5) & (\b~combout\(4) $ (!\a~combout\(4))))) # (!\b~combout\(5) & (!\a~combout\(5) & (\b~combout\(4) $ (!\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \a~combout\(5),
	datac => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \comp|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y33_N22
\comp|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|Equal0~4_combout\ = (\comp|Equal0~1_combout\ & (\comp|Equal0~0_combout\ & (\comp|Equal0~3_combout\ & \comp|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Equal0~1_combout\,
	datab => \comp|Equal0~0_combout\,
	datac => \comp|Equal0~3_combout\,
	datad => \comp|Equal0~2_combout\,
	combout => \comp|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y35_N18
\compU|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|comb~0_combout\ = (\compU|LessThan1~14_combout\) # ((\compU|LessThan0~14_combout\ & !\comp|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compU|LessThan1~14_combout\,
	datac => \compU|LessThan0~14_combout\,
	datad => \comp|Equal0~4_combout\,
	combout => \compU|comb~0_combout\);

-- Location: LCCOMB_X22_Y35_N26
\compU|result[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \compU|result\(0) = (!\compU|comb~0_combout\ & ((\comp|Equal0~4_combout\) # (\compU|result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|Equal0~4_combout\,
	datab => \compU|comb~0_combout\,
	datad => \compU|result\(0),
	combout => \compU|result\(0));

-- Location: LCCOMB_X23_Y33_N16
\comp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~1_cout\ = CARRY((!\b~combout\(0) & \a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datad => VCC,
	cout => \comp|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y33_N18
\comp|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~3_cout\ = CARRY((\b~combout\(1) & ((!\comp|LessThan0~1_cout\) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(1) & !\comp|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datad => VCC,
	cin => \comp|LessThan0~1_cout\,
	cout => \comp|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y33_N20
\comp|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~5_cout\ = CARRY((\a~combout\(2) & ((!\comp|LessThan0~3_cout\) # (!\b~combout\(2)))) # (!\a~combout\(2) & (!\b~combout\(2) & !\comp|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => VCC,
	cin => \comp|LessThan0~3_cout\,
	cout => \comp|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y33_N22
\comp|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~7_cout\ = CARRY((\a~combout\(3) & (\b~combout\(3) & !\comp|LessThan0~5_cout\)) # (!\a~combout\(3) & ((\b~combout\(3)) # (!\comp|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \comp|LessThan0~5_cout\,
	cout => \comp|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y33_N24
\comp|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~9_cout\ = CARRY((\b~combout\(4) & (\a~combout\(4) & !\comp|LessThan0~7_cout\)) # (!\b~combout\(4) & ((\a~combout\(4)) # (!\comp|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	datad => VCC,
	cin => \comp|LessThan0~7_cout\,
	cout => \comp|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y33_N26
\comp|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~11_cout\ = CARRY((\b~combout\(5) & ((!\comp|LessThan0~9_cout\) # (!\a~combout\(5)))) # (!\b~combout\(5) & (!\a~combout\(5) & !\comp|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \a~combout\(5),
	datad => VCC,
	cin => \comp|LessThan0~9_cout\,
	cout => \comp|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y33_N28
\comp|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~13_cout\ = CARRY((\a~combout\(6) & ((!\comp|LessThan0~11_cout\) # (!\b~combout\(6)))) # (!\a~combout\(6) & (!\b~combout\(6) & !\comp|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \b~combout\(6),
	datad => VCC,
	cin => \comp|LessThan0~11_cout\,
	cout => \comp|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y33_N30
\comp|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan0~14_combout\ = (\b~combout\(7) & ((\comp|LessThan0~13_cout\) # (!\a~combout\(7)))) # (!\b~combout\(7) & (\comp|LessThan0~13_cout\ & !\a~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datad => \a~combout\(7),
	cin => \comp|LessThan0~13_cout\,
	combout => \comp|LessThan0~14_combout\);

-- Location: LCCOMB_X23_Y35_N16
\comp|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~1_cout\ = CARRY((\b~combout\(0) & !\a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datad => VCC,
	cout => \comp|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y35_N18
\comp|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~3_cout\ = CARRY((\b~combout\(1) & (\a~combout\(1) & !\comp|LessThan1~1_cout\)) # (!\b~combout\(1) & ((\a~combout\(1)) # (!\comp|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datad => VCC,
	cin => \comp|LessThan1~1_cout\,
	cout => \comp|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y35_N20
\comp|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~5_cout\ = CARRY((\a~combout\(2) & (\b~combout\(2) & !\comp|LessThan1~3_cout\)) # (!\a~combout\(2) & ((\b~combout\(2)) # (!\comp|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => VCC,
	cin => \comp|LessThan1~3_cout\,
	cout => \comp|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y35_N22
\comp|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~7_cout\ = CARRY((\a~combout\(3) & ((!\comp|LessThan1~5_cout\) # (!\b~combout\(3)))) # (!\a~combout\(3) & (!\b~combout\(3) & !\comp|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \comp|LessThan1~5_cout\,
	cout => \comp|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y35_N24
\comp|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~9_cout\ = CARRY((\a~combout\(4) & (\b~combout\(4) & !\comp|LessThan1~7_cout\)) # (!\a~combout\(4) & ((\b~combout\(4)) # (!\comp|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(4),
	datad => VCC,
	cin => \comp|LessThan1~7_cout\,
	cout => \comp|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y35_N26
\comp|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~11_cout\ = CARRY((\b~combout\(5) & (\a~combout\(5) & !\comp|LessThan1~9_cout\)) # (!\b~combout\(5) & ((\a~combout\(5)) # (!\comp|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datab => \a~combout\(5),
	datad => VCC,
	cin => \comp|LessThan1~9_cout\,
	cout => \comp|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y35_N28
\comp|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~13_cout\ = CARRY((\a~combout\(6) & (\b~combout\(6) & !\comp|LessThan1~11_cout\)) # (!\a~combout\(6) & ((\b~combout\(6)) # (!\comp|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \b~combout\(6),
	datad => VCC,
	cin => \comp|LessThan1~11_cout\,
	cout => \comp|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y35_N30
\comp|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|LessThan1~14_combout\ = (\b~combout\(7) & (\comp|LessThan1~13_cout\ & \a~combout\(7))) # (!\b~combout\(7) & ((\comp|LessThan1~13_cout\) # (\a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datad => \a~combout\(7),
	cin => \comp|LessThan1~13_cout\,
	combout => \comp|LessThan1~14_combout\);

-- Location: LCCOMB_X22_Y35_N0
\comp|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|comb~0_combout\ = (\comp|LessThan1~14_combout\) # ((!\comp|Equal0~4_combout\ & \comp|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp|Equal0~4_combout\,
	datac => \comp|LessThan0~14_combout\,
	datad => \comp|LessThan1~14_combout\,
	combout => \comp|comb~0_combout\);

-- Location: LCCOMB_X22_Y35_N8
\comp|result[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comp|result\(0) = (!\comp|comb~0_combout\ & ((\comp|Equal0~4_combout\) # (\comp|result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp|Equal0~4_combout\,
	datac => \comp|result\(0),
	datad => \comp|comb~0_combout\,
	combout => \comp|result\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[0]~I\ : cycloneii_io
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
	padio => ww_s(0),
	combout => \s~combout\(0));

-- Location: LCCOMB_X22_Y35_N2
\Mux7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\s~combout\(1) & ((\s~combout\(0) & (\compU|result\(0))) # (!\s~combout\(0) & ((\comp|result\(0)))))) # (!\s~combout\(1) & (((\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \compU|result\(0),
	datac => \comp|result\(0),
	datad => \s~combout\(0),
	combout => \Mux7~13_combout\);

-- Location: LCCOMB_X22_Y35_N4
\Mux7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~14_combout\ = (\s~combout\(1) & (\Mux7~13_combout\)) # (!\s~combout\(1) & ((\b~combout\(0) & ((!\a~combout\(0)) # (!\Mux7~13_combout\))) # (!\b~combout\(0) & ((\a~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datab => \Mux7~13_combout\,
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \Mux7~14_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[3]~I\ : cycloneii_io
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
	padio => ww_s(3),
	combout => \s~combout\(3));

-- Location: LCCOMB_X22_Y34_N18
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\s~combout\(1) & \a~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datac => \a~combout\(7),
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X24_Y34_N8
\ShiftLeft0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (!\b~combout\(1) & !\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \b~combout\(0),
	combout => \ShiftLeft0~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[1]~I\ : cycloneii_io
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
	padio => ww_s(1),
	combout => \s~combout\(1));

-- Location: LCCOMB_X24_Y34_N26
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux4~4_combout\ & (\ShiftLeft0~1_combout\ & (!\s~combout\(1) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \ShiftLeft0~1_combout\,
	datac => \s~combout\(1),
	datad => \a~combout\(0),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X23_Y32_N2
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (!\s~combout\(0) & ((\Mux7~6_combout\) # ((\ShiftLeft0~2_combout\ & \Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \Mux7~7_combout\,
	datac => \s~combout\(0),
	datad => \Mux7~6_combout\,
	combout => \Mux7~8_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X23_Y33_N0
\Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (\b~combout\(0) & ((\b~combout\(1) & ((\a~combout\(3)))) # (!\b~combout\(1) & (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X22_Y33_N2
\Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (!\b~combout\(0) & ((\b~combout\(1) & ((\a~combout\(2)))) # (!\b~combout\(1) & (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \b~combout\(1),
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X23_Y32_N12
\Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\b~combout\(2) & (\ShiftRight0~1_combout\)) # (!\b~combout\(2) & (((\Mux7~10_combout\) # (\Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \Mux7~10_combout\,
	datac => \Mux7~9_combout\,
	datad => \b~combout\(2),
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X23_Y32_N6
\Mux7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~16_combout\ = (!\ShiftLeft0~2_combout\ & (\Mux7~11_combout\ & (\s~combout\(1) $ (\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \s~combout\(1),
	datac => \s~combout\(0),
	datad => \Mux7~11_combout\,
	combout => \Mux7~16_combout\);

-- Location: LCCOMB_X23_Y32_N22
\Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (\Mux7~5_combout\) # ((\s~combout\(3) & ((\Mux7~8_combout\) # (\Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~5_combout\,
	datab => \Mux7~8_combout\,
	datac => \s~combout\(3),
	datad => \Mux7~16_combout\,
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X23_Y32_N8
\Mux7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~15_combout\ = (\s~combout\(2) & (\Mux7~14_combout\ & (!\s~combout\(3)))) # (!\s~combout\(2) & (((\Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(2),
	datab => \Mux7~14_combout\,
	datac => \s~combout\(3),
	datad => \Mux7~12_combout\,
	combout => \Mux7~15_combout\);

-- Location: LCCOMB_X21_Y32_N26
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\s~combout\(0) & (\a~combout\(1) & (\b~combout\(1) & \s~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \s~combout\(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y34_N18
\sub_sig|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~6_combout\ = \b~combout\(1) $ (\s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \s~combout\(1),
	combout => \sub_sig|Add1~6_combout\);

-- Location: LCCOMB_X21_Y33_N16
\sub_sig|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~1_combout\ = \s~combout\(1) $ (\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(1),
	datac => \b~combout\(0),
	combout => \sub_sig|Add1~1_combout\);

-- Location: LCCOMB_X22_Y32_N10
\sub_sig|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~3_cout\ = CARRY(!\s~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datad => VCC,
	cout => \sub_sig|Add1~3_cout\);

-- Location: LCCOMB_X22_Y32_N14
\sub_sig|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~7_combout\ = ((\a~combout\(1) $ (\sub_sig|Add1~6_combout\ $ (!\sub_sig|Add1~5\)))) # (GND)
-- \sub_sig|Add1~8\ = CARRY((\a~combout\(1) & ((\sub_sig|Add1~6_combout\) # (!\sub_sig|Add1~5\))) # (!\a~combout\(1) & (\sub_sig|Add1~6_combout\ & !\sub_sig|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \sub_sig|Add1~6_combout\,
	datad => VCC,
	cin => \sub_sig|Add1~5\,
	combout => \sub_sig|Add1~7_combout\,
	cout => \sub_sig|Add1~8\);

-- Location: LCCOMB_X21_Y32_N28
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\s~combout\(2) & ((\Mux6~0_combout\) # ((\sub_sig|Add1~0_combout\ & \sub_sig|Add1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \sub_sig|Add1~7_combout\,
	datad => \s~combout\(2),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X21_Y32_N22
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!\s~combout\(3) & ((\Mux6~1_combout\) # ((\Mux6~3_combout\ & \s~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~1_combout\,
	datac => \s~combout\(3),
	datad => \s~combout\(2),
	combout => \Mux6~4_combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X22_Y33_N0
\ShiftLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\b~combout\(6)) # ((\b~combout\(4)) # ((\b~combout\(5)) # (\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \b~combout\(4),
	datac => \b~combout\(5),
	datad => \b~combout\(3),
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X22_Y34_N8
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\ShiftLeft0~0_combout\ & (!\b~combout\(7) & !\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~0_combout\,
	datac => \b~combout\(7),
	datad => \b~combout\(2),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X22_Y35_N10
\Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (!\s~combout\(1) & ((\b~combout\(0) & ((\a~combout\(0)))) # (!\b~combout\(0) & (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \s~combout\(1),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X22_Y34_N30
\Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~5_combout\) # ((\Mux4~4_combout\ & (!\b~combout\(1) & \Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux4~4_combout\,
	datac => \b~combout\(1),
	datad => \Mux6~6_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X24_Y34_N4
\ShiftLeft0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\b~combout\(7)) # (\ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datac => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X22_Y34_N14
\Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\Mux6~12_combout\ & (((\Mux6~7_combout\ & !\s~combout\(0))) # (!\ShiftLeft0~2_combout\))) # (!\Mux6~12_combout\ & (\Mux6~7_combout\ & ((!\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~12_combout\,
	datab => \Mux6~7_combout\,
	datac => \ShiftLeft0~2_combout\,
	datad => \s~combout\(0),
	combout => \Mux6~13_combout\);

-- Location: LCCOMB_X21_Y32_N0
\Mux6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (\Mux6~4_combout\) # ((!\s~combout\(2) & (\s~combout\(3) & \Mux6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(2),
	datab => \Mux6~4_combout\,
	datac => \s~combout\(3),
	datad => \Mux6~13_combout\,
	combout => \Mux6~14_combout\);

-- Location: LCCOMB_X24_Y32_N0
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\s~combout\(2) & (!\s~combout\(1) & !\s~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(2),
	datab => \s~combout\(1),
	datac => \s~combout\(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y32_N10
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux0~0_combout\ & ((\a~combout\(2) & ((!\s~combout\(0)) # (!\b~combout\(2)))) # (!\a~combout\(2) & (\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datac => \Mux0~0_combout\,
	datad => \s~combout\(0),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X23_Y34_N8
\Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\b~combout\(1) & (\a~combout\(5))) # (!\b~combout\(1) & ((\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X23_Y34_N4
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\b~combout\(1) & ((\a~combout\(4)))) # (!\b~combout\(1) & (\a~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(4),
	datad => \b~combout\(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X23_Y34_N2
\Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\b~combout\(0) & (\Mux5~9_combout\)) # (!\b~combout\(0) & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \Mux5~9_combout\,
	datac => \Mux5~0_combout\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X22_Y35_N12
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\s~combout\(0) & !\s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\(0),
	datad => \s~combout\(1),
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X22_Y34_N0
\Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\ShiftRight1~0_combout\ & (\Mux4~5_combout\ & (!\b~combout\(1) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~0_combout\,
	datab => \Mux4~5_combout\,
	datac => \b~combout\(1),
	datad => \b~combout\(2),
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X23_Y34_N12
\Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (\Mux5~8_combout\) # ((\sub_sig|Add1~0_combout\ & (\Mux5~10_combout\ & !\b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~0_combout\,
	datab => \Mux5~10_combout\,
	datac => \Mux5~8_combout\,
	datad => \b~combout\(2),
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X21_Y32_N24
\sub_sig|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~0_combout\ = \s~combout\(0) $ (\s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(0),
	datad => \s~combout\(1),
	combout => \sub_sig|Add1~0_combout\);

-- Location: LCCOMB_X22_Y32_N16
\sub_sig|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~10_combout\ = (\sub_sig|Add1~9_combout\ & ((\a~combout\(2) & (\sub_sig|Add1~8\ & VCC)) # (!\a~combout\(2) & (!\sub_sig|Add1~8\)))) # (!\sub_sig|Add1~9_combout\ & ((\a~combout\(2) & (!\sub_sig|Add1~8\)) # (!\a~combout\(2) & 
-- ((\sub_sig|Add1~8\) # (GND)))))
-- \sub_sig|Add1~11\ = CARRY((\sub_sig|Add1~9_combout\ & (!\a~combout\(2) & !\sub_sig|Add1~8\)) # (!\sub_sig|Add1~9_combout\ & ((!\sub_sig|Add1~8\) # (!\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~9_combout\,
	datab => \a~combout\(2),
	datad => VCC,
	cin => \sub_sig|Add1~8\,
	combout => \sub_sig|Add1~10_combout\,
	cout => \sub_sig|Add1~11\);

-- Location: LCCOMB_X24_Y32_N12
\Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (!\s~combout\(3) & ((\Mux5~6_combout\) # ((\sub_sig|Add1~0_combout\ & \sub_sig|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \s~combout\(3),
	datac => \sub_sig|Add1~0_combout\,
	datad => \sub_sig|Add1~10_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X24_Y32_N30
\Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (\Mux5~7_combout\) # ((\s~combout\(3) & (\Mux5~11_combout\ & !\ShiftLeft0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \Mux5~11_combout\,
	datac => \ShiftLeft0~2_combout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X23_Y33_N6
\ShiftLeft0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (!\b~combout\(0) & ((\b~combout\(1) & (\a~combout\(0))) # (!\b~combout\(1) & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \b~combout\(1),
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X23_Y33_N8
\ShiftLeft0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\ShiftLeft0~3_combout\) # ((\b~combout\(0) & (\a~combout\(1) & !\b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X24_Y32_N28
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (!\ShiftLeft0~2_combout\ & (\ShiftLeft0~4_combout\ & (!\s~combout\(1) & !\b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \ShiftLeft0~4_combout\,
	datac => \s~combout\(1),
	datad => \b~combout\(2),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X24_Y32_N14
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\s~combout\(3) & (!\s~combout\(0) & ((\Mux5~3_combout\) # (\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux5~4_combout\,
	datac => \s~combout\(3),
	datad => \s~combout\(0),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X24_Y32_N16
\Mux5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (\Mux5~1_combout\) # ((!\s~combout\(2) & ((\Mux5~12_combout\) # (\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~12_combout\,
	datac => \Mux5~5_combout\,
	datad => \s~combout\(2),
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X22_Y32_N2
\Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\s~combout\(0) & (\b~combout\(3) & (\s~combout\(1) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \b~combout\(3),
	datac => \s~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X22_Y32_N18
\sub_sig|Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~13_combout\ = ((\sub_sig|Add1~12_combout\ $ (\a~combout\(3) $ (!\sub_sig|Add1~11\)))) # (GND)
-- \sub_sig|Add1~14\ = CARRY((\sub_sig|Add1~12_combout\ & ((\a~combout\(3)) # (!\sub_sig|Add1~11\))) # (!\sub_sig|Add1~12_combout\ & (\a~combout\(3) & !\sub_sig|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~12_combout\,
	datab => \a~combout\(3),
	datad => VCC,
	cin => \sub_sig|Add1~11\,
	combout => \sub_sig|Add1~13_combout\,
	cout => \sub_sig|Add1~14\);

-- Location: LCCOMB_X22_Y32_N6
\Mux4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (\Mux4~8_combout\) # ((\sub_sig|Add1~13_combout\ & (\s~combout\(0) $ (\s~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \Mux4~8_combout\,
	datac => \s~combout\(1),
	datad => \sub_sig|Add1~13_combout\,
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X22_Y32_N0
\Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux0~0_combout\ & ((\b~combout\(3) & ((!\a~combout\(3)) # (!\s~combout\(0)))) # (!\b~combout\(3) & ((\a~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \b~combout\(3),
	datac => \s~combout\(0),
	datad => \a~combout\(3),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X21_Y32_N10
\Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux4~7_combout\) # ((!\s~combout\(3) & (\Mux4~16_combout\ & !\s~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \Mux4~16_combout\,
	datac => \Mux4~7_combout\,
	datad => \s~combout\(2),
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X23_Y32_N26
\Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (!\s~combout\(0) & (!\Mux4~4_combout\ & (\s~combout\(1) & \a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \Mux4~4_combout\,
	datac => \s~combout\(1),
	datad => \a~combout\(7),
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X23_Y34_N6
\ShiftRight1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = (\b~combout\(0) & ((\b~combout\(1) & ((\a~combout\(6)))) # (!\b~combout\(1) & (\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \b~combout\(1),
	datac => \a~combout\(4),
	datad => \a~combout\(6),
	combout => \ShiftRight1~1_combout\);

-- Location: LCCOMB_X23_Y34_N24
\ShiftRight1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = (\ShiftRight1~1_combout\) # ((\Mux5~9_combout\ & !\b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~9_combout\,
	datac => \b~combout\(0),
	datad => \ShiftRight1~1_combout\,
	combout => \ShiftRight1~2_combout\);

-- Location: LCCOMB_X24_Y34_N30
\Mux4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (\Mux4~6_combout\ & (\a~combout\(7) & (!\s~combout\(1) & \s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \a~combout\(7),
	datac => \s~combout\(1),
	datad => \s~combout\(0),
	combout => \Mux4~17_combout\);

-- Location: LCCOMB_X22_Y35_N14
\ShiftLeft0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\b~combout\(0) & ((\a~combout\(0)))) # (!\b~combout\(0) & (\a~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X23_Y34_N26
\ShiftLeft0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\b~combout\(0) & (\a~combout\(2))) # (!\b~combout\(0) & ((\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(0),
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X23_Y34_N28
\ShiftLeft0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\b~combout\(1) & (\ShiftLeft0~5_combout\)) # (!\b~combout\(1) & ((\ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \ShiftLeft0~5_combout\,
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X24_Y34_N28
\Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\s~combout\(1) & (\ShiftRight1~2_combout\)) # (!\s~combout\(1) & ((\ShiftLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~2_combout\,
	datac => \s~combout\(1),
	datad => \ShiftLeft0~7_combout\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X24_Y34_N22
\Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\Mux4~17_combout\) # ((\Mux4~4_combout\ & (\Mux4~10_combout\ & !\s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Mux4~17_combout\,
	datac => \Mux4~10_combout\,
	datad => \s~combout\(0),
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X23_Y32_N28
\Mux4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (\Mux4~12_combout\) # ((\Mux4~11_combout\) # ((\Mux4~13_combout\ & \ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~13_combout\,
	datab => \Mux4~12_combout\,
	datac => \ShiftRight1~2_combout\,
	datad => \Mux4~11_combout\,
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X21_Y32_N20
\Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (\Mux4~9_combout\) # ((\Mux4~14_combout\ & (\s~combout\(3) & !\s~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~9_combout\,
	datab => \Mux4~14_combout\,
	datac => \s~combout\(3),
	datad => \s~combout\(2),
	combout => \Mux4~15_combout\);

-- Location: LCCOMB_X23_Y34_N0
\ShiftRight0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (!\b~combout\(1) & ((\b~combout\(0) & (\a~combout\(5))) # (!\b~combout\(0) & ((\a~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(4),
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X23_Y34_N18
\ShiftRight0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\ShiftRight0~0_combout\) # ((\ShiftRight1~0_combout\ & \b~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~0_combout\,
	datab => \b~combout\(1),
	datad => \ShiftRight0~0_combout\,
	combout => \ShiftRight0~1_combout\);

-- Location: LCCOMB_X23_Y32_N4
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\ShiftLeft0~2_combout\ & (\a~combout\(7))) # (!\ShiftLeft0~2_combout\ & ((\b~combout\(2) & (\a~combout\(7))) # (!\b~combout\(2) & ((\ShiftRight0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \ShiftRight0~1_combout\,
	datac => \ShiftLeft0~2_combout\,
	datad => \b~combout\(2),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X23_Y33_N10
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\b~combout\(0) & ((\b~combout\(1) & (\a~combout\(1))) # (!\b~combout\(1) & ((\a~combout\(3)))))) # (!\b~combout\(0) & (((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(1),
	datac => \b~combout\(1),
	datad => \a~combout\(3),
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X23_Y33_N14
\Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~6_combout\ & (!\b~combout\(0) & ((!\Mux3~5_combout\)))) # (!\Mux3~6_combout\ & (\Mux3~5_combout\ & ((\b~combout\(0)) # (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	datab => \b~combout\(0),
	datac => \a~combout\(2),
	datad => \Mux3~5_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X23_Y32_N14
\Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\s~combout\(1) & (((\Mux3~4_combout\)))) # (!\s~combout\(1) & (!\ShiftLeft0~2_combout\ & ((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \Mux3~4_combout\,
	datac => \s~combout\(1),
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X22_Y33_N28
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\s~combout\(0) & (\a~combout\(4) & (\b~combout\(4) & \s~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \a~combout\(4),
	datac => \b~combout\(4),
	datad => \s~combout\(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X23_Y32_N24
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\s~combout\(3) & ((\Mux3~1_combout\) # ((\sub_sig|Add1~16_combout\ & \sub_sig|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~16_combout\,
	datab => \sub_sig|Add1~0_combout\,
	datac => \s~combout\(3),
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X22_Y34_N26
\Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (!\ShiftLeft0~0_combout\ & (\Mux4~5_combout\ & (!\b~combout\(7) & !\b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \Mux4~5_combout\,
	datac => \b~combout\(7),
	datad => \b~combout\(2),
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X23_Y32_N10
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\) # ((\s~combout\(3) & (\ShiftRight0~1_combout\ & \Mux4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \ShiftRight0~1_combout\,
	datac => \Mux3~2_combout\,
	datad => \Mux4~13_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X23_Y32_N0
\Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux3~3_combout\) # ((\s~combout\(3) & (\Mux3~8_combout\ & !\s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \Mux3~8_combout\,
	datac => \s~combout\(0),
	datad => \Mux3~3_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X23_Y32_N30
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\b~combout\(4) & ((!\s~combout\(0)) # (!\a~combout\(4)))) # (!\b~combout\(4) & (\a~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	datac => \s~combout\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y32_N18
\Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\s~combout\(2) & (((\Mux0~0_combout\ & \Mux3~0_combout\)))) # (!\s~combout\(2) & ((\Mux3~9_combout\) # ((\Mux0~0_combout\ & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(2),
	datab => \Mux3~9_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X23_Y34_N30
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\b~combout\(0) & ((\a~combout\(6)))) # (!\b~combout\(0) & (\a~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datac => \b~combout\(0),
	datad => \a~combout\(6),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X22_Y34_N28
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\b~combout\(1) & (!\b~combout\(0) & (\a~combout\(7)))) # (!\b~combout\(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(7),
	datad => \Mux2~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X22_Y34_N6
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\b~combout\(1) & (\a~combout\(7))) # (!\b~combout\(1) & ((\Mux4~4_combout\ & ((\Mux2~0_combout\))) # (!\Mux4~4_combout\ & (\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(7),
	datac => \Mux4~4_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X22_Y34_N2
\Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\s~combout\(1) & (((\Mux2~5_combout\)))) # (!\s~combout\(1) & (\Mux2~7_combout\ & (!\ShiftLeft0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \ShiftLeft0~2_combout\,
	datac => \s~combout\(1),
	datad => \Mux2~5_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X22_Y34_N4
\Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\s~combout\(0) & (\Mux2~4_combout\ & ((\Mux4~13_combout\)))) # (!\s~combout\(0) & ((\Mux2~8_combout\) # ((\Mux2~4_combout\ & \Mux4~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \Mux2~4_combout\,
	datac => \Mux2~8_combout\,
	datad => \Mux4~13_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X22_Y32_N8
\sub_sig|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~18_combout\ = \s~combout\(1) $ (\b~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\(1),
	datac => \b~combout\(5),
	combout => \sub_sig|Add1~18_combout\);

-- Location: LCCOMB_X22_Y32_N30
\sub_sig|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~15_combout\ = \s~combout\(1) $ (\b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\(1),
	datac => \b~combout\(4),
	combout => \sub_sig|Add1~15_combout\);

-- Location: LCCOMB_X22_Y32_N22
\sub_sig|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~19_combout\ = ((\a~combout\(5) $ (\sub_sig|Add1~18_combout\ $ (!\sub_sig|Add1~17\)))) # (GND)
-- \sub_sig|Add1~20\ = CARRY((\a~combout\(5) & ((\sub_sig|Add1~18_combout\) # (!\sub_sig|Add1~17\))) # (!\a~combout\(5) & (\sub_sig|Add1~18_combout\ & !\sub_sig|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \sub_sig|Add1~18_combout\,
	datad => VCC,
	cin => \sub_sig|Add1~17\,
	combout => \sub_sig|Add1~19_combout\,
	cout => \sub_sig|Add1~20\);

-- Location: LCCOMB_X21_Y32_N30
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\a~combout\(5) & ((\s~combout\(0)) # (!\b~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \a~combout\(5),
	datac => \b~combout\(5),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X21_Y32_N8
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\s~combout\(2) & (!\s~combout\(1) & (\Mux2~1_combout\ $ (\b~combout\(5))))) # (!\s~combout\(2) & (\Mux2~1_combout\ & (\b~combout\(5) & \s~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(2),
	datab => \Mux2~1_combout\,
	datac => \b~combout\(5),
	datad => \s~combout\(1),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X21_Y32_N2
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\) # ((\sub_sig|Add1~0_combout\ & (\sub_sig|Add1~19_combout\ & !\s~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~0_combout\,
	datab => \sub_sig|Add1~19_combout\,
	datac => \Mux2~2_combout\,
	datad => \s~combout\(2),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X21_Y32_N4
\Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\s~combout\(3) & (\Mux2~9_combout\ & ((!\s~combout\(2))))) # (!\s~combout\(3) & (((\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \Mux2~3_combout\,
	datac => \s~combout\(3),
	datad => \s~combout\(2),
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X22_Y34_N22
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\ShiftRight1~0_combout\ & (\Mux4~4_combout\ & (!\b~combout\(1) & \s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~0_combout\,
	datab => \Mux4~4_combout\,
	datac => \b~combout\(1),
	datad => \s~combout\(0),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X24_Y34_N0
\Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux1~3_combout\) # ((\Mux1~6_combout\ & (!\ShiftLeft0~2_combout\ & !\s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \Mux1~3_combout\,
	datac => \ShiftLeft0~2_combout\,
	datad => \s~combout\(0),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X24_Y34_N18
\Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux4~4_combout\ & ((\ShiftLeft0~1_combout\ & (\a~combout\(6))) # (!\ShiftLeft0~1_combout\ & ((\a~combout\(7)))))) # (!\Mux4~4_combout\ & (((\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \a~combout\(6),
	datac => \ShiftLeft0~1_combout\,
	datad => \a~combout\(7),
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X24_Y34_N20
\Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\s~combout\(1) & (!\s~combout\(0) & ((\Mux1~8_combout\)))) # (!\s~combout\(1) & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(0),
	datab => \Mux1~7_combout\,
	datac => \s~combout\(1),
	datad => \Mux1~8_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X22_Y32_N28
\sub_sig|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~21_combout\ = \s~combout\(1) $ (\b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\(1),
	datac => \b~combout\(6),
	combout => \sub_sig|Add1~21_combout\);

-- Location: LCCOMB_X22_Y32_N24
\sub_sig|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~22_combout\ = (\a~combout\(6) & ((\sub_sig|Add1~21_combout\ & (\sub_sig|Add1~20\ & VCC)) # (!\sub_sig|Add1~21_combout\ & (!\sub_sig|Add1~20\)))) # (!\a~combout\(6) & ((\sub_sig|Add1~21_combout\ & (!\sub_sig|Add1~20\)) # 
-- (!\sub_sig|Add1~21_combout\ & ((\sub_sig|Add1~20\) # (GND)))))
-- \sub_sig|Add1~23\ = CARRY((\a~combout\(6) & (!\sub_sig|Add1~21_combout\ & !\sub_sig|Add1~20\)) # (!\a~combout\(6) & ((!\sub_sig|Add1~20\) # (!\sub_sig|Add1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \sub_sig|Add1~21_combout\,
	datad => VCC,
	cin => \sub_sig|Add1~20\,
	combout => \sub_sig|Add1~22_combout\,
	cout => \sub_sig|Add1~23\);

-- Location: LCCOMB_X21_Y32_N16
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\s~combout\(2) & (!\s~combout\(1) & (\Mux1~0_combout\ $ (\b~combout\(6))))) # (!\s~combout\(2) & (\Mux1~0_combout\ & (\b~combout\(6) & \s~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \s~combout\(2),
	datac => \b~combout\(6),
	datad => \s~combout\(1),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X21_Y32_N18
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\) # ((\sub_sig|Add1~0_combout\ & (\sub_sig|Add1~22_combout\ & !\s~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~0_combout\,
	datab => \sub_sig|Add1~22_combout\,
	datac => \Mux1~1_combout\,
	datad => \s~combout\(2),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X21_Y32_N12
\Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\s~combout\(3) & (\Mux1~9_combout\ & ((!\s~combout\(2))))) # (!\s~combout\(3) & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \Mux1~2_combout\,
	datac => \s~combout\(3),
	datad => \s~combout\(2),
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X24_Y32_N18
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\a~combout\(7) & ((!\s~combout\(0)) # (!\b~combout\(7)))) # (!\a~combout\(7) & (\b~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datac => \b~combout\(7),
	datad => \s~combout\(0),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X21_Y34_N12
\sub_sig|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~29_combout\ = \b~combout\(7) $ (\s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datad => \s~combout\(1),
	combout => \sub_sig|Add1~29_combout\);

-- Location: LCCOMB_X23_Y32_N20
\sub_sig|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~28_combout\ = (!\s~combout\(2) & (\sub_sig|Add1~0_combout\ & (!\s~combout\(3) & \a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(2),
	datab => \sub_sig|Add1~0_combout\,
	datac => \s~combout\(3),
	datad => \a~combout\(7),
	combout => \sub_sig|Add1~28_combout\);

-- Location: LCCOMB_X22_Y32_N26
\sub_sig|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~30_combout\ = \sub_sig|Add1~29_combout\ $ (\sub_sig|Add1~23\ $ (!\sub_sig|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sub_sig|Add1~29_combout\,
	datad => \sub_sig|Add1~28_combout\,
	cin => \sub_sig|Add1~23\,
	combout => \sub_sig|Add1~30_combout\);

-- Location: LCCOMB_X24_Y32_N20
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\s~combout\(1) & (((\a~combout\(7) & \b~combout\(7))) # (!\s~combout\(0)))) # (!\s~combout\(1) & (((\s~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \b~combout\(7),
	datac => \s~combout\(1),
	datad => \s~combout\(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X24_Y32_N6
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\s~combout\(1) & ((\s~combout\(3)) # (\s~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \s~combout\(0),
	datac => \s~combout\(1),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X24_Y32_N8
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\s~combout\(3) & (((\Mux0~3_combout\)))) # (!\s~combout\(3) & (\Mux0~2_combout\ & ((\sub_sig|Add1~30_combout\) # (\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\(3),
	datab => \sub_sig|Add1~30_combout\,
	datac => \Mux0~2_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X24_Y32_N2
\sub_sig|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_sig|Add1~32_combout\ = (\a~combout\(7) & !\s~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(7),
	datad => \s~combout\(0),
	combout => \sub_sig|Add1~32_combout\);

-- Location: LCCOMB_X24_Y32_N4
\Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~4_combout\ & (((\sub_sig|Add1~32_combout\) # (!\s~combout\(3))))) # (!\Mux0~4_combout\ & (\sub_sig|Add1~27_combout\ & (\s~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_sig|Add1~27_combout\,
	datab => \Mux0~4_combout\,
	datac => \s~combout\(3),
	datad => \sub_sig|Add1~32_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X24_Y32_N22
\Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~0_combout\ & ((\Mux0~1_combout\) # ((\Mux0~5_combout\ & !\s~combout\(2))))) # (!\Mux0~0_combout\ & (((\Mux0~5_combout\ & !\s~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~5_combout\,
	datad => \s~combout\(2),
	combout => \Mux0~6_combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : cycloneii_io
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
	datain => \Mux7~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : cycloneii_io
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
	datain => \Mux6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : cycloneii_io
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
	datain => \Mux5~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : cycloneii_io
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
	datain => \Mux4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[4]~I\ : cycloneii_io
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
	datain => \Mux3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[5]~I\ : cycloneii_io
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
	datain => \Mux2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[6]~I\ : cycloneii_io
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
	datain => \Mux1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[7]~I\ : cycloneii_io
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
	datain => \Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(7));
END structure;


