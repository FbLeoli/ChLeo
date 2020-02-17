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

-- DATE "10/23/2019 14:13:50"

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

ENTITY 	PC IS
    PORT (
	load : IN std_logic;
	clear : IN std_logic;
	os : IN std_logic_vector(10 DOWNTO 0);
	clock : IN std_logic;
	f : IN std_logic;
	address_prog : BUFFER std_logic_vector(10 DOWNTO 0)
	);
END PC;

-- Design Ports Information
-- address_prog[0]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[1]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[2]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[3]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[4]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[5]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[7]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[8]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[9]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address_prog[10]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clear	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[1]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[2]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[3]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[4]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[5]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[6]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[7]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[8]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[9]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- os[10]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_os : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_address_prog : std_logic_vector(10 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \address_prog[0]~11_combout\ : std_logic;
SIGNAL \clear~combout\ : std_logic;
SIGNAL \load~combout\ : std_logic;
SIGNAL \address_prog[0]~13_combout\ : std_logic;
SIGNAL \address_prog[0]~reg0_regout\ : std_logic;
SIGNAL \f~combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \address_prog[0]~12\ : std_logic;
SIGNAL \address_prog[1]~14_combout\ : std_logic;
SIGNAL \address_prog[1]~reg0_regout\ : std_logic;
SIGNAL \address_prog[1]~15\ : std_logic;
SIGNAL \address_prog[2]~16_combout\ : std_logic;
SIGNAL \address_prog[2]~reg0_regout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \address_prog[2]~17\ : std_logic;
SIGNAL \address_prog[3]~18_combout\ : std_logic;
SIGNAL \address_prog[3]~reg0_regout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \address_prog[3]~19\ : std_logic;
SIGNAL \address_prog[4]~20_combout\ : std_logic;
SIGNAL \address_prog[4]~reg0_regout\ : std_logic;
SIGNAL \address_prog[4]~21\ : std_logic;
SIGNAL \address_prog[5]~22_combout\ : std_logic;
SIGNAL \address_prog[5]~reg0_regout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \address_prog[5]~23\ : std_logic;
SIGNAL \address_prog[6]~24_combout\ : std_logic;
SIGNAL \address_prog[6]~reg0_regout\ : std_logic;
SIGNAL \address_prog[6]~25\ : std_logic;
SIGNAL \address_prog[7]~26_combout\ : std_logic;
SIGNAL \address_prog[7]~reg0_regout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \address_prog[7]~27\ : std_logic;
SIGNAL \address_prog[8]~28_combout\ : std_logic;
SIGNAL \address_prog[8]~reg0_regout\ : std_logic;
SIGNAL \address_prog[8]~29\ : std_logic;
SIGNAL \address_prog[9]~30_combout\ : std_logic;
SIGNAL \address_prog[9]~reg0_regout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \address_prog[9]~31\ : std_logic;
SIGNAL \address_prog[10]~32_combout\ : std_logic;
SIGNAL \address_prog[10]~reg0_regout\ : std_logic;
SIGNAL \os~combout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_clear~combout\ : std_logic;

BEGIN

ww_load <= load;
ww_clear <= clear;
ww_os <= os;
ww_clock <= clock;
ww_f <= f;
address_prog <= ww_address_prog;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_clear~combout\ <= NOT \clear~combout\;

-- Location: LCCOMB_X64_Y33_N28
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\os~combout\(0)) # (!\f~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f~combout\,
	datac => \os~combout\(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X64_Y32_N14
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\f~combout\ & \os~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(2),
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X64_Y32_N8
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\f~combout\ & \os~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(5),
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X64_Y32_N10
\Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\f~combout\ & \os~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(7),
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X64_Y32_N28
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\f~combout\ & \os~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(9),
	combout => \Add0~9_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[0]~I\ : cycloneii_io
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
	padio => ww_os(0),
	combout => \os~combout\(0));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[2]~I\ : cycloneii_io
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
	padio => ww_os(2),
	combout => \os~combout\(2));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[5]~I\ : cycloneii_io
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
	padio => ww_os(5),
	combout => \os~combout\(5));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[7]~I\ : cycloneii_io
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
	padio => ww_os(7),
	combout => \os~combout\(7));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[9]~I\ : cycloneii_io
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
	padio => ww_os(9),
	combout => \os~combout\(9));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y33_N4
\address_prog[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[0]~11_combout\ = (\Add0~0_combout\ & (\address_prog[0]~reg0_regout\ $ (VCC))) # (!\Add0~0_combout\ & (\address_prog[0]~reg0_regout\ & VCC))
-- \address_prog[0]~12\ = CARRY((\Add0~0_combout\ & \address_prog[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \address_prog[0]~reg0_regout\,
	datad => VCC,
	combout => \address_prog[0]~11_combout\,
	cout => \address_prog[0]~12\);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clear~I\ : cycloneii_io
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
	padio => ww_clear,
	combout => \clear~combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load~I\ : cycloneii_io
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
	padio => ww_load,
	combout => \load~combout\);

-- Location: LCCOMB_X64_Y33_N2
\address_prog[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[0]~13_combout\ = (\load~combout\) # (!\clear~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~combout\,
	datad => \clear~combout\,
	combout => \address_prog[0]~13_combout\);

-- Location: LCFF_X64_Y33_N5
\address_prog[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[0]~11_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[0]~reg0_regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f~I\ : cycloneii_io
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
	padio => ww_f,
	combout => \f~combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[1]~I\ : cycloneii_io
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
	padio => ww_os(1),
	combout => \os~combout\(1));

-- Location: LCCOMB_X64_Y32_N12
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\f~combout\ & \os~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(1),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X64_Y33_N6
\address_prog[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[1]~14_combout\ = (\address_prog[1]~reg0_regout\ & ((\Add0~1_combout\ & (\address_prog[0]~12\ & VCC)) # (!\Add0~1_combout\ & (!\address_prog[0]~12\)))) # (!\address_prog[1]~reg0_regout\ & ((\Add0~1_combout\ & (!\address_prog[0]~12\)) # 
-- (!\Add0~1_combout\ & ((\address_prog[0]~12\) # (GND)))))
-- \address_prog[1]~15\ = CARRY((\address_prog[1]~reg0_regout\ & (!\Add0~1_combout\ & !\address_prog[0]~12\)) # (!\address_prog[1]~reg0_regout\ & ((!\address_prog[0]~12\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_prog[1]~reg0_regout\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \address_prog[0]~12\,
	combout => \address_prog[1]~14_combout\,
	cout => \address_prog[1]~15\);

-- Location: LCFF_X64_Y33_N7
\address_prog[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[1]~14_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[1]~reg0_regout\);

-- Location: LCCOMB_X64_Y33_N8
\address_prog[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[2]~16_combout\ = ((\Add0~2_combout\ $ (\address_prog[2]~reg0_regout\ $ (!\address_prog[1]~15\)))) # (GND)
-- \address_prog[2]~17\ = CARRY((\Add0~2_combout\ & ((\address_prog[2]~reg0_regout\) # (!\address_prog[1]~15\))) # (!\Add0~2_combout\ & (\address_prog[2]~reg0_regout\ & !\address_prog[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \address_prog[2]~reg0_regout\,
	datad => VCC,
	cin => \address_prog[1]~15\,
	combout => \address_prog[2]~16_combout\,
	cout => \address_prog[2]~17\);

-- Location: LCFF_X64_Y33_N9
\address_prog[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[2]~16_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[2]~reg0_regout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[3]~I\ : cycloneii_io
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
	padio => ww_os(3),
	combout => \os~combout\(3));

-- Location: LCCOMB_X64_Y32_N0
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\f~combout\ & \os~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(3),
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X64_Y33_N10
\address_prog[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[3]~18_combout\ = (\address_prog[3]~reg0_regout\ & ((\Add0~3_combout\ & (\address_prog[2]~17\ & VCC)) # (!\Add0~3_combout\ & (!\address_prog[2]~17\)))) # (!\address_prog[3]~reg0_regout\ & ((\Add0~3_combout\ & (!\address_prog[2]~17\)) # 
-- (!\Add0~3_combout\ & ((\address_prog[2]~17\) # (GND)))))
-- \address_prog[3]~19\ = CARRY((\address_prog[3]~reg0_regout\ & (!\Add0~3_combout\ & !\address_prog[2]~17\)) # (!\address_prog[3]~reg0_regout\ & ((!\address_prog[2]~17\) # (!\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_prog[3]~reg0_regout\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \address_prog[2]~17\,
	combout => \address_prog[3]~18_combout\,
	cout => \address_prog[3]~19\);

-- Location: LCFF_X64_Y33_N11
\address_prog[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[3]~18_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[3]~reg0_regout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[4]~I\ : cycloneii_io
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
	padio => ww_os(4),
	combout => \os~combout\(4));

-- Location: LCCOMB_X64_Y32_N22
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\os~combout\(4) & \f~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \os~combout\(4),
	datac => \f~combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X64_Y33_N12
\address_prog[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[4]~20_combout\ = ((\address_prog[4]~reg0_regout\ $ (\Add0~4_combout\ $ (!\address_prog[3]~19\)))) # (GND)
-- \address_prog[4]~21\ = CARRY((\address_prog[4]~reg0_regout\ & ((\Add0~4_combout\) # (!\address_prog[3]~19\))) # (!\address_prog[4]~reg0_regout\ & (\Add0~4_combout\ & !\address_prog[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_prog[4]~reg0_regout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \address_prog[3]~19\,
	combout => \address_prog[4]~20_combout\,
	cout => \address_prog[4]~21\);

-- Location: LCFF_X64_Y33_N13
\address_prog[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[4]~20_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[4]~reg0_regout\);

-- Location: LCCOMB_X64_Y33_N14
\address_prog[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[5]~22_combout\ = (\Add0~5_combout\ & ((\address_prog[5]~reg0_regout\ & (\address_prog[4]~21\ & VCC)) # (!\address_prog[5]~reg0_regout\ & (!\address_prog[4]~21\)))) # (!\Add0~5_combout\ & ((\address_prog[5]~reg0_regout\ & 
-- (!\address_prog[4]~21\)) # (!\address_prog[5]~reg0_regout\ & ((\address_prog[4]~21\) # (GND)))))
-- \address_prog[5]~23\ = CARRY((\Add0~5_combout\ & (!\address_prog[5]~reg0_regout\ & !\address_prog[4]~21\)) # (!\Add0~5_combout\ & ((!\address_prog[4]~21\) # (!\address_prog[5]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \address_prog[5]~reg0_regout\,
	datad => VCC,
	cin => \address_prog[4]~21\,
	combout => \address_prog[5]~22_combout\,
	cout => \address_prog[5]~23\);

-- Location: LCFF_X64_Y33_N15
\address_prog[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[5]~22_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[5]~reg0_regout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[6]~I\ : cycloneii_io
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
	padio => ww_os(6),
	combout => \os~combout\(6));

-- Location: LCCOMB_X64_Y33_N26
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\f~combout\ & \os~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(6),
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X64_Y33_N16
\address_prog[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[6]~24_combout\ = ((\address_prog[6]~reg0_regout\ $ (\Add0~6_combout\ $ (!\address_prog[5]~23\)))) # (GND)
-- \address_prog[6]~25\ = CARRY((\address_prog[6]~reg0_regout\ & ((\Add0~6_combout\) # (!\address_prog[5]~23\))) # (!\address_prog[6]~reg0_regout\ & (\Add0~6_combout\ & !\address_prog[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_prog[6]~reg0_regout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \address_prog[5]~23\,
	combout => \address_prog[6]~24_combout\,
	cout => \address_prog[6]~25\);

-- Location: LCFF_X64_Y33_N17
\address_prog[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[6]~24_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[6]~reg0_regout\);

-- Location: LCCOMB_X64_Y33_N18
\address_prog[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[7]~26_combout\ = (\Add0~7_combout\ & ((\address_prog[7]~reg0_regout\ & (\address_prog[6]~25\ & VCC)) # (!\address_prog[7]~reg0_regout\ & (!\address_prog[6]~25\)))) # (!\Add0~7_combout\ & ((\address_prog[7]~reg0_regout\ & 
-- (!\address_prog[6]~25\)) # (!\address_prog[7]~reg0_regout\ & ((\address_prog[6]~25\) # (GND)))))
-- \address_prog[7]~27\ = CARRY((\Add0~7_combout\ & (!\address_prog[7]~reg0_regout\ & !\address_prog[6]~25\)) # (!\Add0~7_combout\ & ((!\address_prog[6]~25\) # (!\address_prog[7]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \address_prog[7]~reg0_regout\,
	datad => VCC,
	cin => \address_prog[6]~25\,
	combout => \address_prog[7]~26_combout\,
	cout => \address_prog[7]~27\);

-- Location: LCFF_X64_Y33_N19
\address_prog[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[7]~26_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[7]~reg0_regout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[8]~I\ : cycloneii_io
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
	padio => ww_os(8),
	combout => \os~combout\(8));

-- Location: LCCOMB_X64_Y33_N0
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\f~combout\ & \os~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(8),
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X64_Y33_N20
\address_prog[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[8]~28_combout\ = ((\address_prog[8]~reg0_regout\ $ (\Add0~8_combout\ $ (!\address_prog[7]~27\)))) # (GND)
-- \address_prog[8]~29\ = CARRY((\address_prog[8]~reg0_regout\ & ((\Add0~8_combout\) # (!\address_prog[7]~27\))) # (!\address_prog[8]~reg0_regout\ & (\Add0~8_combout\ & !\address_prog[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_prog[8]~reg0_regout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \address_prog[7]~27\,
	combout => \address_prog[8]~28_combout\,
	cout => \address_prog[8]~29\);

-- Location: LCFF_X64_Y33_N21
\address_prog[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[8]~28_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[8]~reg0_regout\);

-- Location: LCCOMB_X64_Y33_N22
\address_prog[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[9]~30_combout\ = (\Add0~9_combout\ & ((\address_prog[9]~reg0_regout\ & (\address_prog[8]~29\ & VCC)) # (!\address_prog[9]~reg0_regout\ & (!\address_prog[8]~29\)))) # (!\Add0~9_combout\ & ((\address_prog[9]~reg0_regout\ & 
-- (!\address_prog[8]~29\)) # (!\address_prog[9]~reg0_regout\ & ((\address_prog[8]~29\) # (GND)))))
-- \address_prog[9]~31\ = CARRY((\Add0~9_combout\ & (!\address_prog[9]~reg0_regout\ & !\address_prog[8]~29\)) # (!\Add0~9_combout\ & ((!\address_prog[8]~29\) # (!\address_prog[9]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \address_prog[9]~reg0_regout\,
	datad => VCC,
	cin => \address_prog[8]~29\,
	combout => \address_prog[9]~30_combout\,
	cout => \address_prog[9]~31\);

-- Location: LCFF_X64_Y33_N23
\address_prog[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[9]~30_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[9]~reg0_regout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\os[10]~I\ : cycloneii_io
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
	padio => ww_os(10),
	combout => \os~combout\(10));

-- Location: LCCOMB_X64_Y33_N30
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\f~combout\ & \os~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f~combout\,
	datad => \os~combout\(10),
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X64_Y33_N24
\address_prog[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \address_prog[10]~32_combout\ = \address_prog[10]~reg0_regout\ $ (\Add0~10_combout\ $ (!\address_prog[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address_prog[10]~reg0_regout\,
	datab => \Add0~10_combout\,
	cin => \address_prog[9]~31\,
	combout => \address_prog[10]~32_combout\);

-- Location: LCFF_X64_Y33_N25
\address_prog[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \address_prog[10]~32_combout\,
	sclr => \ALT_INV_clear~combout\,
	ena => \address_prog[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \address_prog[10]~reg0_regout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[0]~I\ : cycloneii_io
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
	datain => \address_prog[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(0));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[1]~I\ : cycloneii_io
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
	datain => \address_prog[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(1));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[2]~I\ : cycloneii_io
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
	datain => \address_prog[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(2));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[3]~I\ : cycloneii_io
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
	datain => \address_prog[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(3));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[4]~I\ : cycloneii_io
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
	datain => \address_prog[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(4));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[5]~I\ : cycloneii_io
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
	datain => \address_prog[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(5));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[6]~I\ : cycloneii_io
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
	datain => \address_prog[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(6));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[7]~I\ : cycloneii_io
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
	datain => \address_prog[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(7));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[8]~I\ : cycloneii_io
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
	datain => \address_prog[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(8));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[9]~I\ : cycloneii_io
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
	datain => \address_prog[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(9));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address_prog[10]~I\ : cycloneii_io
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
	datain => \address_prog[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address_prog(10));
END structure;


