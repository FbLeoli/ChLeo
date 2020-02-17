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

-- DATE "10/09/2019 14:42:38"

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

ENTITY 	comp8 IS
    PORT (
	a : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	b : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	result : OUT std_logic_vector(1 DOWNTO 0)
	);
END comp8;

-- Design Ports Information
-- result[0]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF comp8 IS
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
SIGNAL ww_result : std_logic_vector(1 DOWNTO 0);
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \result[0]$latch~combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \result[1]$latch~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_a <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(a);
ww_b <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(b);
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y14_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\b~combout\(1) & (\a~combout\(1) & (\a~combout\(0) $ (!\b~combout\(0))))) # (!\b~combout\(1) & (!\a~combout\(1) & (\a~combout\(0) $ (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	combout => \Equal0~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y16_N16
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\b~combout\(0) & \a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X64_Y16_N18
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\a~combout\(1) & (\b~combout\(1) & !\LessThan0~1_cout\)) # (!\a~combout\(1) & ((\b~combout\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X64_Y16_N20
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\b~combout\(2) & (\a~combout\(2) & !\LessThan0~3_cout\)) # (!\b~combout\(2) & ((\a~combout\(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X64_Y16_N22
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\a~combout\(3) & (\b~combout\(3) & !\LessThan0~5_cout\)) # (!\a~combout\(3) & ((\b~combout\(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X64_Y16_N24
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\a~combout\(4) & ((!\LessThan0~7_cout\) # (!\b~combout\(4)))) # (!\a~combout\(4) & (!\b~combout\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X64_Y16_N26
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\a~combout\(5) & (\b~combout\(5) & !\LessThan0~9_cout\)) # (!\a~combout\(5) & ((\b~combout\(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X64_Y16_N28
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\a~combout\(6) & ((!\LessThan0~11_cout\) # (!\b~combout\(6)))) # (!\a~combout\(6) & (!\b~combout\(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \b~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X64_Y16_N30
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\b~combout\(7) & ((\LessThan0~13_cout\) # (!\a~combout\(7)))) # (!\b~combout\(7) & (\LessThan0~13_cout\ & !\a~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datad => \a~combout\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y14_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\a~combout\(0) & \b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X64_Y14_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\a~combout\(1) & ((!\LessThan1~1_cout\) # (!\b~combout\(1)))) # (!\a~combout\(1) & (!\b~combout\(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X64_Y14_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\b~combout\(2) & ((!\LessThan1~3_cout\) # (!\a~combout\(2)))) # (!\b~combout\(2) & (!\a~combout\(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X64_Y14_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\b~combout\(3) & (\a~combout\(3) & !\LessThan1~5_cout\)) # (!\b~combout\(3) & ((\a~combout\(3)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \a~combout\(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X64_Y14_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\b~combout\(4) & ((!\LessThan1~7_cout\) # (!\a~combout\(4)))) # (!\b~combout\(4) & (!\a~combout\(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X64_Y14_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\a~combout\(5) & ((!\LessThan1~9_cout\) # (!\b~combout\(5)))) # (!\a~combout\(5) & (!\b~combout\(5) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b~combout\(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X64_Y14_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\b~combout\(6) & ((!\LessThan1~11_cout\) # (!\a~combout\(6)))) # (!\b~combout\(6) & (!\a~combout\(6) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X64_Y14_N14
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\b~combout\(7) & (\LessThan1~13_cout\ & \a~combout\(7))) # (!\b~combout\(7) & ((\LessThan1~13_cout\) # (\a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datad => \a~combout\(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X64_Y14_N26
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\LessThan1~14_combout\) # ((!\Equal0~4_combout\ & \LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \LessThan0~14_combout\,
	datac => \LessThan1~14_combout\,
	combout => \comb~0_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y14_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\a~combout\(2) & (\b~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3))))) # (!\a~combout\(2) & (!\b~combout\(2) & (\a~combout\(3) $ (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(3),
	datac => \b~combout\(3),
	datad => \b~combout\(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X64_Y14_N20
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\a~combout\(5) & (\b~combout\(5) & (\a~combout\(4) $ (!\b~combout\(4))))) # (!\a~combout\(5) & (!\b~combout\(5) & (\a~combout\(4) $ (!\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \b~combout\(5),
	datac => \a~combout\(4),
	datad => \b~combout\(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X64_Y14_N30
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\a~combout\(7) & (\b~combout\(7) & (\a~combout\(6) $ (!\b~combout\(6))))) # (!\a~combout\(7) & (!\b~combout\(7) & (\a~combout\(6) $ (!\b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \a~combout\(6),
	datac => \b~combout\(7),
	datad => \b~combout\(6),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X64_Y14_N16
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X64_Y14_N22
\result[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[0]$latch~combout\ = (!\comb~0_combout\ & ((\Equal0~4_combout\) # (\result[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \Equal0~4_combout\,
	datad => \result[0]$latch~combout\,
	combout => \result[0]$latch~combout\);

-- Location: LCCOMB_X64_Y14_N28
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\Equal0~4_combout\) # (\LessThan1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \LessThan1~14_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X64_Y16_N0
\result[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \result[1]$latch~combout\ = (!\comb~1_combout\ & ((\LessThan0~14_combout\) # (\result[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~14_combout\,
	datac => \comb~1_combout\,
	datad => \result[1]$latch~combout\,
	combout => \result[1]$latch~combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \result[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \result[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));
END structure;


