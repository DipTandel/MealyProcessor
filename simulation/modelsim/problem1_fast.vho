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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/02/2023 15:57:10"

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

ENTITY 	problem1 IS
    PORT (
	R_firstfour : OUT std_logic_vector(0 TO 6);
	clock : IN std_logic;
	Reset_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Reset_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	Enable_Decoder : IN std_logic;
	data_in : IN std_logic;
	FSM_reset : IN std_logic;
	R_last_four : OUT std_logic_vector(0 TO 6);
	sign : OUT std_logic_vector(0 TO 6);
	student_id : OUT std_logic_vector(0 TO 6)
	);
END problem1;

-- Design Ports Information
-- R_firstfour[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_firstfour[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_firstfour[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_firstfour[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_firstfour[4]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_firstfour[5]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_firstfour[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[0]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[2]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[4]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[5]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable_Decoder	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF problem1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_firstfour : std_logic_vector(0 TO 6);
SIGNAL ww_clock : std_logic;
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Enable_Decoder : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_R_last_four : std_logic_vector(0 TO 6);
SIGNAL ww_sign : std_logic_vector(0 TO 6);
SIGNAL ww_student_id : std_logic_vector(0 TO 6);
SIGNAL \Reset_A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Selector8~8_combout\ : std_logic;
SIGNAL \inst|Selector8~11_combout\ : std_logic;
SIGNAL \inst|Result~8_combout\ : std_logic;
SIGNAL \inst|Result~9_combout\ : std_logic;
SIGNAL \inst|Result~11_combout\ : std_logic;
SIGNAL \inst|Result~13_combout\ : std_logic;
SIGNAL \inst|Result~17_combout\ : std_logic;
SIGNAL \inst|Selector8~16_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Result~7_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Result~6_combout\ : std_logic;
SIGNAL \inst3|yfsm.s8~feeder_combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst3|yfsm.s8~regout\ : std_logic;
SIGNAL \inst3|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~regout\ : std_logic;
SIGNAL \inst3|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s1~regout\ : std_logic;
SIGNAL \inst3|yfsm.s2~regout\ : std_logic;
SIGNAL \inst3|yfsm.s3~regout\ : std_logic;
SIGNAL \inst3|yfsm.s4~regout\ : std_logic;
SIGNAL \inst3|yfsm.s5~regout\ : std_logic;
SIGNAL \inst3|yfsm.s6~regout\ : std_logic;
SIGNAL \inst3|yfsm.s7~regout\ : std_logic;
SIGNAL \Enable_Decoder~combout\ : std_logic;
SIGNAL \inst3|WideOr12~0_combout\ : std_logic;
SIGNAL \inst3|WideOr10~0_combout\ : std_logic;
SIGNAL \inst3|WideOr11~combout\ : std_logic;
SIGNAL \inst|Result[3]~3_combout\ : std_logic;
SIGNAL \inst|Result[3]~4_combout\ : std_logic;
SIGNAL \inst|Selector7~4_combout\ : std_logic;
SIGNAL \inst|Result[3]~0_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|Result[3]~2_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|Selector7~3_combout\ : std_logic;
SIGNAL \inst|Selector7~5_combout\ : std_logic;
SIGNAL \inst|Selector8~9_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Selector8~10_combout\ : std_logic;
SIGNAL \inst|Selector8~12_combout\ : std_logic;
SIGNAL \inst|Selector8~13_combout\ : std_logic;
SIGNAL \inst|Selector8~14_combout\ : std_logic;
SIGNAL \inst|Selector8~15_combout\ : std_logic;
SIGNAL \inst|Result~10_combout\ : std_logic;
SIGNAL \inst|Result[3]~5_combout\ : std_logic;
SIGNAL \inst|Selector5~4_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Result[3]~1_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst|Selector5~3_combout\ : std_logic;
SIGNAL \inst|Selector5~5_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Selector6~4_combout\ : std_logic;
SIGNAL \inst|Selector6~5_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst|Selector6~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Result~19_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Result~18_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Selector1~4_combout\ : std_logic;
SIGNAL \inst|Selector1~5_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst|Selector1~3_combout\ : std_logic;
SIGNAL \inst|Result~12_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Selector4~4_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst|Selector4~5_combout\ : std_logic;
SIGNAL \inst|Result~16_combout\ : std_logic;
SIGNAL \inst|Selector2~4_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst|Selector2~5_combout\ : std_logic;
SIGNAL \inst|Result~15_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Result~14_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Selector3~4_combout\ : std_logic;
SIGNAL \inst|Selector3~5_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst|Selector3~3_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \clock~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|Neg~regout\ : std_logic;
SIGNAL \inst3|WideOr12~combout\ : std_logic;
SIGNAL \inst6|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~2_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|WideOr14~combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~2_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~clkctrl_outclk\ : std_logic;

BEGIN

R_firstfour <= ww_R_firstfour;
ww_clock <= clock;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_B <= B;
ww_Enable_Decoder <= Enable_Decoder;
ww_data_in <= data_in;
ww_FSM_reset <= FSM_reset;
R_last_four <= ww_R_last_four;
sign <= ww_sign;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset_A~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_A~combout\);

\Reset_B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_B~combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~clk_delay_ctrl_clkout\);
\inst6|ALT_INV_Mux6~0_combout\ <= NOT \inst6|Mux6~0_combout\;
\inst6|ALT_INV_Mux5~0_combout\ <= NOT \inst6|Mux5~0_combout\;
\inst6|ALT_INV_Mux3~0_combout\ <= NOT \inst6|Mux3~0_combout\;
\inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst7|Mux6~0_combout\;
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\ALT_INV_Reset_B~clkctrl_outclk\ <= NOT \Reset_B~clkctrl_outclk\;
\ALT_INV_Reset_A~clkctrl_outclk\ <= NOT \Reset_A~clkctrl_outclk\;

-- Location: LCCOMB_X30_Y29_N4
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst10|Q\(2) $ (\inst1|Q\(2) $ (\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst10|Q\(2) & (\inst1|Q\(2) & !\inst|Add2~3\)) # (!\inst10|Q\(2) & ((\inst1|Q\(2)) # (!\inst|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(2),
	datab => \inst1|Q\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X30_Y29_N22
\inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst10|Q\(3) & ((\inst1|Q\(3) & (!\inst|Add1~5\)) # (!\inst1|Q\(3) & (\inst|Add1~5\ & VCC)))) # (!\inst10|Q\(3) & ((\inst1|Q\(3) & ((\inst|Add1~5\) # (GND))) # (!\inst1|Q\(3) & (!\inst|Add1~5\))))
-- \inst|Add1~7\ = CARRY((\inst10|Q\(3) & (\inst1|Q\(3) & !\inst|Add1~5\)) # (!\inst10|Q\(3) & ((\inst1|Q\(3)) # (!\inst|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X31_Y29_N20
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst1|Q\(3) & ((\inst10|Q\(3) & (\inst|Add0~5\ & VCC)) # (!\inst10|Q\(3) & (!\inst|Add0~5\)))) # (!\inst1|Q\(3) & ((\inst10|Q\(3) & (!\inst|Add0~5\)) # (!\inst10|Q\(3) & ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst1|Q\(3) & (!\inst10|Q\(3) & !\inst|Add0~5\)) # (!\inst1|Q\(3) & ((!\inst|Add0~5\) # (!\inst10|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst10|Q\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X30_Y29_N12
\inst|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = ((\inst10|Q\(6) $ (\inst1|Q\(6) $ (\inst|Add2~11\)))) # (GND)
-- \inst|Add2~13\ = CARRY((\inst10|Q\(6) & (\inst1|Q\(6) & !\inst|Add2~11\)) # (!\inst10|Q\(6) & ((\inst1|Q\(6)) # (!\inst|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(6),
	datab => \inst1|Q\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X31_Y29_N26
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = ((\inst1|Q\(6) $ (\inst10|Q\(6) $ (!\inst|Add0~11\)))) # (GND)
-- \inst|Add0~13\ = CARRY((\inst1|Q\(6) & ((\inst10|Q\(6)) # (!\inst|Add0~11\))) # (!\inst1|Q\(6) & (\inst10|Q\(6) & !\inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst10|Q\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X28_Y30_N12
\inst|Selector8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~8_combout\ = (\inst3|yfsm.s4~regout\ & (!\inst10|Q\(0) & (!\inst3|yfsm.s7~regout\ & !\inst1|Q\(0)))) # (!\inst3|yfsm.s4~regout\ & (\inst3|yfsm.s7~regout\ & ((\inst10|Q\(0)) # (\inst1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(0),
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst3|yfsm.s7~regout\,
	datad => \inst1|Q\(0),
	combout => \inst|Selector8~8_combout\);

-- Location: LCCOMB_X28_Y30_N16
\inst|Selector8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~11_combout\ = (\inst3|WideOr10~0_combout\ & (((\inst3|WideOr11~combout\)))) # (!\inst3|WideOr10~0_combout\ & (\inst1|Q\(0) & ((\inst10|Q\(0)) # (!\inst3|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(0),
	datab => \inst1|Q\(0),
	datac => \inst3|WideOr11~combout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst|Selector8~11_combout\);

-- Location: LCCOMB_X31_Y29_N10
\inst|Result~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~8_combout\ = \inst10|Q\(2) $ (\inst1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(2),
	datad => \inst1|Q\(2),
	combout => \inst|Result~8_combout\);

-- Location: LCCOMB_X31_Y29_N2
\inst|Result~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~9_combout\ = (\inst10|Q\(2)) # (\inst1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(2),
	datad => \inst1|Q\(2),
	combout => \inst|Result~9_combout\);

-- Location: LCCOMB_X28_Y29_N16
\inst|Result~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~11_combout\ = (\inst1|Q\(3)) # (\inst10|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datac => \inst10|Q\(3),
	combout => \inst|Result~11_combout\);

-- Location: LCCOMB_X28_Y30_N22
\inst|Result~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~13_combout\ = (\inst1|Q\(4)) # (\inst10|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datad => \inst10|Q\(4),
	combout => \inst|Result~13_combout\);

-- Location: LCCOMB_X27_Y29_N18
\inst|Result~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~17_combout\ = (\inst10|Q\(6)) # (\inst1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(6),
	datac => \inst1|Q\(6),
	combout => \inst|Result~17_combout\);

-- Location: LCCOMB_X28_Y30_N4
\inst|Selector8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~16_combout\ = (\inst10|Q\(0) & (!\inst3|yfsm.s1~regout\ & (!\inst3|yfsm.s2~regout\ & !\inst3|yfsm.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(0),
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s2~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst|Selector8~16_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_B~I\ : cycloneii_io
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
	padio => ww_Reset_B,
	combout => \Reset_B~combout\);

-- Location: CLKCTRL_G11
\Reset_B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~clkctrl_outclk\);

-- Location: LCFF_X30_Y29_N3
\inst10|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(1));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_A~I\ : cycloneii_io
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
	padio => ww_Reset_A,
	combout => \Reset_A~combout\);

-- Location: CLKCTRL_G2
\Reset_A~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_A~clkctrl_outclk\);

-- Location: LCFF_X29_Y29_N31
\inst1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(1));

-- Location: LCCOMB_X30_Y30_N24
\inst|Result~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~7_combout\ = (\inst10|Q\(1)) # (\inst1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(1),
	datad => \inst1|Q\(1),
	combout => \inst|Result~7_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X30_Y29_N17
\inst10|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(0));

-- Location: LCCOMB_X31_Y29_N14
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst1|Q\(0) & (\inst10|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & (\inst10|Q\(0) & VCC))
-- \inst|Add0~1\ = CARRY((\inst1|Q\(0) & \inst10|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst10|Q\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X31_Y29_N16
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst10|Q\(1) & ((\inst1|Q\(1) & (\inst|Add0~1\ & VCC)) # (!\inst1|Q\(1) & (!\inst|Add0~1\)))) # (!\inst10|Q\(1) & ((\inst1|Q\(1) & (!\inst|Add0~1\)) # (!\inst1|Q\(1) & ((\inst|Add0~1\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\inst10|Q\(1) & (!\inst1|Q\(1) & !\inst|Add0~1\)) # (!\inst10|Q\(1) & ((!\inst|Add0~1\) # (!\inst1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X29_Y30_N16
\inst|Result~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~6_combout\ = \inst10|Q\(1) $ (\inst1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(1),
	datac => \inst1|Q\(1),
	combout => \inst|Result~6_combout\);

-- Location: LCCOMB_X27_Y29_N24
\inst3|yfsm.s8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s8~feeder_combout\ = \inst3|yfsm.s7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst3|yfsm.s8~feeder_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_reset~I\ : cycloneii_io
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
	padio => ww_FSM_reset,
	combout => \FSM_reset~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCFF_X27_Y29_N25
\inst3|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s8~feeder_combout\,
	aclr => \FSM_reset~combout\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s8~regout\);

-- Location: LCCOMB_X27_Y29_N8
\inst3|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s0~0_combout\ = !\inst3|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s8~regout\,
	combout => \inst3|yfsm.s0~0_combout\);

-- Location: LCFF_X27_Y29_N9
\inst3|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s0~0_combout\,
	aclr => \FSM_reset~combout\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s0~regout\);

-- Location: LCCOMB_X27_Y29_N2
\inst3|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s1~0_combout\ = !\inst3|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s0~regout\,
	combout => \inst3|yfsm.s1~0_combout\);

-- Location: LCFF_X27_Y29_N3
\inst3|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s1~0_combout\,
	aclr => \FSM_reset~combout\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s1~regout\);

-- Location: LCFF_X28_Y30_N5
\inst3|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s1~regout\,
	aclr => \FSM_reset~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s2~regout\);

-- Location: LCFF_X28_Y30_N23
\inst3|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s2~regout\,
	aclr => \FSM_reset~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s3~regout\);

-- Location: LCFF_X29_Y29_N11
\inst3|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s3~regout\,
	aclr => \FSM_reset~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s4~regout\);

-- Location: LCFF_X29_Y29_N13
\inst3|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s4~regout\,
	aclr => \FSM_reset~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s5~regout\);

-- Location: LCFF_X28_Y30_N29
\inst3|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s5~regout\,
	aclr => \FSM_reset~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s6~regout\);

-- Location: LCFF_X28_Y30_N13
\inst3|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s6~regout\,
	aclr => \FSM_reset~combout\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s7~regout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable_Decoder~I\ : cycloneii_io
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
	padio => ww_Enable_Decoder,
	combout => \Enable_Decoder~combout\);

-- Location: LCCOMB_X28_Y29_N14
\inst3|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr12~0_combout\ = (!\inst3|yfsm.s4~regout\ & !\inst3|yfsm.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst3|WideOr12~0_combout\);

-- Location: LCCOMB_X28_Y30_N0
\inst3|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~0_combout\ = (!\inst3|yfsm.s2~regout\ & !\inst3|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s2~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst3|WideOr10~0_combout\);

-- Location: LCCOMB_X28_Y30_N20
\inst3|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr11~combout\ = (\inst3|yfsm.s1~regout\) # (\inst3|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst3|WideOr11~combout\);

-- Location: LCCOMB_X27_Y29_N6
\inst|Result[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~3_combout\ = (!\inst3|yfsm.s5~regout\ & (\inst3|WideOr12~0_combout\ & (\inst3|WideOr10~0_combout\ & !\inst3|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|WideOr12~0_combout\,
	datac => \inst3|WideOr10~0_combout\,
	datad => \inst3|WideOr11~combout\,
	combout => \inst|Result[3]~3_combout\);

-- Location: LCCOMB_X27_Y29_N16
\inst|Result[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~4_combout\ = (!\inst3|yfsm.s8~regout\ & (\Enable_Decoder~combout\ & ((\inst3|yfsm.s7~regout\) # (!\inst|Result[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \Enable_Decoder~combout\,
	datad => \inst|Result[3]~3_combout\,
	combout => \inst|Result[3]~4_combout\);

-- Location: LCCOMB_X28_Y30_N6
\inst|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~4_combout\ = (\inst|Result[3]~5_combout\ & ((\inst|Add0~2_combout\) # ((\inst|Result[3]~4_combout\)))) # (!\inst|Result[3]~5_combout\ & (((!\inst|Result~6_combout\ & !\inst|Result[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~5_combout\,
	datab => \inst|Add0~2_combout\,
	datac => \inst|Result~6_combout\,
	datad => \inst|Result[3]~4_combout\,
	combout => \inst|Selector7~4_combout\);

-- Location: LCCOMB_X28_Y30_N26
\inst|Result[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~0_combout\ = (\inst3|yfsm.s3~regout\) # ((\inst3|yfsm.s2~regout\ & ((\inst3|yfsm.s1~regout\))) # (!\inst3|yfsm.s2~regout\ & (\inst3|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s6~regout\,
	datab => \inst3|yfsm.s2~regout\,
	datac => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst|Result[3]~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X29_Y29_N5
\inst1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(0));

-- Location: LCCOMB_X30_Y29_N0
\inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst10|Q\(0) & (\inst1|Q\(0) $ (VCC))) # (!\inst10|Q\(0) & ((\inst1|Q\(0)) # (GND)))
-- \inst|Add2~1\ = CARRY((\inst1|Q\(0)) # (!\inst10|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(0),
	datab => \inst1|Q\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X30_Y29_N2
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst1|Q\(1) & ((\inst10|Q\(1) & (!\inst|Add2~1\)) # (!\inst10|Q\(1) & (\inst|Add2~1\ & VCC)))) # (!\inst1|Q\(1) & ((\inst10|Q\(1) & ((\inst|Add2~1\) # (GND))) # (!\inst10|Q\(1) & (!\inst|Add2~1\))))
-- \inst|Add2~3\ = CARRY((\inst1|Q\(1) & (\inst10|Q\(1) & !\inst|Add2~1\)) # (!\inst1|Q\(1) & ((\inst10|Q\(1)) # (!\inst|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst10|Q\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X29_Y29_N3
\inst1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(7));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X30_Y29_N31
\inst10|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(7));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X29_Y29_N23
\inst1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(6));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X29_Y29_N1
\inst1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(5));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X30_Y29_N25
\inst10|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(4));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X29_Y29_N17
\inst1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(3));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCFF_X30_Y29_N21
\inst10|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(2));

-- Location: LCCOMB_X29_Y29_N10
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst10|Q\(0) & !\inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(0),
	datab => \inst1|Q\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y29_N12
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst10|Q\(1) & (\inst1|Q\(1) & !\inst|LessThan0~1_cout\)) # (!\inst10|Q\(1) & ((\inst1|Q\(1)) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y29_N14
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst1|Q\(2) & (\inst10|Q\(2) & !\inst|LessThan0~3_cout\)) # (!\inst1|Q\(2) & ((\inst10|Q\(2)) # (!\inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst10|Q\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y29_N16
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst10|Q\(3) & (\inst1|Q\(3) & !\inst|LessThan0~5_cout\)) # (!\inst10|Q\(3) & ((\inst1|Q\(3)) # (!\inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y29_N18
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst1|Q\(4) & (\inst10|Q\(4) & !\inst|LessThan0~7_cout\)) # (!\inst1|Q\(4) & ((\inst10|Q\(4)) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst10|Q\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y29_N20
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst10|Q\(5) & (\inst1|Q\(5) & !\inst|LessThan0~9_cout\)) # (!\inst10|Q\(5) & ((\inst1|Q\(5)) # (!\inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y29_N22
\inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst10|Q\(6) & ((!\inst|LessThan0~11_cout\) # (!\inst1|Q\(6)))) # (!\inst10|Q\(6) & (!\inst1|Q\(6) & !\inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(6),
	datab => \inst1|Q\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y29_N24
\inst|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\inst1|Q\(7) & (\inst|LessThan0~13_cout\ & \inst10|Q\(7))) # (!\inst1|Q\(7) & ((\inst|LessThan0~13_cout\) # (\inst10|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datad => \inst10|Q\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

-- Location: LCCOMB_X29_Y29_N30
\inst|Result[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~2_combout\ = (\inst3|yfsm.s5~regout\) # ((!\inst3|yfsm.s4~regout\ & \inst|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|yfsm.s4~regout\,
	datad => \inst|LessThan0~14_combout\,
	combout => \inst|Result[3]~2_combout\);

-- Location: LCCOMB_X30_Y29_N16
\inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst10|Q\(0) & ((GND) # (!\inst1|Q\(0)))) # (!\inst10|Q\(0) & (\inst1|Q\(0) $ (GND)))
-- \inst|Add1~1\ = CARRY((\inst10|Q\(0)) # (!\inst1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(0),
	datab => \inst1|Q\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X30_Y29_N18
\inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst1|Q\(1) & ((\inst10|Q\(1) & (!\inst|Add1~1\)) # (!\inst10|Q\(1) & ((\inst|Add1~1\) # (GND))))) # (!\inst1|Q\(1) & ((\inst10|Q\(1) & (\inst|Add1~1\ & VCC)) # (!\inst10|Q\(1) & (!\inst|Add1~1\))))
-- \inst|Add1~3\ = CARRY((\inst1|Q\(1) & ((!\inst|Add1~1\) # (!\inst10|Q\(1)))) # (!\inst1|Q\(1) & (!\inst10|Q\(1) & !\inst|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst10|Q\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X29_Y30_N12
\inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|Result[3]~1_combout\ & (((\inst|Result[3]~2_combout\)))) # (!\inst|Result[3]~1_combout\ & ((\inst|Result[3]~2_combout\ & ((\inst|Add1~2_combout\))) # (!\inst|Result[3]~2_combout\ & (\inst|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~1_combout\,
	datab => \inst|Add2~2_combout\,
	datac => \inst|Result[3]~2_combout\,
	datad => \inst|Add1~2_combout\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X29_Y30_N10
\inst|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~1_combout\ = (\inst|Result[3]~1_combout\ & ((\inst10|Q\(1) & (\inst1|Q\(1) & \inst|Selector7~0_combout\)) # (!\inst10|Q\(1) & (!\inst1|Q\(1) & !\inst|Selector7~0_combout\)))) # (!\inst|Result[3]~1_combout\ & 
-- (((\inst|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~1_combout\,
	datab => \inst10|Q\(1),
	datac => \inst1|Q\(1),
	datad => \inst|Selector7~0_combout\,
	combout => \inst|Selector7~1_combout\);

-- Location: LCCOMB_X29_Y30_N4
\inst|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (\inst|Result[3]~0_combout\ & (((!\inst3|WideOr10~0_combout\)))) # (!\inst|Result[3]~0_combout\ & ((\inst3|WideOr10~0_combout\ & ((\inst|Selector7~1_combout\))) # (!\inst3|WideOr10~0_combout\ & (!\inst1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst|Result[3]~0_combout\,
	datac => \inst3|WideOr10~0_combout\,
	datad => \inst|Selector7~1_combout\,
	combout => \inst|Selector7~2_combout\);

-- Location: LCCOMB_X29_Y30_N22
\inst|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~3_combout\ = (\inst|Result[3]~0_combout\ & ((\inst1|Q\(1) & (!\inst10|Q\(1))) # (!\inst1|Q\(1) & ((\inst10|Q\(1)) # (\inst|Selector7~2_combout\))))) # (!\inst|Result[3]~0_combout\ & (((\inst|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst10|Q\(1),
	datac => \inst|Selector7~2_combout\,
	datad => \inst|Result[3]~0_combout\,
	combout => \inst|Selector7~3_combout\);

-- Location: LCCOMB_X29_Y30_N8
\inst|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~5_combout\ = (\inst|Result[3]~4_combout\ & ((\inst|Selector7~4_combout\ & (\inst|Result~7_combout\)) # (!\inst|Selector7~4_combout\ & ((\inst|Selector7~3_combout\))))) # (!\inst|Result[3]~4_combout\ & (((\inst|Selector7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~4_combout\,
	datab => \inst|Result~7_combout\,
	datac => \inst|Selector7~4_combout\,
	datad => \inst|Selector7~3_combout\,
	combout => \inst|Selector7~5_combout\);

-- Location: LCFF_X29_Y30_N9
\inst|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(1));

-- Location: LCCOMB_X28_Y30_N28
\inst|Selector8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~9_combout\ = (\inst|Selector8~8_combout\ & (!\inst3|yfsm.s1~regout\ & (!\inst3|yfsm.s5~regout\ & \inst3|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~8_combout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst3|WideOr10~0_combout\,
	combout => \inst|Selector8~9_combout\);

-- Location: LCCOMB_X28_Y29_N0
\inst|Selector8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~10_combout\ = (\inst|LessThan0~14_combout\ & (\inst|Add1~0_combout\)) # (!\inst|LessThan0~14_combout\ & ((\inst|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~0_combout\,
	datac => \inst|Add2~0_combout\,
	datad => \inst|LessThan0~14_combout\,
	combout => \inst|Selector8~10_combout\);

-- Location: LCCOMB_X28_Y30_N18
\inst|Selector8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~12_combout\ = (\inst|Selector8~11_combout\ & (\inst3|WideOr10~0_combout\ & ((\inst|Selector8~10_combout\)))) # (!\inst|Selector8~11_combout\ & (((\inst|Add0~0_combout\)) # (!\inst3|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~11_combout\,
	datab => \inst3|WideOr10~0_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|Selector8~10_combout\,
	combout => \inst|Selector8~12_combout\);

-- Location: LCCOMB_X28_Y30_N2
\inst|Selector8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~13_combout\ = (\inst3|yfsm.s5~regout\ & (\inst|Selector8~16_combout\ & (\inst1|Q\(0)))) # (!\inst3|yfsm.s5~regout\ & (((\inst|Selector8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~16_combout\,
	datab => \inst1|Q\(0),
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst|Selector8~12_combout\,
	combout => \inst|Selector8~13_combout\);

-- Location: LCCOMB_X28_Y30_N10
\inst|Selector8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~14_combout\ = (\inst|Selector8~9_combout\) # ((!\inst3|yfsm.s7~regout\ & (!\inst3|yfsm.s4~regout\ & \inst|Selector8~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst|Selector8~9_combout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst|Selector8~13_combout\,
	combout => \inst|Selector8~14_combout\);

-- Location: LCCOMB_X28_Y30_N8
\inst|Selector8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~15_combout\ = (\Enable_Decoder~combout\ & ((\inst3|yfsm.s8~regout\ & (!\inst|Add0~0_combout\)) # (!\inst3|yfsm.s8~regout\ & ((\inst|Selector8~14_combout\))))) # (!\Enable_Decoder~combout\ & (\inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst3|yfsm.s8~regout\,
	datac => \Enable_Decoder~combout\,
	datad => \inst|Selector8~14_combout\,
	combout => \inst|Selector8~15_combout\);

-- Location: LCFF_X28_Y30_N9
\inst|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector8~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(0));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCFF_X30_Y29_N23
\inst10|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(3));

-- Location: LCCOMB_X31_Y29_N0
\inst|Result~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~10_combout\ = \inst1|Q\(3) $ (\inst10|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(3),
	datad => \inst10|Q\(3),
	combout => \inst|Result~10_combout\);

-- Location: LCCOMB_X27_Y29_N10
\inst|Result[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~5_combout\ = ((!\inst3|yfsm.s8~regout\ & ((\inst3|yfsm.s7~regout\) # (\inst|Result[3]~3_combout\)))) # (!\Enable_Decoder~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \Enable_Decoder~combout\,
	datad => \inst|Result[3]~3_combout\,
	combout => \inst|Result[3]~5_combout\);

-- Location: LCCOMB_X31_Y29_N6
\inst|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~4_combout\ = (\inst|Result[3]~5_combout\ & ((\inst|Add0~6_combout\) # ((\inst|Result[3]~4_combout\)))) # (!\inst|Result[3]~5_combout\ & (((!\inst|Result~10_combout\ & !\inst|Result[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|Result~10_combout\,
	datac => \inst|Result[3]~5_combout\,
	datad => \inst|Result[3]~4_combout\,
	combout => \inst|Selector5~4_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X29_Y29_N7
\inst1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(2));

-- Location: LCCOMB_X30_Y29_N6
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst10|Q\(3) & ((\inst1|Q\(3) & (!\inst|Add2~5\)) # (!\inst1|Q\(3) & ((\inst|Add2~5\) # (GND))))) # (!\inst10|Q\(3) & ((\inst1|Q\(3) & (\inst|Add2~5\ & VCC)) # (!\inst1|Q\(3) & (!\inst|Add2~5\))))
-- \inst|Add2~7\ = CARRY((\inst10|Q\(3) & ((!\inst|Add2~5\) # (!\inst1|Q\(3)))) # (!\inst10|Q\(3) & (!\inst1|Q\(3) & !\inst|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X29_Y29_N4
\inst|Result[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~1_combout\ = (\inst3|yfsm.s4~regout\) # (\inst3|yfsm.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst|Result[3]~1_combout\);

-- Location: LCCOMB_X28_Y29_N4
\inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|Result[3]~1_combout\ & (((\inst|Result[3]~2_combout\)))) # (!\inst|Result[3]~1_combout\ & ((\inst|Result[3]~2_combout\ & (\inst|Add1~6_combout\)) # (!\inst|Result[3]~2_combout\ & ((\inst|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|Add2~6_combout\,
	datac => \inst|Result[3]~1_combout\,
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X28_Y29_N30
\inst|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (\inst|Result[3]~1_combout\ & ((\inst10|Q\(3) & (\inst|Selector5~0_combout\ & \inst1|Q\(3))) # (!\inst10|Q\(3) & (!\inst|Selector5~0_combout\ & !\inst1|Q\(3))))) # (!\inst|Result[3]~1_combout\ & 
-- (((\inst|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~1_combout\,
	datab => \inst10|Q\(3),
	datac => \inst|Selector5~0_combout\,
	datad => \inst1|Q\(3),
	combout => \inst|Selector5~1_combout\);

-- Location: LCCOMB_X28_Y29_N28
\inst|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~2_combout\ = (\inst3|WideOr10~0_combout\ & (((!\inst|Result[3]~0_combout\ & \inst|Selector5~1_combout\)))) # (!\inst3|WideOr10~0_combout\ & (((\inst|Result[3]~0_combout\)) # (!\inst1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(3),
	datab => \inst3|WideOr10~0_combout\,
	datac => \inst|Result[3]~0_combout\,
	datad => \inst|Selector5~1_combout\,
	combout => \inst|Selector5~2_combout\);

-- Location: LCCOMB_X28_Y29_N26
\inst|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~3_combout\ = (\inst|Result[3]~0_combout\ & ((\inst10|Q\(3) & (!\inst1|Q\(3))) # (!\inst10|Q\(3) & ((\inst1|Q\(3)) # (\inst|Selector5~2_combout\))))) # (!\inst|Result[3]~0_combout\ & (((\inst|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(3),
	datab => \inst|Result[3]~0_combout\,
	datac => \inst1|Q\(3),
	datad => \inst|Selector5~2_combout\,
	combout => \inst|Selector5~3_combout\);

-- Location: LCCOMB_X28_Y29_N24
\inst|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~5_combout\ = (\inst|Result[3]~4_combout\ & ((\inst|Selector5~4_combout\ & (\inst|Result~11_combout\)) # (!\inst|Selector5~4_combout\ & ((\inst|Selector5~3_combout\))))) # (!\inst|Result[3]~4_combout\ & (((\inst|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~11_combout\,
	datab => \inst|Result[3]~4_combout\,
	datac => \inst|Selector5~4_combout\,
	datad => \inst|Selector5~3_combout\,
	combout => \inst|Selector5~5_combout\);

-- Location: LCFF_X28_Y29_N25
\inst|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(3));

-- Location: LCCOMB_X31_Y29_N18
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\inst1|Q\(2) $ (\inst10|Q\(2) $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\inst1|Q\(2) & ((\inst10|Q\(2)) # (!\inst|Add0~3\))) # (!\inst1|Q\(2) & (\inst10|Q\(2) & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst10|Q\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X30_Y29_N20
\inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = ((\inst10|Q\(2) $ (\inst1|Q\(2) $ (\inst|Add1~3\)))) # (GND)
-- \inst|Add1~5\ = CARRY((\inst10|Q\(2) & ((!\inst|Add1~3\) # (!\inst1|Q\(2)))) # (!\inst10|Q\(2) & (!\inst1|Q\(2) & !\inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(2),
	datab => \inst1|Q\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X29_Y29_N28
\inst|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~4_combout\ = (\inst|Result[3]~1_combout\ & ((\inst1|Q\(2) & (\inst10|Q\(2) & \inst|Result[3]~2_combout\)) # (!\inst1|Q\(2) & (!\inst10|Q\(2) & !\inst|Result[3]~2_combout\)))) # (!\inst|Result[3]~1_combout\ & 
-- (((!\inst|Result[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst10|Q\(2),
	datac => \inst|Result[3]~1_combout\,
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector6~4_combout\);

-- Location: LCCOMB_X29_Y29_N26
\inst|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~5_combout\ = (\inst|Result[3]~1_combout\ & (((\inst|Selector6~4_combout\)))) # (!\inst|Result[3]~1_combout\ & ((\inst|Selector6~4_combout\ & (\inst|Add2~4_combout\)) # (!\inst|Selector6~4_combout\ & ((\inst|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datab => \inst|Add1~4_combout\,
	datac => \inst|Result[3]~1_combout\,
	datad => \inst|Selector6~4_combout\,
	combout => \inst|Selector6~5_combout\);

-- Location: LCCOMB_X29_Y29_N6
\inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|Result[3]~0_combout\ & (!\inst3|WideOr10~0_combout\)) # (!\inst|Result[3]~0_combout\ & ((\inst3|WideOr10~0_combout\ & ((\inst|Selector6~5_combout\))) # (!\inst3|WideOr10~0_combout\ & (!\inst1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~0_combout\,
	datab => \inst3|WideOr10~0_combout\,
	datac => \inst1|Q\(2),
	datad => \inst|Selector6~5_combout\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y29_N8
\inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|Result[3]~0_combout\ & ((\inst10|Q\(2) & (!\inst1|Q\(2))) # (!\inst10|Q\(2) & ((\inst1|Q\(2)) # (\inst|Selector6~0_combout\))))) # (!\inst|Result[3]~0_combout\ & (((\inst|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~0_combout\,
	datab => \inst10|Q\(2),
	datac => \inst1|Q\(2),
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: LCCOMB_X31_Y29_N12
\inst|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~2_combout\ = (\inst|Result[3]~4_combout\ & (((\inst|Result[3]~5_combout\) # (\inst|Selector6~1_combout\)))) # (!\inst|Result[3]~4_combout\ & (!\inst|Result~8_combout\ & (!\inst|Result[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~8_combout\,
	datab => \inst|Result[3]~4_combout\,
	datac => \inst|Result[3]~5_combout\,
	datad => \inst|Selector6~1_combout\,
	combout => \inst|Selector6~2_combout\);

-- Location: LCCOMB_X31_Y29_N8
\inst|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~3_combout\ = (\inst|Result[3]~5_combout\ & ((\inst|Selector6~2_combout\ & (\inst|Result~9_combout\)) # (!\inst|Selector6~2_combout\ & ((\inst|Add0~4_combout\))))) # (!\inst|Result[3]~5_combout\ & (((\inst|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~9_combout\,
	datab => \inst|Add0~4_combout\,
	datac => \inst|Result[3]~5_combout\,
	datad => \inst|Selector6~2_combout\,
	combout => \inst|Selector6~3_combout\);

-- Location: LCFF_X31_Y29_N9
\inst|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(2));

-- Location: LCCOMB_X23_Y33_N0
\inst5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst|Result\(3) & (\inst|Result\(0) & (\inst|Result\(1) $ (\inst|Result\(2))))) # (!\inst|Result\(3) & (!\inst|Result\(1) & (\inst|Result\(0) $ (\inst|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(0),
	datac => \inst|Result\(3),
	datad => \inst|Result\(2),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y33_N18
\inst5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst|Result\(1) & ((\inst|Result\(0) & (\inst|Result\(3))) # (!\inst|Result\(0) & ((\inst|Result\(2)))))) # (!\inst|Result\(1) & (\inst|Result\(2) & (\inst|Result\(0) $ (\inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(0),
	datac => \inst|Result\(3),
	datad => \inst|Result\(2),
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y33_N16
\inst5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst|Result\(3) & (\inst|Result\(2) & ((\inst|Result\(1)) # (!\inst|Result\(0))))) # (!\inst|Result\(3) & (\inst|Result\(1) & (!\inst|Result\(0) & !\inst|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(0),
	datac => \inst|Result\(3),
	datad => \inst|Result\(2),
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y33_N10
\inst5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst|Result\(0) & (\inst|Result\(1) $ (((!\inst|Result\(2)))))) # (!\inst|Result\(0) & ((\inst|Result\(1) & (\inst|Result\(3) & !\inst|Result\(2))) # (!\inst|Result\(1) & (!\inst|Result\(3) & \inst|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(0),
	datac => \inst|Result\(3),
	datad => \inst|Result\(2),
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y33_N8
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst|Result\(1) & (\inst|Result\(0) & (!\inst|Result\(3)))) # (!\inst|Result\(1) & ((\inst|Result\(2) & ((!\inst|Result\(3)))) # (!\inst|Result\(2) & (\inst|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(0),
	datac => \inst|Result\(3),
	datad => \inst|Result\(2),
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y33_N26
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst|Result\(1) & (!\inst|Result\(3) & ((\inst|Result\(0)) # (!\inst|Result\(2))))) # (!\inst|Result\(1) & (\inst|Result\(0) & (\inst|Result\(3) $ (!\inst|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(0),
	datac => \inst|Result\(3),
	datad => \inst|Result\(2),
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y33_N12
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst|Result\(0) & ((\inst|Result\(3)) # (\inst|Result\(1) $ (\inst|Result\(2))))) # (!\inst|Result\(0) & ((\inst|Result\(1)) # (\inst|Result\(3) $ (\inst|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(0),
	datac => \inst|Result\(3),
	datad => \inst|Result\(2),
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y29_N8
\inst|Result~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~19_combout\ = (\inst1|Q\(7)) # (\inst10|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datad => \inst10|Q\(7),
	combout => \inst|Result~19_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X30_Y29_N13
\inst10|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(6));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X30_Y29_N27
\inst10|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|Q\(5));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X29_Y29_N19
\inst1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(4));

-- Location: LCCOMB_X31_Y29_N22
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst10|Q\(4) $ (\inst1|Q\(4) $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst10|Q\(4) & ((\inst1|Q\(4)) # (!\inst|Add0~7\))) # (!\inst10|Q\(4) & (\inst1|Q\(4) & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X31_Y29_N24
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst1|Q\(5) & ((\inst10|Q\(5) & (\inst|Add0~9\ & VCC)) # (!\inst10|Q\(5) & (!\inst|Add0~9\)))) # (!\inst1|Q\(5) & ((\inst10|Q\(5) & (!\inst|Add0~9\)) # (!\inst10|Q\(5) & ((\inst|Add0~9\) # (GND)))))
-- \inst|Add0~11\ = CARRY((\inst1|Q\(5) & (!\inst10|Q\(5) & !\inst|Add0~9\)) # (!\inst1|Q\(5) & ((!\inst|Add0~9\) # (!\inst10|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst10|Q\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X31_Y29_N28
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \inst10|Q\(7) $ (\inst1|Q\(7) $ (\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(7),
	datab => \inst1|Q\(7),
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X28_Y29_N20
\inst|Result~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~18_combout\ = \inst1|Q\(7) $ (\inst10|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datad => \inst10|Q\(7),
	combout => \inst|Result~18_combout\);

-- Location: LCCOMB_X30_Y29_N24
\inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = ((\inst10|Q\(4) $ (\inst1|Q\(4) $ (\inst|Add1~7\)))) # (GND)
-- \inst|Add1~9\ = CARRY((\inst10|Q\(4) & ((!\inst|Add1~7\) # (!\inst1|Q\(4)))) # (!\inst10|Q\(4) & (!\inst1|Q\(4) & !\inst|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X30_Y29_N26
\inst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst1|Q\(5) & ((\inst10|Q\(5) & (!\inst|Add1~9\)) # (!\inst10|Q\(5) & ((\inst|Add1~9\) # (GND))))) # (!\inst1|Q\(5) & ((\inst10|Q\(5) & (\inst|Add1~9\ & VCC)) # (!\inst10|Q\(5) & (!\inst|Add1~9\))))
-- \inst|Add1~11\ = CARRY((\inst1|Q\(5) & ((!\inst|Add1~9\) # (!\inst10|Q\(5)))) # (!\inst1|Q\(5) & (!\inst10|Q\(5) & !\inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst10|Q\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X30_Y29_N28
\inst|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = ((\inst10|Q\(6) $ (\inst1|Q\(6) $ (\inst|Add1~11\)))) # (GND)
-- \inst|Add1~13\ = CARRY((\inst10|Q\(6) & ((!\inst|Add1~11\) # (!\inst1|Q\(6)))) # (!\inst10|Q\(6) & (!\inst1|Q\(6) & !\inst|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(6),
	datab => \inst1|Q\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X30_Y29_N30
\inst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = \inst1|Q\(7) $ (\inst|Add1~13\ $ (!\inst10|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datad => \inst10|Q\(7),
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\);

-- Location: LCCOMB_X30_Y29_N8
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\inst10|Q\(4) $ (\inst1|Q\(4) $ (\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\inst10|Q\(4) & (\inst1|Q\(4) & !\inst|Add2~7\)) # (!\inst10|Q\(4) & ((\inst1|Q\(4)) # (!\inst|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(4),
	datab => \inst1|Q\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X30_Y29_N10
\inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst1|Q\(5) & ((\inst10|Q\(5) & (!\inst|Add2~9\)) # (!\inst10|Q\(5) & (\inst|Add2~9\ & VCC)))) # (!\inst1|Q\(5) & ((\inst10|Q\(5) & ((\inst|Add2~9\) # (GND))) # (!\inst10|Q\(5) & (!\inst|Add2~9\))))
-- \inst|Add2~11\ = CARRY((\inst1|Q\(5) & (\inst10|Q\(5) & !\inst|Add2~9\)) # (!\inst1|Q\(5) & ((\inst10|Q\(5)) # (!\inst|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst10|Q\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X30_Y29_N14
\inst|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = \inst1|Q\(7) $ (\inst|Add2~13\ $ (!\inst10|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datad => \inst10|Q\(7),
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\);

-- Location: LCCOMB_X29_Y29_N2
\inst|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~4_combout\ = (\inst|Result[3]~1_combout\ & ((\inst10|Q\(7) & (\inst1|Q\(7) & \inst|Result[3]~2_combout\)) # (!\inst10|Q\(7) & (!\inst1|Q\(7) & !\inst|Result[3]~2_combout\)))) # (!\inst|Result[3]~1_combout\ & 
-- (((\inst|Result[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(7),
	datab => \inst|Result[3]~1_combout\,
	datac => \inst1|Q\(7),
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector1~4_combout\);

-- Location: LCCOMB_X28_Y29_N18
\inst|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~5_combout\ = (\inst|Result[3]~1_combout\ & (((\inst|Selector1~4_combout\)))) # (!\inst|Result[3]~1_combout\ & ((\inst|Selector1~4_combout\ & (\inst|Add1~14_combout\)) # (!\inst|Selector1~4_combout\ & ((\inst|Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~1_combout\,
	datab => \inst|Add1~14_combout\,
	datac => \inst|Add2~14_combout\,
	datad => \inst|Selector1~4_combout\,
	combout => \inst|Selector1~5_combout\);

-- Location: LCCOMB_X28_Y29_N12
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst3|WideOr10~0_combout\ & (((!\inst|Result[3]~0_combout\ & \inst|Selector1~5_combout\)))) # (!\inst3|WideOr10~0_combout\ & (((\inst|Result[3]~0_combout\)) # (!\inst1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datab => \inst3|WideOr10~0_combout\,
	datac => \inst|Result[3]~0_combout\,
	datad => \inst|Selector1~5_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X28_Y29_N10
\inst|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Result[3]~0_combout\ & ((\inst1|Q\(7) & (!\inst10|Q\(7))) # (!\inst1|Q\(7) & ((\inst10|Q\(7)) # (\inst|Selector1~0_combout\))))) # (!\inst|Result[3]~0_combout\ & (((\inst|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datab => \inst10|Q\(7),
	datac => \inst|Result[3]~0_combout\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X28_Y29_N2
\inst|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~2_combout\ = (\inst|Result[3]~5_combout\ & (\inst|Result[3]~4_combout\)) # (!\inst|Result[3]~5_combout\ & ((\inst|Result[3]~4_combout\ & ((\inst|Selector1~1_combout\))) # (!\inst|Result[3]~4_combout\ & (!\inst|Result~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~5_combout\,
	datab => \inst|Result[3]~4_combout\,
	datac => \inst|Result~18_combout\,
	datad => \inst|Selector1~1_combout\,
	combout => \inst|Selector1~2_combout\);

-- Location: LCCOMB_X28_Y29_N22
\inst|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~3_combout\ = (\inst|Result[3]~5_combout\ & ((\inst|Selector1~2_combout\ & (\inst|Result~19_combout\)) # (!\inst|Selector1~2_combout\ & ((\inst|Add0~14_combout\))))) # (!\inst|Result[3]~5_combout\ & (((\inst|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~5_combout\,
	datab => \inst|Result~19_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Selector1~2_combout\,
	combout => \inst|Selector1~3_combout\);

-- Location: LCFF_X28_Y29_N23
\inst|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(7));

-- Location: LCCOMB_X29_Y30_N30
\inst|Result~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~12_combout\ = \inst10|Q\(4) $ (\inst1|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(4),
	datad => \inst1|Q\(4),
	combout => \inst|Result~12_combout\);

-- Location: LCCOMB_X28_Y30_N14
\inst|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~4_combout\ = (\inst|Result[3]~5_combout\ & (((\inst|Add0~8_combout\) # (\inst|Result[3]~4_combout\)))) # (!\inst|Result[3]~5_combout\ & (!\inst|Result~12_combout\ & ((!\inst|Result[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~5_combout\,
	datab => \inst|Result~12_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Result[3]~4_combout\,
	combout => \inst|Selector4~4_combout\);

-- Location: LCCOMB_X29_Y30_N20
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|Result[3]~1_combout\ & (((\inst|Result[3]~2_combout\)))) # (!\inst|Result[3]~1_combout\ & ((\inst|Result[3]~2_combout\ & ((\inst|Add1~8_combout\))) # (!\inst|Result[3]~2_combout\ & (\inst|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~1_combout\,
	datab => \inst|Add2~8_combout\,
	datac => \inst|Result[3]~2_combout\,
	datad => \inst|Add1~8_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y30_N6
\inst|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|Result[3]~1_combout\ & ((\inst1|Q\(4) & (\inst10|Q\(4) & \inst|Selector4~0_combout\)) # (!\inst1|Q\(4) & (!\inst10|Q\(4) & !\inst|Selector4~0_combout\)))) # (!\inst|Result[3]~1_combout\ & 
-- (((\inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~1_combout\,
	datab => \inst1|Q\(4),
	datac => \inst10|Q\(4),
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X29_Y30_N24
\inst|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|Result[3]~0_combout\ & ((\inst|Result~12_combout\) # ((!\inst3|WideOr10~0_combout\)))) # (!\inst|Result[3]~0_combout\ & (((\inst3|WideOr10~0_combout\ & \inst|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~12_combout\,
	datab => \inst|Result[3]~0_combout\,
	datac => \inst3|WideOr10~0_combout\,
	datad => \inst|Selector4~1_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: LCCOMB_X28_Y30_N30
\inst|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~3_combout\ = (\inst3|WideOr10~0_combout\ & (((\inst|Selector4~2_combout\)))) # (!\inst3|WideOr10~0_combout\ & (((!\inst10|Q\(4) & \inst|Selector4~2_combout\)) # (!\inst1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr10~0_combout\,
	datab => \inst10|Q\(4),
	datac => \inst1|Q\(4),
	datad => \inst|Selector4~2_combout\,
	combout => \inst|Selector4~3_combout\);

-- Location: LCCOMB_X28_Y30_N24
\inst|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~5_combout\ = (\inst|Result[3]~4_combout\ & ((\inst|Selector4~4_combout\ & (\inst|Result~13_combout\)) # (!\inst|Selector4~4_combout\ & ((\inst|Selector4~3_combout\))))) # (!\inst|Result[3]~4_combout\ & (((\inst|Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~13_combout\,
	datab => \inst|Result[3]~4_combout\,
	datac => \inst|Selector4~4_combout\,
	datad => \inst|Selector4~3_combout\,
	combout => \inst|Selector4~5_combout\);

-- Location: LCFF_X28_Y30_N25
\inst|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(4));

-- Location: LCCOMB_X27_Y29_N20
\inst|Result~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~16_combout\ = \inst10|Q\(6) $ (\inst1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(6),
	datac => \inst1|Q\(6),
	combout => \inst|Result~16_combout\);

-- Location: LCCOMB_X27_Y29_N28
\inst|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~4_combout\ = (\inst|Result[3]~4_combout\ & (((\inst|Result[3]~5_combout\)))) # (!\inst|Result[3]~4_combout\ & ((\inst|Result[3]~5_combout\ & (\inst|Add0~12_combout\)) # (!\inst|Result[3]~5_combout\ & ((!\inst|Result~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|Result~16_combout\,
	datac => \inst|Result[3]~4_combout\,
	datad => \inst|Result[3]~5_combout\,
	combout => \inst|Selector2~4_combout\);

-- Location: LCCOMB_X28_Y29_N6
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|Result[3]~1_combout\ & (((\inst|Result[3]~2_combout\)))) # (!\inst|Result[3]~1_combout\ & ((\inst|Result[3]~2_combout\ & ((\inst|Add1~12_combout\))) # (!\inst|Result[3]~2_combout\ & (\inst|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~12_combout\,
	datab => \inst|Add1~12_combout\,
	datac => \inst|Result[3]~1_combout\,
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y29_N26
\inst|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Result[3]~1_combout\ & ((\inst1|Q\(6) & (\inst10|Q\(6) & \inst|Selector2~0_combout\)) # (!\inst1|Q\(6) & (!\inst10|Q\(6) & !\inst|Selector2~0_combout\)))) # (!\inst|Result[3]~1_combout\ & 
-- (((\inst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Result[3]~1_combout\,
	datac => \inst10|Q\(6),
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X27_Y29_N12
\inst|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst|Result[3]~0_combout\ & ((\inst|Result~16_combout\) # ((!\inst3|WideOr10~0_combout\)))) # (!\inst|Result[3]~0_combout\ & (((\inst3|WideOr10~0_combout\ & \inst|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~0_combout\,
	datab => \inst|Result~16_combout\,
	datac => \inst3|WideOr10~0_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst|Selector2~2_combout\);

-- Location: LCCOMB_X27_Y29_N22
\inst|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~3_combout\ = (\inst3|WideOr10~0_combout\ & (((\inst|Selector2~2_combout\)))) # (!\inst3|WideOr10~0_combout\ & (((!\inst10|Q\(6) & \inst|Selector2~2_combout\)) # (!\inst1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst10|Q\(6),
	datac => \inst3|WideOr10~0_combout\,
	datad => \inst|Selector2~2_combout\,
	combout => \inst|Selector2~3_combout\);

-- Location: LCCOMB_X27_Y29_N4
\inst|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~5_combout\ = (\inst|Selector2~4_combout\ & ((\inst|Result~17_combout\) # ((!\inst|Result[3]~4_combout\)))) # (!\inst|Selector2~4_combout\ & (((\inst|Result[3]~4_combout\ & \inst|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~17_combout\,
	datab => \inst|Selector2~4_combout\,
	datac => \inst|Result[3]~4_combout\,
	datad => \inst|Selector2~3_combout\,
	combout => \inst|Selector2~5_combout\);

-- Location: LCFF_X27_Y29_N5
\inst|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(6));

-- Location: LCCOMB_X30_Y30_N30
\inst|Result~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~15_combout\ = (\inst10|Q\(5)) # (\inst1|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Q\(5),
	datac => \inst1|Q\(5),
	combout => \inst|Result~15_combout\);

-- Location: LCCOMB_X29_Y30_N2
\inst|Result~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~14_combout\ = \inst10|Q\(5) $ (\inst1|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(5),
	datad => \inst1|Q\(5),
	combout => \inst|Result~14_combout\);

-- Location: LCCOMB_X29_Y29_N0
\inst|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~4_combout\ = (\inst|Result[3]~1_combout\ & ((\inst10|Q\(5) & (\inst1|Q\(5) & \inst|Result[3]~2_combout\)) # (!\inst10|Q\(5) & (!\inst1|Q\(5) & !\inst|Result[3]~2_combout\)))) # (!\inst|Result[3]~1_combout\ & 
-- (((!\inst|Result[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(5),
	datab => \inst|Result[3]~1_combout\,
	datac => \inst1|Q\(5),
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector3~4_combout\);

-- Location: LCCOMB_X29_Y30_N18
\inst|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~5_combout\ = (\inst|Result[3]~1_combout\ & (((\inst|Selector3~4_combout\)))) # (!\inst|Result[3]~1_combout\ & ((\inst|Selector3~4_combout\ & ((\inst|Add2~10_combout\))) # (!\inst|Selector3~4_combout\ & (\inst|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~1_combout\,
	datab => \inst|Add1~10_combout\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|Selector3~4_combout\,
	combout => \inst|Selector3~5_combout\);

-- Location: LCCOMB_X29_Y30_N26
\inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst3|WideOr10~0_combout\ & (!\inst|Result[3]~0_combout\ & ((\inst|Selector3~5_combout\)))) # (!\inst3|WideOr10~0_combout\ & ((\inst|Result[3]~0_combout\) # ((!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr10~0_combout\,
	datab => \inst|Result[3]~0_combout\,
	datac => \inst1|Q\(5),
	datad => \inst|Selector3~5_combout\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X29_Y30_N0
\inst|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|Result[3]~0_combout\ & ((\inst10|Q\(5) & (!\inst1|Q\(5))) # (!\inst10|Q\(5) & ((\inst1|Q\(5)) # (\inst|Selector3~0_combout\))))) # (!\inst|Result[3]~0_combout\ & (((\inst|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Q\(5),
	datab => \inst|Result[3]~0_combout\,
	datac => \inst1|Q\(5),
	datad => \inst|Selector3~0_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: LCCOMB_X29_Y30_N28
\inst|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~2_combout\ = (\inst|Result[3]~5_combout\ & (((\inst|Result[3]~4_combout\)))) # (!\inst|Result[3]~5_combout\ & ((\inst|Result[3]~4_combout\ & ((\inst|Selector3~1_combout\))) # (!\inst|Result[3]~4_combout\ & (!\inst|Result~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~5_combout\,
	datab => \inst|Result~14_combout\,
	datac => \inst|Result[3]~4_combout\,
	datad => \inst|Selector3~1_combout\,
	combout => \inst|Selector3~2_combout\);

-- Location: LCCOMB_X29_Y30_N14
\inst|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~3_combout\ = (\inst|Result[3]~5_combout\ & ((\inst|Selector3~2_combout\ & (\inst|Result~15_combout\)) # (!\inst|Selector3~2_combout\ & ((\inst|Add0~10_combout\))))) # (!\inst|Result[3]~5_combout\ & (((\inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~5_combout\,
	datab => \inst|Result~15_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Selector3~2_combout\,
	combout => \inst|Selector3~3_combout\);

-- Location: LCFF_X29_Y30_N15
\inst|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(5));

-- Location: LCCOMB_X29_Y33_N4
\inst7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst|Result\(7) & (\inst|Result\(4) & (\inst|Result\(6) $ (\inst|Result\(5))))) # (!\inst|Result\(7) & (!\inst|Result\(5) & (\inst|Result\(4) $ (\inst|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(7),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(5),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y33_N10
\inst7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst|Result\(7) & ((\inst|Result\(4) & ((\inst|Result\(5)))) # (!\inst|Result\(4) & (\inst|Result\(6))))) # (!\inst|Result\(7) & (\inst|Result\(6) & (\inst|Result\(4) $ (\inst|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(7),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(5),
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y33_N0
\inst7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst|Result\(7) & (\inst|Result\(6) & ((\inst|Result\(5)) # (!\inst|Result\(4))))) # (!\inst|Result\(7) & (!\inst|Result\(4) & (!\inst|Result\(6) & \inst|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(7),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(5),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y33_N26
\inst7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst|Result\(4) & ((\inst|Result\(6) $ (!\inst|Result\(5))))) # (!\inst|Result\(4) & ((\inst|Result\(7) & (!\inst|Result\(6) & \inst|Result\(5))) # (!\inst|Result\(7) & (\inst|Result\(6) & !\inst|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(7),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(5),
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y33_N20
\inst7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst|Result\(5) & (!\inst|Result\(7) & (\inst|Result\(4)))) # (!\inst|Result\(5) & ((\inst|Result\(6) & (!\inst|Result\(7))) # (!\inst|Result\(6) & ((\inst|Result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(7),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(5),
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y33_N22
\inst7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst|Result\(4) & (\inst|Result\(7) $ (((\inst|Result\(5)) # (!\inst|Result\(6)))))) # (!\inst|Result\(4) & (!\inst|Result\(7) & (!\inst|Result\(6) & \inst|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(7),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(5),
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y33_N12
\inst7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst|Result\(4) & ((\inst|Result\(7)) # (\inst|Result\(6) $ (\inst|Result\(5))))) # (!\inst|Result\(4) & ((\inst|Result\(5)) # (\inst|Result\(7) $ (\inst|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(7),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(5),
	combout => \inst7|Mux6~0_combout\);

-- Location: CLKDELAYCTRL_G7
\clock~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \clock~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X27_Y29_N30
\inst|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (\inst3|WideOr10~0_combout\ & (!\inst3|yfsm.s7~regout\ & (\inst3|WideOr12~0_combout\ & !\inst3|yfsm.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr10~0_combout\,
	datab => \inst3|yfsm.s7~regout\,
	datac => \inst3|WideOr12~0_combout\,
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst|Selector0~2_combout\);

-- Location: LCCOMB_X27_Y29_N0
\inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst3|yfsm.s1~regout\ & (((\inst|LessThan0~14_combout\)))) # (!\inst3|yfsm.s1~regout\ & (\inst|Neg~regout\ & (\inst3|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Neg~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s0~regout\,
	datad => \inst|LessThan0~14_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCCOMB_X27_Y29_N14
\inst|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (!\inst3|yfsm.s8~regout\ & (\inst|Selector0~2_combout\ & (\Enable_Decoder~combout\ & \inst|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s8~regout\,
	datab => \inst|Selector0~2_combout\,
	datac => \Enable_Decoder~combout\,
	datad => \inst|Selector0~1_combout\,
	combout => \inst|Selector0~3_combout\);

-- Location: LCFF_X27_Y29_N15
\inst|Neg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Neg~regout\);

-- Location: LCCOMB_X28_Y32_N12
\inst3|WideOr12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr12~combout\ = (\inst3|yfsm.s6~regout\) # ((\inst3|yfsm.s4~regout\) # (!\inst3|yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s6~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|WideOr12~combout\);

-- Location: LCCOMB_X28_Y32_N0
\inst6|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~3_combout\ = (!\inst3|yfsm.s7~regout\ & (!\inst3|yfsm.s8~regout\ & (!\inst3|yfsm.s1~regout\ & !\inst3|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s8~regout\,
	datac => \inst3|yfsm.s1~regout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst6|Mux0~3_combout\);

-- Location: LCCOMB_X28_Y32_N20
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\inst3|yfsm.s6~regout\ & (!\inst3|yfsm.s4~regout\ & !\inst3|yfsm.s7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s6~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y32_N2
\inst6|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~2_combout\ = (\inst3|WideOr12~combout\ & (\inst|Selector0~0_combout\ $ (((\inst3|yfsm.s7~regout\) # (\inst3|yfsm.s1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst6|Mux1~2_combout\);

-- Location: LCCOMB_X28_Y32_N26
\inst6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst3|yfsm.s0~regout\ & (!\inst3|yfsm.s6~regout\ & (!\inst3|yfsm.s4~regout\ & \inst3|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst3|yfsm.s6~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y32_N10
\inst3|WideOr14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr14~combout\ = (\inst3|yfsm.s1~regout\) # (\inst3|yfsm.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst3|WideOr14~combout\);

-- Location: LCCOMB_X28_Y32_N4
\inst6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst3|WideOr14~combout\) # ((\inst3|yfsm.s8~regout\) # (\inst|Selector0~0_combout\ $ (!\inst3|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr14~combout\,
	datab => \inst3|yfsm.s8~regout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y32_N18
\inst6|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~2_combout\ = (!\inst3|yfsm.s1~regout\ & (!\inst3|yfsm.s8~regout\ & !\inst3|yfsm.s7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datab => \inst3|yfsm.s8~regout\,
	datad => \inst3|yfsm.s7~regout\,
	combout => \inst6|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y32_N24
\inst6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst3|yfsm.s8~regout\) # ((\inst3|WideOr14~combout\ & ((\inst|Selector0~0_combout\) # (\inst3|WideOr12~combout\))) # (!\inst3|WideOr14~combout\ & (\inst|Selector0~0_combout\ $ (!\inst3|WideOr12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr14~combout\,
	datab => \inst3|yfsm.s8~regout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y32_N22
\inst6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst3|yfsm.s8~regout\) # ((\inst|Selector0~0_combout\ & ((\inst3|WideOr12~combout\))) # (!\inst|Selector0~0_combout\ & ((\inst3|WideOr14~combout\) # (!\inst3|WideOr12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr14~combout\,
	datab => \inst3|yfsm.s8~regout\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst6|Mux6~0_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_firstfour[0]~I\ : cycloneii_io
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
	datain => \inst5|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_firstfour(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_firstfour[1]~I\ : cycloneii_io
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
	datain => \inst5|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_firstfour(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_firstfour[2]~I\ : cycloneii_io
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
	datain => \inst5|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_firstfour(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_firstfour[3]~I\ : cycloneii_io
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
	datain => \inst5|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_firstfour(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_firstfour[4]~I\ : cycloneii_io
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
	datain => \inst5|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_firstfour(4));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_firstfour[5]~I\ : cycloneii_io
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
	datain => \inst5|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_firstfour(5));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_firstfour[6]~I\ : cycloneii_io
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
	datain => \inst5|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_firstfour(6));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[0]~I\ : cycloneii_io
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
	datain => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[1]~I\ : cycloneii_io
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
	datain => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[2]~I\ : cycloneii_io
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
	datain => \inst7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[3]~I\ : cycloneii_io
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
	datain => \inst7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[4]~I\ : cycloneii_io
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
	datain => \inst7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[5]~I\ : cycloneii_io
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
	datain => \inst7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(5));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[6]~I\ : cycloneii_io
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
	datain => \inst7|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(6));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[0]~I\ : cycloneii_io
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
	padio => ww_sign(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[1]~I\ : cycloneii_io
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
	padio => ww_sign(1));

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[2]~I\ : cycloneii_io
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
	padio => ww_sign(2));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[3]~I\ : cycloneii_io
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
	padio => ww_sign(3));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[4]~I\ : cycloneii_io
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
	padio => ww_sign(4));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[5]~I\ : cycloneii_io
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
	padio => ww_sign(5));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[6]~I\ : cycloneii_io
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
	datain => \inst|Neg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(6));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[0]~I\ : cycloneii_io
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
	datain => \inst6|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
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
	datain => \inst6|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
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
	datain => \inst6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
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
	datain => \inst6|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
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
	datain => \inst6|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
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
	datain => \inst6|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
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
	datain => \inst6|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));
END structure;


