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

-- DATE "11/03/2023 10:42:17"

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

ENTITY 	Datapath IS
    PORT (
	Entrada : IN std_logic_vector(3 DOWNTO 0);
	Fio_Load_E : IN std_logic;
	Fio_Reset_MA : IN std_logic;
	Fio_Descendo : IN std_logic_vector(0 DOWNTO 0);
	Fio_Subindo : IN std_logic_vector(0 DOWNTO 0);
	Fio_Atualizar : IN std_logic;
	Fio_Clock : IN std_logic;
	Fio_Maior : OUT std_logic;
	Fio_Igual : OUT std_logic;
	Fio_Menor : OUT std_logic;
	Subindo : OUT std_logic_vector(0 DOWNTO 0);
	Descendo : OUT std_logic_vector(0 DOWNTO 0);
	Media_DSP_7Seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- Fio_Maior	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Igual	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Fio_Menor	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Subindo[0]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Entrada[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Clock	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Load_E	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Entrada[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Reset_MA	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Entrada[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Entrada[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Subindo[0]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Atualizar	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Fio_Descendo[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Fio_Load_E : std_logic;
SIGNAL ww_Fio_Reset_MA : std_logic;
SIGNAL ww_Fio_Descendo : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Fio_Subindo : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Fio_Atualizar : std_logic;
SIGNAL ww_Fio_Clock : std_logic;
SIGNAL ww_Fio_Maior : std_logic;
SIGNAL ww_Fio_Igual : std_logic;
SIGNAL ww_Fio_Menor : std_logic;
SIGNAL ww_Subindo : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Descendo : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Media_DSP_7Seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \Fio_Reset_MA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Fio_Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorMedia|Add1~5\ : std_logic;
SIGNAL \RegistradorMedia|Add1~6_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add1~7\ : std_logic;
SIGNAL \RegistradorMedia|Add1~8_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add0~0_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add0~2_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add0~4_combout\ : std_logic;
SIGNAL \Fio_Load_E~combout\ : std_logic;
SIGNAL \Fio_Reset_MA~combout\ : std_logic;
SIGNAL \Fio_Reset_MA~clkctrl_outclk\ : std_logic;
SIGNAL \RegistradorMedia|var1[2]~feeder_combout\ : std_logic;
SIGNAL \RegistradorMedia|var1[1]~feeder_combout\ : std_logic;
SIGNAL \RegistradorMedia|var2[1]~feeder_combout\ : std_logic;
SIGNAL \RegistradorMedia|var1[0]~feeder_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add0~1\ : std_logic;
SIGNAL \RegistradorMedia|Add0~3\ : std_logic;
SIGNAL \RegistradorMedia|Add0~5\ : std_logic;
SIGNAL \RegistradorMedia|Add0~6_combout\ : std_logic;
SIGNAL \RegistradorMedia|var3[1]~feeder_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add1~1\ : std_logic;
SIGNAL \RegistradorMedia|Add1~3\ : std_logic;
SIGNAL \RegistradorMedia|Add1~4_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add1~2_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add1~0_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add2~1_cout\ : std_logic;
SIGNAL \RegistradorMedia|Add2~3_cout\ : std_logic;
SIGNAL \RegistradorMedia|OUTPUT[0]~1\ : std_logic;
SIGNAL \RegistradorMedia|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \Comp|LessThan0~1_combout\ : std_logic;
SIGNAL \RegistradorMedia|Add0~7\ : std_logic;
SIGNAL \RegistradorMedia|Add0~8_combout\ : std_logic;
SIGNAL \RegistradorMedia|OUTPUT[1]~3\ : std_logic;
SIGNAL \RegistradorMedia|OUTPUT[2]~4_combout\ : std_logic;
SIGNAL \Comp|LessThan0~0_combout\ : std_logic;
SIGNAL \RegistradorMedia|OUTPUT[2]~5\ : std_logic;
SIGNAL \RegistradorMedia|OUTPUT[3]~6_combout\ : std_logic;
SIGNAL \Comp|Equal0~0_combout\ : std_logic;
SIGNAL \Comp|LessThan0~2_combout\ : std_logic;
SIGNAL \Comp|Equal0~1_combout\ : std_logic;
SIGNAL \Comp|LessThan0~3_combout\ : std_logic;
SIGNAL \Comp|Equal0~2_combout\ : std_logic;
SIGNAL \Comp|LessThan1~1_combout\ : std_logic;
SIGNAL \Comp|LessThan1~0_combout\ : std_logic;
SIGNAL \Comp|LessThan1~2_combout\ : std_logic;
SIGNAL \Fio_Clock~combout\ : std_logic;
SIGNAL \Fio_Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Fio_Atualizar~combout\ : std_logic;
SIGNAL \RegistradorMedia|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \Led7segmentos|Mux6~0_combout\ : std_logic;
SIGNAL \Led7segmentos|Mux5~0_combout\ : std_logic;
SIGNAL \Led7segmentos|Mux4~0_combout\ : std_logic;
SIGNAL \Led7segmentos|Mux3~0_combout\ : std_logic;
SIGNAL \Led7segmentos|Mux2~0_combout\ : std_logic;
SIGNAL \Led7segmentos|Mux1~0_combout\ : std_logic;
SIGNAL \Led7segmentos|Mux0~0_combout\ : std_logic;
SIGNAL \RegistradorD|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RegistradorE|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorMedia|var4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorMedia|var3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorMedia|var2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorMedia|var1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorS|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Fio_Subindo~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Fio_Descendo~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Entrada~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Led7segmentos|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_Entrada <= Entrada;
ww_Fio_Load_E <= Fio_Load_E;
ww_Fio_Reset_MA <= Fio_Reset_MA;
ww_Fio_Descendo <= Fio_Descendo;
ww_Fio_Subindo <= Fio_Subindo;
ww_Fio_Atualizar <= Fio_Atualizar;
ww_Fio_Clock <= Fio_Clock;
Fio_Maior <= ww_Fio_Maior;
Fio_Igual <= ww_Fio_Igual;
Fio_Menor <= ww_Fio_Menor;
Subindo <= ww_Subindo;
Descendo <= ww_Descendo;
Media_DSP_7Seg <= ww_Media_DSP_7Seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Fio_Reset_MA~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Fio_Reset_MA~combout\);

\Fio_Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Fio_Clock~combout\);
\Led7segmentos|ALT_INV_Mux6~0_combout\ <= NOT \Led7segmentos|Mux6~0_combout\;

-- Location: LCCOMB_X40_Y1_N4
\RegistradorMedia|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add1~4_combout\ = ((\RegistradorMedia|var3\(2) $ (\RegistradorMedia|var4\(2) $ (!\RegistradorMedia|Add1~3\)))) # (GND)
-- \RegistradorMedia|Add1~5\ = CARRY((\RegistradorMedia|var3\(2) & ((\RegistradorMedia|var4\(2)) # (!\RegistradorMedia|Add1~3\))) # (!\RegistradorMedia|var3\(2) & (\RegistradorMedia|var4\(2) & !\RegistradorMedia|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var3\(2),
	datab => \RegistradorMedia|var4\(2),
	datad => VCC,
	cin => \RegistradorMedia|Add1~3\,
	combout => \RegistradorMedia|Add1~4_combout\,
	cout => \RegistradorMedia|Add1~5\);

-- Location: LCCOMB_X40_Y1_N6
\RegistradorMedia|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add1~6_combout\ = (\RegistradorMedia|var3\(3) & ((\RegistradorMedia|var4\(3) & (\RegistradorMedia|Add1~5\ & VCC)) # (!\RegistradorMedia|var4\(3) & (!\RegistradorMedia|Add1~5\)))) # (!\RegistradorMedia|var3\(3) & 
-- ((\RegistradorMedia|var4\(3) & (!\RegistradorMedia|Add1~5\)) # (!\RegistradorMedia|var4\(3) & ((\RegistradorMedia|Add1~5\) # (GND)))))
-- \RegistradorMedia|Add1~7\ = CARRY((\RegistradorMedia|var3\(3) & (!\RegistradorMedia|var4\(3) & !\RegistradorMedia|Add1~5\)) # (!\RegistradorMedia|var3\(3) & ((!\RegistradorMedia|Add1~5\) # (!\RegistradorMedia|var4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var3\(3),
	datab => \RegistradorMedia|var4\(3),
	datad => VCC,
	cin => \RegistradorMedia|Add1~5\,
	combout => \RegistradorMedia|Add1~6_combout\,
	cout => \RegistradorMedia|Add1~7\);

-- Location: LCCOMB_X40_Y1_N8
\RegistradorMedia|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add1~8_combout\ = !\RegistradorMedia|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RegistradorMedia|Add1~7\,
	combout => \RegistradorMedia|Add1~8_combout\);

-- Location: LCCOMB_X41_Y1_N2
\RegistradorMedia|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add0~0_combout\ = (\RegistradorMedia|var2\(0) & (\RegistradorMedia|var1\(0) $ (VCC))) # (!\RegistradorMedia|var2\(0) & (\RegistradorMedia|var1\(0) & VCC))
-- \RegistradorMedia|Add0~1\ = CARRY((\RegistradorMedia|var2\(0) & \RegistradorMedia|var1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var2\(0),
	datab => \RegistradorMedia|var1\(0),
	datad => VCC,
	combout => \RegistradorMedia|Add0~0_combout\,
	cout => \RegistradorMedia|Add0~1\);

-- Location: LCCOMB_X41_Y1_N4
\RegistradorMedia|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add0~2_combout\ = (\RegistradorMedia|var1\(1) & ((\RegistradorMedia|var2\(1) & (\RegistradorMedia|Add0~1\ & VCC)) # (!\RegistradorMedia|var2\(1) & (!\RegistradorMedia|Add0~1\)))) # (!\RegistradorMedia|var1\(1) & 
-- ((\RegistradorMedia|var2\(1) & (!\RegistradorMedia|Add0~1\)) # (!\RegistradorMedia|var2\(1) & ((\RegistradorMedia|Add0~1\) # (GND)))))
-- \RegistradorMedia|Add0~3\ = CARRY((\RegistradorMedia|var1\(1) & (!\RegistradorMedia|var2\(1) & !\RegistradorMedia|Add0~1\)) # (!\RegistradorMedia|var1\(1) & ((!\RegistradorMedia|Add0~1\) # (!\RegistradorMedia|var2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var1\(1),
	datab => \RegistradorMedia|var2\(1),
	datad => VCC,
	cin => \RegistradorMedia|Add0~1\,
	combout => \RegistradorMedia|Add0~2_combout\,
	cout => \RegistradorMedia|Add0~3\);

-- Location: LCCOMB_X41_Y1_N6
\RegistradorMedia|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add0~4_combout\ = ((\RegistradorMedia|var1\(2) $ (\RegistradorMedia|var2\(2) $ (!\RegistradorMedia|Add0~3\)))) # (GND)
-- \RegistradorMedia|Add0~5\ = CARRY((\RegistradorMedia|var1\(2) & ((\RegistradorMedia|var2\(2)) # (!\RegistradorMedia|Add0~3\))) # (!\RegistradorMedia|var1\(2) & (\RegistradorMedia|var2\(2) & !\RegistradorMedia|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var1\(2),
	datab => \RegistradorMedia|var2\(2),
	datad => VCC,
	cin => \RegistradorMedia|Add0~3\,
	combout => \RegistradorMedia|Add0~4_combout\,
	cout => \RegistradorMedia|Add0~5\);

-- Location: LCFF_X40_Y1_N7
\RegistradorMedia|var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var3\(3),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var4\(3));

-- Location: LCFF_X40_Y1_N21
\RegistradorMedia|var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var2\(3),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var3\(3));

-- Location: LCFF_X41_Y1_N11
\RegistradorMedia|var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var3\(1),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var4\(1));

-- Location: LCFF_X40_Y1_N1
\RegistradorMedia|var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var3\(0),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var4\(0));

-- Location: LCFF_X40_Y1_N15
\RegistradorMedia|var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var1\(3),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var2\(3));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Entrada[1]~I\ : cycloneii_io
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
	padio => ww_Entrada(1),
	combout => \Entrada~combout\(1));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Load_E~I\ : cycloneii_io
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
	padio => ww_Fio_Load_E,
	combout => \Fio_Load_E~combout\);

-- Location: LCFF_X41_Y1_N23
\RegistradorE|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \Entrada~combout\(1),
	sload => VCC,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorE|Q\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Entrada[0]~I\ : cycloneii_io
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
	padio => ww_Entrada(0),
	combout => \Entrada~combout\(0));

-- Location: LCFF_X40_Y1_N11
\RegistradorE|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \Entrada~combout\(0),
	sload => VCC,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorE|Q\(0));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Entrada[3]~I\ : cycloneii_io
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
	padio => ww_Entrada(3),
	combout => \Entrada~combout\(3));

-- Location: LCFF_X40_Y1_N3
\RegistradorE|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \Entrada~combout\(3),
	sload => VCC,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorE|Q\(3));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Reset_MA~I\ : cycloneii_io
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
	padio => ww_Fio_Reset_MA,
	combout => \Fio_Reset_MA~combout\);

-- Location: CLKCTRL_G3
\Fio_Reset_MA~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Fio_Reset_MA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Fio_Reset_MA~clkctrl_outclk\);

-- Location: LCFF_X40_Y1_N23
\RegistradorMedia|var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorE|Q\(3),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var1\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Entrada[2]~I\ : cycloneii_io
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
	padio => ww_Entrada(2),
	combout => \Entrada~combout\(2));

-- Location: LCFF_X41_Y1_N19
\RegistradorE|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \Entrada~combout\(2),
	sload => VCC,
	ena => \Fio_Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorE|Q\(2));

-- Location: LCCOMB_X41_Y1_N16
\RegistradorMedia|var1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|var1[2]~feeder_combout\ = \RegistradorE|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegistradorE|Q\(2),
	combout => \RegistradorMedia|var1[2]~feeder_combout\);

-- Location: LCFF_X41_Y1_N17
\RegistradorMedia|var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	datain => \RegistradorMedia|var1[2]~feeder_combout\,
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var1\(2));

-- Location: LCFF_X41_Y1_N15
\RegistradorMedia|var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var1\(2),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var2\(2));

-- Location: LCCOMB_X41_Y1_N26
\RegistradorMedia|var1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|var1[1]~feeder_combout\ = \RegistradorE|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegistradorE|Q\(1),
	combout => \RegistradorMedia|var1[1]~feeder_combout\);

-- Location: LCFF_X41_Y1_N27
\RegistradorMedia|var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	datain => \RegistradorMedia|var1[1]~feeder_combout\,
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var1\(1));

-- Location: LCCOMB_X41_Y1_N28
\RegistradorMedia|var2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|var2[1]~feeder_combout\ = \RegistradorMedia|var1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegistradorMedia|var1\(1),
	combout => \RegistradorMedia|var2[1]~feeder_combout\);

-- Location: LCFF_X41_Y1_N29
\RegistradorMedia|var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	datain => \RegistradorMedia|var2[1]~feeder_combout\,
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var2\(1));

-- Location: LCCOMB_X40_Y1_N12
\RegistradorMedia|var1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|var1[0]~feeder_combout\ = \RegistradorE|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegistradorE|Q\(0),
	combout => \RegistradorMedia|var1[0]~feeder_combout\);

-- Location: LCFF_X40_Y1_N13
\RegistradorMedia|var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	datain => \RegistradorMedia|var1[0]~feeder_combout\,
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var1\(0));

-- Location: LCCOMB_X41_Y1_N8
\RegistradorMedia|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add0~6_combout\ = (\RegistradorMedia|var2\(3) & ((\RegistradorMedia|var1\(3) & (\RegistradorMedia|Add0~5\ & VCC)) # (!\RegistradorMedia|var1\(3) & (!\RegistradorMedia|Add0~5\)))) # (!\RegistradorMedia|var2\(3) & 
-- ((\RegistradorMedia|var1\(3) & (!\RegistradorMedia|Add0~5\)) # (!\RegistradorMedia|var1\(3) & ((\RegistradorMedia|Add0~5\) # (GND)))))
-- \RegistradorMedia|Add0~7\ = CARRY((\RegistradorMedia|var2\(3) & (!\RegistradorMedia|var1\(3) & !\RegistradorMedia|Add0~5\)) # (!\RegistradorMedia|var2\(3) & ((!\RegistradorMedia|Add0~5\) # (!\RegistradorMedia|var1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var2\(3),
	datab => \RegistradorMedia|var1\(3),
	datad => VCC,
	cin => \RegistradorMedia|Add0~5\,
	combout => \RegistradorMedia|Add0~6_combout\,
	cout => \RegistradorMedia|Add0~7\);

-- Location: LCFF_X41_Y1_N21
\RegistradorMedia|var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var2\(2),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var3\(2));

-- Location: LCFF_X41_Y1_N3
\RegistradorMedia|var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var3\(2),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var4\(2));

-- Location: LCCOMB_X41_Y1_N24
\RegistradorMedia|var3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|var3[1]~feeder_combout\ = \RegistradorMedia|var2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegistradorMedia|var2\(1),
	combout => \RegistradorMedia|var3[1]~feeder_combout\);

-- Location: LCFF_X41_Y1_N25
\RegistradorMedia|var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	datain => \RegistradorMedia|var3[1]~feeder_combout\,
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var3\(1));

-- Location: LCFF_X40_Y1_N9
\RegistradorMedia|var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var1\(0),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var2\(0));

-- Location: LCFF_X40_Y1_N31
\RegistradorMedia|var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \RegistradorMedia|var2\(0),
	aclr => \Fio_Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorMedia|var3\(0));

-- Location: LCCOMB_X40_Y1_N0
\RegistradorMedia|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add1~0_combout\ = (\RegistradorMedia|var4\(0) & (\RegistradorMedia|var3\(0) $ (VCC))) # (!\RegistradorMedia|var4\(0) & (\RegistradorMedia|var3\(0) & VCC))
-- \RegistradorMedia|Add1~1\ = CARRY((\RegistradorMedia|var4\(0) & \RegistradorMedia|var3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var4\(0),
	datab => \RegistradorMedia|var3\(0),
	datad => VCC,
	combout => \RegistradorMedia|Add1~0_combout\,
	cout => \RegistradorMedia|Add1~1\);

-- Location: LCCOMB_X40_Y1_N2
\RegistradorMedia|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add1~2_combout\ = (\RegistradorMedia|var4\(1) & ((\RegistradorMedia|var3\(1) & (\RegistradorMedia|Add1~1\ & VCC)) # (!\RegistradorMedia|var3\(1) & (!\RegistradorMedia|Add1~1\)))) # (!\RegistradorMedia|var4\(1) & 
-- ((\RegistradorMedia|var3\(1) & (!\RegistradorMedia|Add1~1\)) # (!\RegistradorMedia|var3\(1) & ((\RegistradorMedia|Add1~1\) # (GND)))))
-- \RegistradorMedia|Add1~3\ = CARRY((\RegistradorMedia|var4\(1) & (!\RegistradorMedia|var3\(1) & !\RegistradorMedia|Add1~1\)) # (!\RegistradorMedia|var4\(1) & ((!\RegistradorMedia|Add1~1\) # (!\RegistradorMedia|var3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|var4\(1),
	datab => \RegistradorMedia|var3\(1),
	datad => VCC,
	cin => \RegistradorMedia|Add1~1\,
	combout => \RegistradorMedia|Add1~2_combout\,
	cout => \RegistradorMedia|Add1~3\);

-- Location: LCCOMB_X40_Y1_N14
\RegistradorMedia|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add2~1_cout\ = CARRY((\RegistradorMedia|Add0~0_combout\ & \RegistradorMedia|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|Add0~0_combout\,
	datab => \RegistradorMedia|Add1~0_combout\,
	datad => VCC,
	cout => \RegistradorMedia|Add2~1_cout\);

-- Location: LCCOMB_X40_Y1_N16
\RegistradorMedia|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add2~3_cout\ = CARRY((\RegistradorMedia|Add0~2_combout\ & (!\RegistradorMedia|Add1~2_combout\ & !\RegistradorMedia|Add2~1_cout\)) # (!\RegistradorMedia|Add0~2_combout\ & ((!\RegistradorMedia|Add2~1_cout\) # 
-- (!\RegistradorMedia|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|Add0~2_combout\,
	datab => \RegistradorMedia|Add1~2_combout\,
	datad => VCC,
	cin => \RegistradorMedia|Add2~1_cout\,
	cout => \RegistradorMedia|Add2~3_cout\);

-- Location: LCCOMB_X40_Y1_N18
\RegistradorMedia|OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|OUTPUT[0]~0_combout\ = ((\RegistradorMedia|Add0~4_combout\ $ (\RegistradorMedia|Add1~4_combout\ $ (!\RegistradorMedia|Add2~3_cout\)))) # (GND)
-- \RegistradorMedia|OUTPUT[0]~1\ = CARRY((\RegistradorMedia|Add0~4_combout\ & ((\RegistradorMedia|Add1~4_combout\) # (!\RegistradorMedia|Add2~3_cout\))) # (!\RegistradorMedia|Add0~4_combout\ & (\RegistradorMedia|Add1~4_combout\ & 
-- !\RegistradorMedia|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|Add0~4_combout\,
	datab => \RegistradorMedia|Add1~4_combout\,
	datad => VCC,
	cin => \RegistradorMedia|Add2~3_cout\,
	combout => \RegistradorMedia|OUTPUT[0]~0_combout\,
	cout => \RegistradorMedia|OUTPUT[0]~1\);

-- Location: LCCOMB_X40_Y1_N20
\RegistradorMedia|OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|OUTPUT[1]~2_combout\ = (\RegistradorMedia|Add1~6_combout\ & ((\RegistradorMedia|Add0~6_combout\ & (\RegistradorMedia|OUTPUT[0]~1\ & VCC)) # (!\RegistradorMedia|Add0~6_combout\ & (!\RegistradorMedia|OUTPUT[0]~1\)))) # 
-- (!\RegistradorMedia|Add1~6_combout\ & ((\RegistradorMedia|Add0~6_combout\ & (!\RegistradorMedia|OUTPUT[0]~1\)) # (!\RegistradorMedia|Add0~6_combout\ & ((\RegistradorMedia|OUTPUT[0]~1\) # (GND)))))
-- \RegistradorMedia|OUTPUT[1]~3\ = CARRY((\RegistradorMedia|Add1~6_combout\ & (!\RegistradorMedia|Add0~6_combout\ & !\RegistradorMedia|OUTPUT[0]~1\)) # (!\RegistradorMedia|Add1~6_combout\ & ((!\RegistradorMedia|OUTPUT[0]~1\) # 
-- (!\RegistradorMedia|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|Add1~6_combout\,
	datab => \RegistradorMedia|Add0~6_combout\,
	datad => VCC,
	cin => \RegistradorMedia|OUTPUT[0]~1\,
	combout => \RegistradorMedia|OUTPUT[1]~2_combout\,
	cout => \RegistradorMedia|OUTPUT[1]~3\);

-- Location: LCCOMB_X40_Y1_N10
\Comp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|LessThan0~1_combout\ = (\RegistradorE|Q\(1) & (((!\RegistradorMedia|OUTPUT[0]~0_combout\ & \RegistradorE|Q\(0))) # (!\RegistradorMedia|OUTPUT[1]~2_combout\))) # (!\RegistradorE|Q\(1) & (!\RegistradorMedia|OUTPUT[0]~0_combout\ & (\RegistradorE|Q\(0) 
-- & !\RegistradorMedia|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorE|Q\(1),
	datac => \RegistradorE|Q\(0),
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Comp|LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y1_N10
\RegistradorMedia|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|Add0~8_combout\ = !\RegistradorMedia|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RegistradorMedia|Add0~7\,
	combout => \RegistradorMedia|Add0~8_combout\);

-- Location: LCCOMB_X40_Y1_N22
\RegistradorMedia|OUTPUT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|OUTPUT[2]~4_combout\ = ((\RegistradorMedia|Add1~8_combout\ $ (\RegistradorMedia|Add0~8_combout\ $ (!\RegistradorMedia|OUTPUT[1]~3\)))) # (GND)
-- \RegistradorMedia|OUTPUT[2]~5\ = CARRY((\RegistradorMedia|Add1~8_combout\ & ((\RegistradorMedia|Add0~8_combout\) # (!\RegistradorMedia|OUTPUT[1]~3\))) # (!\RegistradorMedia|Add1~8_combout\ & (\RegistradorMedia|Add0~8_combout\ & 
-- !\RegistradorMedia|OUTPUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|Add1~8_combout\,
	datab => \RegistradorMedia|Add0~8_combout\,
	datad => VCC,
	cin => \RegistradorMedia|OUTPUT[1]~3\,
	combout => \RegistradorMedia|OUTPUT[2]~4_combout\,
	cout => \RegistradorMedia|OUTPUT[2]~5\);

-- Location: LCCOMB_X41_Y1_N18
\Comp|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|LessThan0~0_combout\ = (\RegistradorMedia|OUTPUT[3]~6_combout\ & (!\RegistradorMedia|OUTPUT[2]~4_combout\ & (\RegistradorE|Q\(2) & \RegistradorE|Q\(3)))) # (!\RegistradorMedia|OUTPUT[3]~6_combout\ & ((\RegistradorE|Q\(3)) # 
-- ((!\RegistradorMedia|OUTPUT[2]~4_combout\ & \RegistradorE|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorE|Q\(2),
	datad => \RegistradorE|Q\(3),
	combout => \Comp|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y1_N24
\RegistradorMedia|OUTPUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegistradorMedia|OUTPUT[3]~6_combout\ = \RegistradorMedia|OUTPUT[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \RegistradorMedia|OUTPUT[2]~5\,
	combout => \RegistradorMedia|OUTPUT[3]~6_combout\);

-- Location: LCCOMB_X41_Y1_N12
\Comp|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|Equal0~0_combout\ = (\RegistradorE|Q\(3) & (\RegistradorMedia|OUTPUT[3]~6_combout\ & (\RegistradorMedia|OUTPUT[2]~4_combout\ $ (!\RegistradorE|Q\(2))))) # (!\RegistradorE|Q\(3) & (!\RegistradorMedia|OUTPUT[3]~6_combout\ & 
-- (\RegistradorMedia|OUTPUT[2]~4_combout\ $ (!\RegistradorE|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorE|Q\(3),
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorE|Q\(2),
	combout => \Comp|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y1_N14
\Comp|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|LessThan0~2_combout\ = (\Comp|LessThan0~0_combout\) # ((\Comp|LessThan0~1_combout\ & \Comp|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp|LessThan0~1_combout\,
	datab => \Comp|LessThan0~0_combout\,
	datad => \Comp|Equal0~0_combout\,
	combout => \Comp|LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y1_N28
\Comp|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|Equal0~1_combout\ = (\RegistradorMedia|OUTPUT[0]~0_combout\ & (\RegistradorE|Q\(0) & (\RegistradorE|Q\(1) $ (!\RegistradorMedia|OUTPUT[1]~2_combout\)))) # (!\RegistradorMedia|OUTPUT[0]~0_combout\ & (!\RegistradorE|Q\(0) & (\RegistradorE|Q\(1) $ 
-- (!\RegistradorMedia|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorE|Q\(1),
	datac => \RegistradorMedia|OUTPUT[1]~2_combout\,
	datad => \RegistradorE|Q\(0),
	combout => \Comp|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y1_N22
\Comp|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|LessThan0~3_combout\ = \RegistradorE|Q\(2) $ (\RegistradorMedia|OUTPUT[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorE|Q\(2),
	datad => \RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \Comp|LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y1_N0
\Comp|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|Equal0~2_combout\ = (\Comp|Equal0~1_combout\ & (!\Comp|LessThan0~3_combout\ & (\RegistradorE|Q\(3) $ (!\RegistradorMedia|OUTPUT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorE|Q\(3),
	datab => \Comp|Equal0~1_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \Comp|LessThan0~3_combout\,
	combout => \Comp|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y1_N26
\Comp|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|LessThan1~1_combout\ = (\RegistradorE|Q\(1) & (\RegistradorMedia|OUTPUT[0]~0_combout\ & (\RegistradorMedia|OUTPUT[1]~2_combout\ & !\RegistradorE|Q\(0)))) # (!\RegistradorE|Q\(1) & ((\RegistradorMedia|OUTPUT[1]~2_combout\) # 
-- ((\RegistradorMedia|OUTPUT[0]~0_combout\ & !\RegistradorE|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorE|Q\(1),
	datac => \RegistradorMedia|OUTPUT[1]~2_combout\,
	datad => \RegistradorE|Q\(0),
	combout => \Comp|LessThan1~1_combout\);

-- Location: LCCOMB_X41_Y1_N30
\Comp|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|LessThan1~0_combout\ = (\RegistradorE|Q\(3) & (\RegistradorMedia|OUTPUT[2]~4_combout\ & (\RegistradorMedia|OUTPUT[3]~6_combout\ & !\RegistradorE|Q\(2)))) # (!\RegistradorE|Q\(3) & ((\RegistradorMedia|OUTPUT[3]~6_combout\) # 
-- ((\RegistradorMedia|OUTPUT[2]~4_combout\ & !\RegistradorE|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorE|Q\(3),
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorE|Q\(2),
	combout => \Comp|LessThan1~0_combout\);

-- Location: LCCOMB_X41_Y1_N20
\Comp|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comp|LessThan1~2_combout\ = (\Comp|LessThan1~0_combout\) # ((\Comp|Equal0~0_combout\ & \Comp|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comp|Equal0~0_combout\,
	datab => \Comp|LessThan1~1_combout\,
	datad => \Comp|LessThan1~0_combout\,
	combout => \Comp|LessThan1~2_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Clock~I\ : cycloneii_io
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
	padio => ww_Fio_Clock,
	combout => \Fio_Clock~combout\);

-- Location: CLKCTRL_G11
\Fio_Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Fio_Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Fio_Clock~clkctrl_outclk\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Subindo[0]~I\ : cycloneii_io
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
	padio => ww_Fio_Subindo(0),
	combout => \Fio_Subindo~combout\(0));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Atualizar~I\ : cycloneii_io
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
	padio => ww_Fio_Atualizar,
	combout => \Fio_Atualizar~combout\);

-- Location: LCFF_X33_Y1_N9
\RegistradorS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \Fio_Subindo~combout\(0),
	sload => VCC,
	ena => \Fio_Atualizar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorS|Q\(0));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Fio_Descendo[0]~I\ : cycloneii_io
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
	padio => ww_Fio_Descendo(0),
	combout => \Fio_Descendo~combout\(0));

-- Location: LCFF_X33_Y1_N27
\RegistradorD|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Fio_Clock~clkctrl_outclk\,
	sdata => \Fio_Descendo~combout\(0),
	sload => VCC,
	ena => \Fio_Atualizar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegistradorD|Q\(0));

-- Location: LCCOMB_X28_Y1_N24
\Led7segmentos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led7segmentos|Mux6~0_combout\ = (\RegistradorMedia|OUTPUT[0]~0_combout\ & ((\RegistradorMedia|OUTPUT[3]~6_combout\) # (\RegistradorMedia|OUTPUT[2]~4_combout\ $ (\RegistradorMedia|OUTPUT[1]~2_combout\)))) # (!\RegistradorMedia|OUTPUT[0]~0_combout\ & 
-- ((\RegistradorMedia|OUTPUT[1]~2_combout\) # (\RegistradorMedia|OUTPUT[2]~4_combout\ $ (\RegistradorMedia|OUTPUT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Led7segmentos|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y1_N26
\Led7segmentos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led7segmentos|Mux5~0_combout\ = (\RegistradorMedia|OUTPUT[0]~0_combout\ & (\RegistradorMedia|OUTPUT[3]~6_combout\ $ (((\RegistradorMedia|OUTPUT[1]~2_combout\) # (!\RegistradorMedia|OUTPUT[2]~4_combout\))))) # (!\RegistradorMedia|OUTPUT[0]~0_combout\ & 
-- (!\RegistradorMedia|OUTPUT[2]~4_combout\ & (!\RegistradorMedia|OUTPUT[3]~6_combout\ & \RegistradorMedia|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Led7segmentos|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y1_N20
\Led7segmentos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led7segmentos|Mux4~0_combout\ = (\RegistradorMedia|OUTPUT[1]~2_combout\ & (\RegistradorMedia|OUTPUT[0]~0_combout\ & ((!\RegistradorMedia|OUTPUT[3]~6_combout\)))) # (!\RegistradorMedia|OUTPUT[1]~2_combout\ & ((\RegistradorMedia|OUTPUT[2]~4_combout\ & 
-- ((!\RegistradorMedia|OUTPUT[3]~6_combout\))) # (!\RegistradorMedia|OUTPUT[2]~4_combout\ & (\RegistradorMedia|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Led7segmentos|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y1_N18
\Led7segmentos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led7segmentos|Mux3~0_combout\ = (\RegistradorMedia|OUTPUT[1]~2_combout\ & ((\RegistradorMedia|OUTPUT[0]~0_combout\ & (\RegistradorMedia|OUTPUT[2]~4_combout\)) # (!\RegistradorMedia|OUTPUT[0]~0_combout\ & (!\RegistradorMedia|OUTPUT[2]~4_combout\ & 
-- \RegistradorMedia|OUTPUT[3]~6_combout\)))) # (!\RegistradorMedia|OUTPUT[1]~2_combout\ & (!\RegistradorMedia|OUTPUT[3]~6_combout\ & (\RegistradorMedia|OUTPUT[0]~0_combout\ $ (\RegistradorMedia|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Led7segmentos|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y1_N12
\Led7segmentos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led7segmentos|Mux2~0_combout\ = (\RegistradorMedia|OUTPUT[2]~4_combout\ & (\RegistradorMedia|OUTPUT[3]~6_combout\ & ((\RegistradorMedia|OUTPUT[1]~2_combout\) # (!\RegistradorMedia|OUTPUT[0]~0_combout\)))) # (!\RegistradorMedia|OUTPUT[2]~4_combout\ & 
-- (!\RegistradorMedia|OUTPUT[0]~0_combout\ & (!\RegistradorMedia|OUTPUT[3]~6_combout\ & \RegistradorMedia|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Led7segmentos|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y1_N2
\Led7segmentos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led7segmentos|Mux1~0_combout\ = (\RegistradorMedia|OUTPUT[3]~6_combout\ & ((\RegistradorMedia|OUTPUT[0]~0_combout\ & ((\RegistradorMedia|OUTPUT[1]~2_combout\))) # (!\RegistradorMedia|OUTPUT[0]~0_combout\ & (\RegistradorMedia|OUTPUT[2]~4_combout\)))) # 
-- (!\RegistradorMedia|OUTPUT[3]~6_combout\ & (\RegistradorMedia|OUTPUT[2]~4_combout\ & (\RegistradorMedia|OUTPUT[0]~0_combout\ $ (\RegistradorMedia|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Led7segmentos|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y1_N16
\Led7segmentos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led7segmentos|Mux0~0_combout\ = (\RegistradorMedia|OUTPUT[2]~4_combout\ & (!\RegistradorMedia|OUTPUT[1]~2_combout\ & (\RegistradorMedia|OUTPUT[0]~0_combout\ $ (!\RegistradorMedia|OUTPUT[3]~6_combout\)))) # (!\RegistradorMedia|OUTPUT[2]~4_combout\ & 
-- (\RegistradorMedia|OUTPUT[0]~0_combout\ & (\RegistradorMedia|OUTPUT[3]~6_combout\ $ (!\RegistradorMedia|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \RegistradorMedia|OUTPUT[2]~4_combout\,
	datac => \RegistradorMedia|OUTPUT[3]~6_combout\,
	datad => \RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \Led7segmentos|Mux0~0_combout\);

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Maior~I\ : cycloneii_io
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
	datain => \Comp|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Maior);

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Igual~I\ : cycloneii_io
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
	datain => \Comp|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Igual);

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Fio_Menor~I\ : cycloneii_io
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
	datain => \Comp|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Fio_Menor);

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Subindo[0]~I\ : cycloneii_io
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
	datain => \RegistradorS|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Subindo(0));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Descendo[0]~I\ : cycloneii_io
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
	datain => \RegistradorD|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Descendo(0));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media_DSP_7Seg[0]~I\ : cycloneii_io
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
	datain => \Led7segmentos|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media_DSP_7Seg[1]~I\ : cycloneii_io
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
	datain => \Led7segmentos|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media_DSP_7Seg[2]~I\ : cycloneii_io
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
	datain => \Led7segmentos|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media_DSP_7Seg[3]~I\ : cycloneii_io
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
	datain => \Led7segmentos|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media_DSP_7Seg[4]~I\ : cycloneii_io
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
	datain => \Led7segmentos|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media_DSP_7Seg[5]~I\ : cycloneii_io
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
	datain => \Led7segmentos|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media_DSP_7Seg[6]~I\ : cycloneii_io
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
	datain => \Led7segmentos|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(6));
END structure;


