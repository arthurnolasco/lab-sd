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

-- DATE "05/15/2024 20:12:45"

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

ENTITY 	Sinalizador IS
    PORT (
	E : IN std_logic_vector(3 DOWNTO 0);
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	Subindo : OUT std_logic_vector(0 DOWNTO 0);
	Descendo : OUT std_logic_vector(0 DOWNTO 0);
	Media_DSP_7Seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END Sinalizador;

-- Design Ports Information
-- Subindo[0]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Descendo[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media_DSP_7Seg[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESET	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sinalizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_Subindo : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Descendo : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Media_DSP_7Seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ViaDados|RegistradorMedia|Add0~0_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~5\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~2_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~4_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~6_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~7\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~8_combout\ : std_logic;
SIGNAL \clk|Add0~2_combout\ : std_logic;
SIGNAL \clk|Add0~12_combout\ : std_logic;
SIGNAL \clk|Add0~30_combout\ : std_logic;
SIGNAL \clk|Add0~39\ : std_logic;
SIGNAL \clk|Add0~40_combout\ : std_logic;
SIGNAL \clk|Add0~41\ : std_logic;
SIGNAL \clk|Add0~42_combout\ : std_logic;
SIGNAL \clk|Add0~43\ : std_logic;
SIGNAL \clk|Add0~44_combout\ : std_logic;
SIGNAL \clk|Add0~45\ : std_logic;
SIGNAL \clk|Add0~46_combout\ : std_logic;
SIGNAL \clk|Add0~47\ : std_logic;
SIGNAL \clk|Add0~48_combout\ : std_logic;
SIGNAL \clk|Equal0~0_combout\ : std_logic;
SIGNAL \clk|Equal0~8_combout\ : std_logic;
SIGNAL \clk|cnt~0_combout\ : std_logic;
SIGNAL \clk|cnt~1_combout\ : std_logic;
SIGNAL \clk|cnt~2_combout\ : std_logic;
SIGNAL \clk|cnt~3_combout\ : std_logic;
SIGNAL \clk|cnt~11_combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \clk|Add0~0_combout\ : std_logic;
SIGNAL \clk|Add0~1\ : std_logic;
SIGNAL \clk|Add0~3\ : std_logic;
SIGNAL \clk|Add0~5\ : std_logic;
SIGNAL \clk|Add0~6_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \clk|Add0~7\ : std_logic;
SIGNAL \clk|Add0~9\ : std_logic;
SIGNAL \clk|Add0~10_combout\ : std_logic;
SIGNAL \clk|Add0~11\ : std_logic;
SIGNAL \clk|Add0~13\ : std_logic;
SIGNAL \clk|Add0~14_combout\ : std_logic;
SIGNAL \clk|Add0~15\ : std_logic;
SIGNAL \clk|Add0~17\ : std_logic;
SIGNAL \clk|Add0~18_combout\ : std_logic;
SIGNAL \clk|Add0~19\ : std_logic;
SIGNAL \clk|Add0~20_combout\ : std_logic;
SIGNAL \clk|Add0~21\ : std_logic;
SIGNAL \clk|Add0~22_combout\ : std_logic;
SIGNAL \clk|cnt~10_combout\ : std_logic;
SIGNAL \clk|Add0~23\ : std_logic;
SIGNAL \clk|Add0~25\ : std_logic;
SIGNAL \clk|Add0~27\ : std_logic;
SIGNAL \clk|Add0~29\ : std_logic;
SIGNAL \clk|Add0~31\ : std_logic;
SIGNAL \clk|Add0~32_combout\ : std_logic;
SIGNAL \clk|cnt~6_combout\ : std_logic;
SIGNAL \clk|Add0~33\ : std_logic;
SIGNAL \clk|Add0~35\ : std_logic;
SIGNAL \clk|Add0~36_combout\ : std_logic;
SIGNAL \clk|cnt~5_combout\ : std_logic;
SIGNAL \clk|Add0~37\ : std_logic;
SIGNAL \clk|Add0~38_combout\ : std_logic;
SIGNAL \clk|cnt~4_combout\ : std_logic;
SIGNAL \clk|Add0~34_combout\ : std_logic;
SIGNAL \clk|Equal0~1_combout\ : std_logic;
SIGNAL \clk|Add0~28_combout\ : std_logic;
SIGNAL \clk|cnt~7_combout\ : std_logic;
SIGNAL \clk|Add0~26_combout\ : std_logic;
SIGNAL \clk|cnt~8_combout\ : std_logic;
SIGNAL \clk|Equal0~2_combout\ : std_logic;
SIGNAL \clk|Add0~24_combout\ : std_logic;
SIGNAL \clk|cnt~9_combout\ : std_logic;
SIGNAL \clk|Equal0~3_combout\ : std_logic;
SIGNAL \clk|Equal0~4_combout\ : std_logic;
SIGNAL \clk|cnt~12_combout\ : std_logic;
SIGNAL \clk|Add0~16_combout\ : std_logic;
SIGNAL \clk|Equal0~5_combout\ : std_logic;
SIGNAL \clk|Add0~8_combout\ : std_logic;
SIGNAL \clk|Add0~4_combout\ : std_logic;
SIGNAL \clk|Equal0~6_combout\ : std_logic;
SIGNAL \clk|Equal0~7_combout\ : std_logic;
SIGNAL \clk|clk~0_combout\ : std_logic;
SIGNAL \clk|clk~regout\ : std_logic;
SIGNAL \clk|clk~clkctrl_outclk\ : std_logic;
SIGNAL \ViaDados|RegistradorE|Q[1]~feeder_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorE|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Controle|est_atual.s0~feeder_combout\ : std_logic;
SIGNAL \Controle|est_atual.s0~regout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|var3[3]~feeder_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorE|Q[2]~feeder_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|var1[1]~feeder_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|var3[1]~feeder_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|var2[0]~feeder_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~1\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~3\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~5\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~6_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~1\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~3\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~4_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add0~2_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~0_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add2~1_cout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add2~3_cout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|OUTPUT[0]~1\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \ViaDados|Comp|LessThan0~1_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~7\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|Add1~8_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|OUTPUT[1]~3\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|OUTPUT[2]~5\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ : std_logic;
SIGNAL \ViaDados|Comp|Equal0~1_combout\ : std_logic;
SIGNAL \ViaDados|Comp|LessThan0~0_combout\ : std_logic;
SIGNAL \ViaDados|Comp|LessThan0~2_combout\ : std_logic;
SIGNAL \Controle|est_futuro.s1~0_combout\ : std_logic;
SIGNAL \Controle|est_atual.s1~regout\ : std_logic;
SIGNAL \ViaDados|Comp|Equal0~0_combout\ : std_logic;
SIGNAL \ViaDados|Comp|LessThan1~1_combout\ : std_logic;
SIGNAL \Controle|est_futuro.s2~0_combout\ : std_logic;
SIGNAL \Controle|est_futuro.s2~1_combout\ : std_logic;
SIGNAL \Controle|est_atual.s2~regout\ : std_logic;
SIGNAL \ViaDados|Comp|LessThan1~0_combout\ : std_logic;
SIGNAL \Controle|est_futuro.s3~0_combout\ : std_logic;
SIGNAL \Controle|est_atual.s3~regout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ : std_logic;
SIGNAL \ViaDados|Led7segmentos|Mux6~0_combout\ : std_logic;
SIGNAL \ViaDados|Led7segmentos|Mux5~0_combout\ : std_logic;
SIGNAL \ViaDados|Led7segmentos|Mux4~0_combout\ : std_logic;
SIGNAL \ViaDados|Led7segmentos|Mux3~0_combout\ : std_logic;
SIGNAL \ViaDados|Led7segmentos|Mux2~0_combout\ : std_logic;
SIGNAL \ViaDados|Led7segmentos|Mux1~0_combout\ : std_logic;
SIGNAL \ViaDados|Led7segmentos|Mux0~0_combout\ : std_logic;
SIGNAL \ViaDados|RegistradorS|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ViaDados|RegistradorMedia|var2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Controle|DESCENDO\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Controle|SUBINDO\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ViaDados|RegistradorD|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ViaDados|RegistradorE|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk|cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ViaDados|RegistradorMedia|var4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ViaDados|RegistradorMedia|var3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ViaDados|RegistradorMedia|var1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ViaDados|Led7segmentos|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_est_atual.s1~regout\ : std_logic;
SIGNAL \Controle|ALT_INV_est_atual.s0~regout\ : std_logic;

BEGIN

ww_E <= E;
ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
Subindo <= ww_Subindo;
Descendo <= ww_Descendo;
Media_DSP_7Seg <= ww_Media_DSP_7Seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk|clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk|clk~regout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);
\ViaDados|Led7segmentos|ALT_INV_Mux6~0_combout\ <= NOT \ViaDados|Led7segmentos|Mux6~0_combout\;
\Controle|ALT_INV_est_atual.s1~regout\ <= NOT \Controle|est_atual.s1~regout\;
\Controle|ALT_INV_est_atual.s0~regout\ <= NOT \Controle|est_atual.s0~regout\;

-- Location: LCCOMB_X61_Y19_N2
\ViaDados|RegistradorMedia|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add0~0_combout\ = (\ViaDados|RegistradorMedia|var1\(0) & (\ViaDados|RegistradorMedia|var2\(0) $ (VCC))) # (!\ViaDados|RegistradorMedia|var1\(0) & (\ViaDados|RegistradorMedia|var2\(0) & VCC))
-- \ViaDados|RegistradorMedia|Add0~1\ = CARRY((\ViaDados|RegistradorMedia|var1\(0) & \ViaDados|RegistradorMedia|var2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var1\(0),
	datab => \ViaDados|RegistradorMedia|var2\(0),
	datad => VCC,
	combout => \ViaDados|RegistradorMedia|Add0~0_combout\,
	cout => \ViaDados|RegistradorMedia|Add0~1\);

-- Location: LCCOMB_X61_Y19_N6
\ViaDados|RegistradorMedia|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add0~4_combout\ = ((\ViaDados|RegistradorMedia|var1\(2) $ (\ViaDados|RegistradorMedia|var2\(2) $ (!\ViaDados|RegistradorMedia|Add0~3\)))) # (GND)
-- \ViaDados|RegistradorMedia|Add0~5\ = CARRY((\ViaDados|RegistradorMedia|var1\(2) & ((\ViaDados|RegistradorMedia|var2\(2)) # (!\ViaDados|RegistradorMedia|Add0~3\))) # (!\ViaDados|RegistradorMedia|var1\(2) & (\ViaDados|RegistradorMedia|var2\(2) & 
-- !\ViaDados|RegistradorMedia|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var1\(2),
	datab => \ViaDados|RegistradorMedia|var2\(2),
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add0~3\,
	combout => \ViaDados|RegistradorMedia|Add0~4_combout\,
	cout => \ViaDados|RegistradorMedia|Add0~5\);

-- Location: LCCOMB_X62_Y19_N24
\ViaDados|RegistradorMedia|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add1~2_combout\ = (\ViaDados|RegistradorMedia|var3\(1) & ((\ViaDados|RegistradorMedia|var4\(1) & (\ViaDados|RegistradorMedia|Add1~1\ & VCC)) # (!\ViaDados|RegistradorMedia|var4\(1) & (!\ViaDados|RegistradorMedia|Add1~1\)))) # 
-- (!\ViaDados|RegistradorMedia|var3\(1) & ((\ViaDados|RegistradorMedia|var4\(1) & (!\ViaDados|RegistradorMedia|Add1~1\)) # (!\ViaDados|RegistradorMedia|var4\(1) & ((\ViaDados|RegistradorMedia|Add1~1\) # (GND)))))
-- \ViaDados|RegistradorMedia|Add1~3\ = CARRY((\ViaDados|RegistradorMedia|var3\(1) & (!\ViaDados|RegistradorMedia|var4\(1) & !\ViaDados|RegistradorMedia|Add1~1\)) # (!\ViaDados|RegistradorMedia|var3\(1) & ((!\ViaDados|RegistradorMedia|Add1~1\) # 
-- (!\ViaDados|RegistradorMedia|var4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var3\(1),
	datab => \ViaDados|RegistradorMedia|var4\(1),
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add1~1\,
	combout => \ViaDados|RegistradorMedia|Add1~2_combout\,
	cout => \ViaDados|RegistradorMedia|Add1~3\);

-- Location: LCCOMB_X62_Y19_N26
\ViaDados|RegistradorMedia|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add1~4_combout\ = ((\ViaDados|RegistradorMedia|var4\(2) $ (\ViaDados|RegistradorMedia|var3\(2) $ (!\ViaDados|RegistradorMedia|Add1~3\)))) # (GND)
-- \ViaDados|RegistradorMedia|Add1~5\ = CARRY((\ViaDados|RegistradorMedia|var4\(2) & ((\ViaDados|RegistradorMedia|var3\(2)) # (!\ViaDados|RegistradorMedia|Add1~3\))) # (!\ViaDados|RegistradorMedia|var4\(2) & (\ViaDados|RegistradorMedia|var3\(2) & 
-- !\ViaDados|RegistradorMedia|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var4\(2),
	datab => \ViaDados|RegistradorMedia|var3\(2),
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add1~3\,
	combout => \ViaDados|RegistradorMedia|Add1~4_combout\,
	cout => \ViaDados|RegistradorMedia|Add1~5\);

-- Location: LCCOMB_X61_Y19_N8
\ViaDados|RegistradorMedia|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add0~6_combout\ = (\ViaDados|RegistradorMedia|var1\(3) & ((\ViaDados|RegistradorMedia|var2\(3) & (\ViaDados|RegistradorMedia|Add0~5\ & VCC)) # (!\ViaDados|RegistradorMedia|var2\(3) & (!\ViaDados|RegistradorMedia|Add0~5\)))) # 
-- (!\ViaDados|RegistradorMedia|var1\(3) & ((\ViaDados|RegistradorMedia|var2\(3) & (!\ViaDados|RegistradorMedia|Add0~5\)) # (!\ViaDados|RegistradorMedia|var2\(3) & ((\ViaDados|RegistradorMedia|Add0~5\) # (GND)))))
-- \ViaDados|RegistradorMedia|Add0~7\ = CARRY((\ViaDados|RegistradorMedia|var1\(3) & (!\ViaDados|RegistradorMedia|var2\(3) & !\ViaDados|RegistradorMedia|Add0~5\)) # (!\ViaDados|RegistradorMedia|var1\(3) & ((!\ViaDados|RegistradorMedia|Add0~5\) # 
-- (!\ViaDados|RegistradorMedia|var2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var1\(3),
	datab => \ViaDados|RegistradorMedia|var2\(3),
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add0~5\,
	combout => \ViaDados|RegistradorMedia|Add0~6_combout\,
	cout => \ViaDados|RegistradorMedia|Add0~7\);

-- Location: LCCOMB_X61_Y19_N10
\ViaDados|RegistradorMedia|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add0~8_combout\ = !\ViaDados|RegistradorMedia|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ViaDados|RegistradorMedia|Add0~7\,
	combout => \ViaDados|RegistradorMedia|Add0~8_combout\);

-- Location: LCCOMB_X35_Y2_N10
\clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~2_combout\ = (\clk|cnt\(1) & (!\clk|Add0~1\)) # (!\clk|cnt\(1) & ((\clk|Add0~1\) # (GND)))
-- \clk|Add0~3\ = CARRY((!\clk|Add0~1\) # (!\clk|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(1),
	datad => VCC,
	cin => \clk|Add0~1\,
	combout => \clk|Add0~2_combout\,
	cout => \clk|Add0~3\);

-- Location: LCCOMB_X35_Y2_N20
\clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~12_combout\ = (\clk|cnt\(6) & (\clk|Add0~11\ $ (GND))) # (!\clk|cnt\(6) & (!\clk|Add0~11\ & VCC))
-- \clk|Add0~13\ = CARRY((\clk|cnt\(6) & !\clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(6),
	datad => VCC,
	cin => \clk|Add0~11\,
	combout => \clk|Add0~12_combout\,
	cout => \clk|Add0~13\);

-- Location: LCCOMB_X35_Y1_N6
\clk|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~30_combout\ = (\clk|cnt\(15) & (!\clk|Add0~29\)) # (!\clk|cnt\(15) & ((\clk|Add0~29\) # (GND)))
-- \clk|Add0~31\ = CARRY((!\clk|Add0~29\) # (!\clk|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(15),
	datad => VCC,
	cin => \clk|Add0~29\,
	combout => \clk|Add0~30_combout\,
	cout => \clk|Add0~31\);

-- Location: LCCOMB_X35_Y1_N14
\clk|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~38_combout\ = (\clk|cnt\(19) & (!\clk|Add0~37\)) # (!\clk|cnt\(19) & ((\clk|Add0~37\) # (GND)))
-- \clk|Add0~39\ = CARRY((!\clk|Add0~37\) # (!\clk|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(19),
	datad => VCC,
	cin => \clk|Add0~37\,
	combout => \clk|Add0~38_combout\,
	cout => \clk|Add0~39\);

-- Location: LCCOMB_X35_Y1_N16
\clk|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~40_combout\ = (\clk|cnt\(20) & (\clk|Add0~39\ $ (GND))) # (!\clk|cnt\(20) & (!\clk|Add0~39\ & VCC))
-- \clk|Add0~41\ = CARRY((\clk|cnt\(20) & !\clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(20),
	datad => VCC,
	cin => \clk|Add0~39\,
	combout => \clk|Add0~40_combout\,
	cout => \clk|Add0~41\);

-- Location: LCCOMB_X35_Y1_N18
\clk|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~42_combout\ = (\clk|cnt\(21) & (!\clk|Add0~41\)) # (!\clk|cnt\(21) & ((\clk|Add0~41\) # (GND)))
-- \clk|Add0~43\ = CARRY((!\clk|Add0~41\) # (!\clk|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(21),
	datad => VCC,
	cin => \clk|Add0~41\,
	combout => \clk|Add0~42_combout\,
	cout => \clk|Add0~43\);

-- Location: LCCOMB_X35_Y1_N20
\clk|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~44_combout\ = (\clk|cnt\(22) & (\clk|Add0~43\ $ (GND))) # (!\clk|cnt\(22) & (!\clk|Add0~43\ & VCC))
-- \clk|Add0~45\ = CARRY((\clk|cnt\(22) & !\clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(22),
	datad => VCC,
	cin => \clk|Add0~43\,
	combout => \clk|Add0~44_combout\,
	cout => \clk|Add0~45\);

-- Location: LCCOMB_X35_Y1_N22
\clk|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~46_combout\ = (\clk|cnt\(23) & (!\clk|Add0~45\)) # (!\clk|cnt\(23) & ((\clk|Add0~45\) # (GND)))
-- \clk|Add0~47\ = CARRY((!\clk|Add0~45\) # (!\clk|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(23),
	datad => VCC,
	cin => \clk|Add0~45\,
	combout => \clk|Add0~46_combout\,
	cout => \clk|Add0~47\);

-- Location: LCCOMB_X35_Y1_N24
\clk|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~48_combout\ = \clk|Add0~47\ $ (!\clk|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk|cnt\(24),
	cin => \clk|Add0~47\,
	combout => \clk|Add0~48_combout\);

-- Location: LCFF_X62_Y19_N27
\ViaDados|RegistradorMedia|var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var3\(2),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var4\(2));

-- Location: LCFF_X62_Y19_N29
\ViaDados|RegistradorMedia|var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var3\(3),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var4\(3));

-- Location: LCFF_X35_Y1_N27
\clk|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(24));

-- Location: LCFF_X35_Y1_N29
\clk|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(22));

-- Location: LCFF_X35_Y1_N31
\clk|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~2_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(21));

-- Location: LCFF_X35_Y1_N23
\clk|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~46_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(23));

-- Location: LCCOMB_X34_Y1_N10
\clk|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~0_combout\ = (\clk|cnt\(24) & (!\clk|cnt\(23) & (\clk|cnt\(22) & \clk|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(24),
	datab => \clk|cnt\(23),
	datac => \clk|cnt\(22),
	datad => \clk|cnt\(21),
	combout => \clk|Equal0~0_combout\);

-- Location: LCFF_X34_Y1_N17
\clk|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~3_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(20));

-- Location: LCFF_X35_Y1_N7
\clk|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~30_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(15));

-- Location: LCFF_X35_Y2_N7
\clk|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~11_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(6));

-- Location: LCFF_X35_Y2_N11
\clk|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~2_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(1));

-- Location: LCCOMB_X34_Y1_N2
\clk|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~8_combout\ = (\clk|Equal0~4_combout\ & (!\clk|cnt\(0) & (\clk|Equal0~5_combout\ & \clk|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~4_combout\,
	datab => \clk|cnt\(0),
	datac => \clk|Equal0~5_combout\,
	datad => \clk|Equal0~6_combout\,
	combout => \clk|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y1_N26
\clk|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~0_combout\ = (\clk|Add0~48_combout\ & !\clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk|Add0~48_combout\,
	datad => \clk|Equal0~8_combout\,
	combout => \clk|cnt~0_combout\);

-- Location: LCCOMB_X35_Y1_N28
\clk|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~1_combout\ = (\clk|Add0~44_combout\ & !\clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk|Add0~44_combout\,
	datad => \clk|Equal0~8_combout\,
	combout => \clk|cnt~1_combout\);

-- Location: LCCOMB_X35_Y1_N30
\clk|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~2_combout\ = (!\clk|Equal0~8_combout\ & \clk|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~8_combout\,
	datad => \clk|Add0~42_combout\,
	combout => \clk|cnt~2_combout\);

-- Location: LCCOMB_X34_Y1_N16
\clk|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~3_combout\ = (\clk|Add0~40_combout\ & !\clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk|Add0~40_combout\,
	datad => \clk|Equal0~8_combout\,
	combout => \clk|cnt~3_combout\);

-- Location: LCCOMB_X35_Y2_N6
\clk|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~11_combout\ = (\clk|Add0~12_combout\ & ((!\clk|Equal0~4_combout\) # (!\clk|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~7_combout\,
	datac => \clk|Add0~12_combout\,
	datad => \clk|Equal0~4_combout\,
	combout => \clk|cnt~11_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : cycloneii_io
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
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: CLKCTRL_G2
\CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y2_N8
\clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~0_combout\ = \clk|cnt\(0) $ (VCC)
-- \clk|Add0~1\ = CARRY(\clk|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(0),
	datad => VCC,
	combout => \clk|Add0~0_combout\,
	cout => \clk|Add0~1\);

-- Location: LCCOMB_X35_Y2_N12
\clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~4_combout\ = (\clk|cnt\(2) & (\clk|Add0~3\ $ (GND))) # (!\clk|cnt\(2) & (!\clk|Add0~3\ & VCC))
-- \clk|Add0~5\ = CARRY((\clk|cnt\(2) & !\clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(2),
	datad => VCC,
	cin => \clk|Add0~3\,
	combout => \clk|Add0~4_combout\,
	cout => \clk|Add0~5\);

-- Location: LCCOMB_X35_Y2_N14
\clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~6_combout\ = (\clk|cnt\(3) & (!\clk|Add0~5\)) # (!\clk|cnt\(3) & ((\clk|Add0~5\) # (GND)))
-- \clk|Add0~7\ = CARRY((!\clk|Add0~5\) # (!\clk|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(3),
	datad => VCC,
	cin => \clk|Add0~5\,
	combout => \clk|Add0~6_combout\,
	cout => \clk|Add0~7\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
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
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G15
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X35_Y2_N15
\clk|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~6_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(3));

-- Location: LCCOMB_X35_Y2_N16
\clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~8_combout\ = (\clk|cnt\(4) & (\clk|Add0~7\ $ (GND))) # (!\clk|cnt\(4) & (!\clk|Add0~7\ & VCC))
-- \clk|Add0~9\ = CARRY((\clk|cnt\(4) & !\clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(4),
	datad => VCC,
	cin => \clk|Add0~7\,
	combout => \clk|Add0~8_combout\,
	cout => \clk|Add0~9\);

-- Location: LCCOMB_X35_Y2_N18
\clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~10_combout\ = (\clk|cnt\(5) & (!\clk|Add0~9\)) # (!\clk|cnt\(5) & ((\clk|Add0~9\) # (GND)))
-- \clk|Add0~11\ = CARRY((!\clk|Add0~9\) # (!\clk|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(5),
	datad => VCC,
	cin => \clk|Add0~9\,
	combout => \clk|Add0~10_combout\,
	cout => \clk|Add0~11\);

-- Location: LCFF_X35_Y2_N19
\clk|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~10_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(5));

-- Location: LCCOMB_X35_Y2_N22
\clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~14_combout\ = (\clk|cnt\(7) & (!\clk|Add0~13\)) # (!\clk|cnt\(7) & ((\clk|Add0~13\) # (GND)))
-- \clk|Add0~15\ = CARRY((!\clk|Add0~13\) # (!\clk|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(7),
	datad => VCC,
	cin => \clk|Add0~13\,
	combout => \clk|Add0~14_combout\,
	cout => \clk|Add0~15\);

-- Location: LCFF_X35_Y2_N23
\clk|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~14_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(7));

-- Location: LCCOMB_X35_Y2_N24
\clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~16_combout\ = (\clk|cnt\(8) & (\clk|Add0~15\ $ (GND))) # (!\clk|cnt\(8) & (!\clk|Add0~15\ & VCC))
-- \clk|Add0~17\ = CARRY((\clk|cnt\(8) & !\clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(8),
	datad => VCC,
	cin => \clk|Add0~15\,
	combout => \clk|Add0~16_combout\,
	cout => \clk|Add0~17\);

-- Location: LCCOMB_X35_Y2_N26
\clk|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~18_combout\ = (\clk|cnt\(9) & (!\clk|Add0~17\)) # (!\clk|cnt\(9) & ((\clk|Add0~17\) # (GND)))
-- \clk|Add0~19\ = CARRY((!\clk|Add0~17\) # (!\clk|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(9),
	datad => VCC,
	cin => \clk|Add0~17\,
	combout => \clk|Add0~18_combout\,
	cout => \clk|Add0~19\);

-- Location: LCFF_X35_Y2_N27
\clk|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~18_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(9));

-- Location: LCCOMB_X35_Y2_N28
\clk|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~20_combout\ = (\clk|cnt\(10) & (\clk|Add0~19\ $ (GND))) # (!\clk|cnt\(10) & (!\clk|Add0~19\ & VCC))
-- \clk|Add0~21\ = CARRY((\clk|cnt\(10) & !\clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(10),
	datad => VCC,
	cin => \clk|Add0~19\,
	combout => \clk|Add0~20_combout\,
	cout => \clk|Add0~21\);

-- Location: LCFF_X35_Y2_N29
\clk|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~20_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(10));

-- Location: LCCOMB_X35_Y2_N30
\clk|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~22_combout\ = (\clk|cnt\(11) & (!\clk|Add0~21\)) # (!\clk|cnt\(11) & ((\clk|Add0~21\) # (GND)))
-- \clk|Add0~23\ = CARRY((!\clk|Add0~21\) # (!\clk|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(11),
	datad => VCC,
	cin => \clk|Add0~21\,
	combout => \clk|Add0~22_combout\,
	cout => \clk|Add0~23\);

-- Location: LCCOMB_X35_Y2_N4
\clk|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~10_combout\ = (\clk|Add0~22_combout\ & ((!\clk|Equal0~7_combout\) # (!\clk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|Equal0~4_combout\,
	datac => \clk|Equal0~7_combout\,
	datad => \clk|Add0~22_combout\,
	combout => \clk|cnt~10_combout\);

-- Location: LCFF_X35_Y2_N5
\clk|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~10_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(11));

-- Location: LCCOMB_X35_Y1_N0
\clk|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~24_combout\ = (\clk|cnt\(12) & (\clk|Add0~23\ $ (GND))) # (!\clk|cnt\(12) & (!\clk|Add0~23\ & VCC))
-- \clk|Add0~25\ = CARRY((\clk|cnt\(12) & !\clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(12),
	datad => VCC,
	cin => \clk|Add0~23\,
	combout => \clk|Add0~24_combout\,
	cout => \clk|Add0~25\);

-- Location: LCCOMB_X35_Y1_N2
\clk|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~26_combout\ = (\clk|cnt\(13) & (!\clk|Add0~25\)) # (!\clk|cnt\(13) & ((\clk|Add0~25\) # (GND)))
-- \clk|Add0~27\ = CARRY((!\clk|Add0~25\) # (!\clk|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(13),
	datad => VCC,
	cin => \clk|Add0~25\,
	combout => \clk|Add0~26_combout\,
	cout => \clk|Add0~27\);

-- Location: LCCOMB_X35_Y1_N4
\clk|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~28_combout\ = (\clk|cnt\(14) & (\clk|Add0~27\ $ (GND))) # (!\clk|cnt\(14) & (!\clk|Add0~27\ & VCC))
-- \clk|Add0~29\ = CARRY((\clk|cnt\(14) & !\clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(14),
	datad => VCC,
	cin => \clk|Add0~27\,
	combout => \clk|Add0~28_combout\,
	cout => \clk|Add0~29\);

-- Location: LCCOMB_X35_Y1_N8
\clk|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~32_combout\ = (\clk|cnt\(16) & (\clk|Add0~31\ $ (GND))) # (!\clk|cnt\(16) & (!\clk|Add0~31\ & VCC))
-- \clk|Add0~33\ = CARRY((\clk|cnt\(16) & !\clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(16),
	datad => VCC,
	cin => \clk|Add0~31\,
	combout => \clk|Add0~32_combout\,
	cout => \clk|Add0~33\);

-- Location: LCCOMB_X34_Y1_N26
\clk|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~6_combout\ = (\clk|Add0~32_combout\ & ((!\clk|Equal0~4_combout\) # (!\clk|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|Equal0~7_combout\,
	datac => \clk|Add0~32_combout\,
	datad => \clk|Equal0~4_combout\,
	combout => \clk|cnt~6_combout\);

-- Location: LCFF_X34_Y1_N27
\clk|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~6_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(16));

-- Location: LCCOMB_X35_Y1_N10
\clk|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~34_combout\ = (\clk|cnt\(17) & (!\clk|Add0~33\)) # (!\clk|cnt\(17) & ((\clk|Add0~33\) # (GND)))
-- \clk|Add0~35\ = CARRY((!\clk|Add0~33\) # (!\clk|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(17),
	datad => VCC,
	cin => \clk|Add0~33\,
	combout => \clk|Add0~34_combout\,
	cout => \clk|Add0~35\);

-- Location: LCCOMB_X35_Y1_N12
\clk|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Add0~36_combout\ = (\clk|cnt\(18) & (\clk|Add0~35\ $ (GND))) # (!\clk|cnt\(18) & (!\clk|Add0~35\ & VCC))
-- \clk|Add0~37\ = CARRY((\clk|cnt\(18) & !\clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(18),
	datad => VCC,
	cin => \clk|Add0~35\,
	combout => \clk|Add0~36_combout\,
	cout => \clk|Add0~37\);

-- Location: LCCOMB_X34_Y1_N28
\clk|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~5_combout\ = (\clk|Add0~36_combout\ & ((!\clk|Equal0~4_combout\) # (!\clk|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|Equal0~7_combout\,
	datac => \clk|Add0~36_combout\,
	datad => \clk|Equal0~4_combout\,
	combout => \clk|cnt~5_combout\);

-- Location: LCFF_X34_Y1_N29
\clk|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~5_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(18));

-- Location: LCCOMB_X34_Y1_N18
\clk|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~4_combout\ = (\clk|Add0~38_combout\ & ((!\clk|Equal0~4_combout\) # (!\clk|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|Equal0~7_combout\,
	datac => \clk|Add0~38_combout\,
	datad => \clk|Equal0~4_combout\,
	combout => \clk|cnt~4_combout\);

-- Location: LCFF_X34_Y1_N19
\clk|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~4_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(19));

-- Location: LCFF_X35_Y1_N11
\clk|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~34_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(17));

-- Location: LCCOMB_X34_Y1_N4
\clk|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~1_combout\ = (\clk|cnt\(20) & (\clk|cnt\(19) & (!\clk|cnt\(17) & \clk|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(20),
	datab => \clk|cnt\(19),
	datac => \clk|cnt\(17),
	datad => \clk|cnt\(18),
	combout => \clk|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y1_N14
\clk|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~7_combout\ = (\clk|Add0~28_combout\ & ((!\clk|Equal0~7_combout\) # (!\clk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~4_combout\,
	datab => \clk|Equal0~7_combout\,
	datad => \clk|Add0~28_combout\,
	combout => \clk|cnt~7_combout\);

-- Location: LCFF_X34_Y1_N15
\clk|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~7_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(14));

-- Location: LCCOMB_X34_Y1_N8
\clk|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~8_combout\ = (\clk|Add0~26_combout\ & ((!\clk|Equal0~7_combout\) # (!\clk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~4_combout\,
	datab => \clk|Equal0~7_combout\,
	datad => \clk|Add0~26_combout\,
	combout => \clk|cnt~8_combout\);

-- Location: LCFF_X34_Y1_N9
\clk|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~8_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(13));

-- Location: LCCOMB_X34_Y1_N24
\clk|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~2_combout\ = (!\clk|cnt\(15) & (\clk|cnt\(14) & (\clk|cnt\(13) & \clk|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(15),
	datab => \clk|cnt\(14),
	datac => \clk|cnt\(13),
	datad => \clk|cnt\(16),
	combout => \clk|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y1_N30
\clk|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~9_combout\ = (\clk|Add0~24_combout\ & ((!\clk|Equal0~4_combout\) # (!\clk|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|Equal0~7_combout\,
	datac => \clk|Add0~24_combout\,
	datad => \clk|Equal0~4_combout\,
	combout => \clk|cnt~9_combout\);

-- Location: LCFF_X34_Y1_N31
\clk|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~9_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(12));

-- Location: LCCOMB_X34_Y1_N22
\clk|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~3_combout\ = (\clk|cnt\(11) & (\clk|cnt\(12) & (!\clk|cnt\(10) & !\clk|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(11),
	datab => \clk|cnt\(12),
	datac => \clk|cnt\(10),
	datad => \clk|cnt\(9),
	combout => \clk|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y1_N6
\clk|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~4_combout\ = (\clk|Equal0~0_combout\ & (\clk|Equal0~1_combout\ & (\clk|Equal0~2_combout\ & \clk|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~0_combout\,
	datab => \clk|Equal0~1_combout\,
	datac => \clk|Equal0~2_combout\,
	datad => \clk|Equal0~3_combout\,
	combout => \clk|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y2_N2
\clk|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|cnt~12_combout\ = (\clk|Add0~0_combout\ & ((!\clk|Equal0~4_combout\) # (!\clk|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|Add0~0_combout\,
	datac => \clk|Equal0~7_combout\,
	datad => \clk|Equal0~4_combout\,
	combout => \clk|cnt~12_combout\);

-- Location: LCFF_X35_Y2_N3
\clk|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|cnt~12_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(0));

-- Location: LCFF_X35_Y2_N25
\clk|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~16_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(8));

-- Location: LCCOMB_X34_Y2_N16
\clk|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~5_combout\ = (\clk|cnt\(6) & (!\clk|cnt\(7) & (!\clk|cnt\(5) & !\clk|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(6),
	datab => \clk|cnt\(7),
	datac => \clk|cnt\(5),
	datad => \clk|cnt\(8),
	combout => \clk|Equal0~5_combout\);

-- Location: LCFF_X35_Y2_N17
\clk|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~8_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(4));

-- Location: LCFF_X35_Y2_N13
\clk|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|Add0~4_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|cnt\(2));

-- Location: LCCOMB_X35_Y2_N0
\clk|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~6_combout\ = (!\clk|cnt\(1) & (!\clk|cnt\(3) & (!\clk|cnt\(4) & !\clk|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|cnt\(1),
	datab => \clk|cnt\(3),
	datac => \clk|cnt\(4),
	datad => \clk|cnt\(2),
	combout => \clk|Equal0~6_combout\);

-- Location: LCCOMB_X34_Y1_N0
\clk|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|Equal0~7_combout\ = (!\clk|cnt\(0) & (\clk|Equal0~5_combout\ & \clk|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|cnt\(0),
	datac => \clk|Equal0~5_combout\,
	datad => \clk|Equal0~6_combout\,
	combout => \clk|Equal0~7_combout\);

-- Location: LCCOMB_X34_Y1_N20
\clk|clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk|clk~0_combout\ = \clk|clk~regout\ $ (((!\RESET~combout\ & (\clk|Equal0~7_combout\ & \clk|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datab => \clk|Equal0~7_combout\,
	datac => \clk|clk~regout\,
	datad => \clk|Equal0~4_combout\,
	combout => \clk|clk~0_combout\);

-- Location: LCFF_X34_Y1_N21
\clk|clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \clk|clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|clk~regout\);

-- Location: CLKCTRL_G14
\clk|clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk|clk~clkctrl_outclk\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[1]~I\ : cycloneii_io
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
	padio => ww_E(1),
	combout => \E~combout\(1));

-- Location: LCCOMB_X64_Y19_N30
\ViaDados|RegistradorE|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorE|Q[1]~feeder_combout\ = \E~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(1),
	combout => \ViaDados|RegistradorE|Q[1]~feeder_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[0]~I\ : cycloneii_io
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
	padio => ww_E(0),
	combout => \E~combout\(0));

-- Location: LCFF_X64_Y19_N1
\ViaDados|RegistradorE|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \E~combout\(0),
	sload => VCC,
	ena => \Controle|ALT_INV_est_atual.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorE|Q\(0));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[3]~I\ : cycloneii_io
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
	padio => ww_E(3),
	combout => \E~combout\(3));

-- Location: LCCOMB_X63_Y19_N2
\ViaDados|RegistradorE|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorE|Q[3]~feeder_combout\ = \E~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(3),
	combout => \ViaDados|RegistradorE|Q[3]~feeder_combout\);

-- Location: LCFF_X63_Y19_N3
\ViaDados|RegistradorE|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \ViaDados|RegistradorE|Q[3]~feeder_combout\,
	ena => \Controle|ALT_INV_est_atual.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorE|Q\(3));

-- Location: LCCOMB_X62_Y19_N18
\Controle|est_atual.s0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controle|est_atual.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Controle|est_atual.s0~feeder_combout\);

-- Location: LCFF_X62_Y19_N19
\Controle|est_atual.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \Controle|est_atual.s0~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controle|est_atual.s0~regout\);

-- Location: LCFF_X61_Y19_N7
\ViaDados|RegistradorMedia|var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorE|Q\(3),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var1\(3));

-- Location: LCFF_X61_Y19_N9
\ViaDados|RegistradorMedia|var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var1\(3),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var2\(3));

-- Location: LCCOMB_X62_Y19_N4
\ViaDados|RegistradorMedia|var3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|var3[3]~feeder_combout\ = \ViaDados|RegistradorMedia|var2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ViaDados|RegistradorMedia|var2\(3),
	combout => \ViaDados|RegistradorMedia|var3[3]~feeder_combout\);

-- Location: LCFF_X62_Y19_N5
\ViaDados|RegistradorMedia|var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \ViaDados|RegistradorMedia|var3[3]~feeder_combout\,
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var3\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[2]~I\ : cycloneii_io
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
	padio => ww_E(2),
	combout => \E~combout\(2));

-- Location: LCCOMB_X64_Y19_N8
\ViaDados|RegistradorE|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorE|Q[2]~feeder_combout\ = \E~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(2),
	combout => \ViaDados|RegistradorE|Q[2]~feeder_combout\);

-- Location: LCFF_X64_Y19_N9
\ViaDados|RegistradorE|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \ViaDados|RegistradorE|Q[2]~feeder_combout\,
	ena => \Controle|ALT_INV_est_atual.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorE|Q\(2));

-- Location: LCFF_X61_Y19_N3
\ViaDados|RegistradorMedia|var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorE|Q\(2),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var1\(2));

-- Location: LCFF_X61_Y19_N5
\ViaDados|RegistradorMedia|var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var1\(2),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var2\(2));

-- Location: LCFF_X62_Y19_N1
\ViaDados|RegistradorMedia|var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var2\(2),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var3\(2));

-- Location: LCCOMB_X61_Y19_N28
\ViaDados|RegistradorMedia|var1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|var1[1]~feeder_combout\ = \ViaDados|RegistradorE|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ViaDados|RegistradorE|Q\(1),
	combout => \ViaDados|RegistradorMedia|var1[1]~feeder_combout\);

-- Location: LCFF_X61_Y19_N29
\ViaDados|RegistradorMedia|var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \ViaDados|RegistradorMedia|var1[1]~feeder_combout\,
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var1\(1));

-- Location: LCFF_X61_Y19_N17
\ViaDados|RegistradorMedia|var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var1\(1),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var2\(1));

-- Location: LCCOMB_X62_Y19_N2
\ViaDados|RegistradorMedia|var3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|var3[1]~feeder_combout\ = \ViaDados|RegistradorMedia|var2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ViaDados|RegistradorMedia|var2\(1),
	combout => \ViaDados|RegistradorMedia|var3[1]~feeder_combout\);

-- Location: LCFF_X62_Y19_N3
\ViaDados|RegistradorMedia|var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \ViaDados|RegistradorMedia|var3[1]~feeder_combout\,
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var3\(1));

-- Location: LCFF_X62_Y19_N25
\ViaDados|RegistradorMedia|var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var3\(1),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var4\(1));

-- Location: LCFF_X61_Y19_N21
\ViaDados|RegistradorMedia|var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorE|Q\(0),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var1\(0));

-- Location: LCCOMB_X61_Y19_N30
\ViaDados|RegistradorMedia|var2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|var2[0]~feeder_combout\ = \ViaDados|RegistradorMedia|var1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ViaDados|RegistradorMedia|var1\(0),
	combout => \ViaDados|RegistradorMedia|var2[0]~feeder_combout\);

-- Location: LCFF_X61_Y19_N31
\ViaDados|RegistradorMedia|var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \ViaDados|RegistradorMedia|var2[0]~feeder_combout\,
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var2\(0));

-- Location: LCFF_X62_Y19_N21
\ViaDados|RegistradorMedia|var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var2\(0),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var3\(0));

-- Location: LCFF_X62_Y19_N23
\ViaDados|RegistradorMedia|var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	sdata => \ViaDados|RegistradorMedia|var3\(0),
	aclr => \Controle|ALT_INV_est_atual.s0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorMedia|var4\(0));

-- Location: LCCOMB_X62_Y19_N22
\ViaDados|RegistradorMedia|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add1~0_combout\ = (\ViaDados|RegistradorMedia|var3\(0) & (\ViaDados|RegistradorMedia|var4\(0) $ (VCC))) # (!\ViaDados|RegistradorMedia|var3\(0) & (\ViaDados|RegistradorMedia|var4\(0) & VCC))
-- \ViaDados|RegistradorMedia|Add1~1\ = CARRY((\ViaDados|RegistradorMedia|var3\(0) & \ViaDados|RegistradorMedia|var4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var3\(0),
	datab => \ViaDados|RegistradorMedia|var4\(0),
	datad => VCC,
	combout => \ViaDados|RegistradorMedia|Add1~0_combout\,
	cout => \ViaDados|RegistradorMedia|Add1~1\);

-- Location: LCCOMB_X62_Y19_N28
\ViaDados|RegistradorMedia|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add1~6_combout\ = (\ViaDados|RegistradorMedia|var4\(3) & ((\ViaDados|RegistradorMedia|var3\(3) & (\ViaDados|RegistradorMedia|Add1~5\ & VCC)) # (!\ViaDados|RegistradorMedia|var3\(3) & (!\ViaDados|RegistradorMedia|Add1~5\)))) # 
-- (!\ViaDados|RegistradorMedia|var4\(3) & ((\ViaDados|RegistradorMedia|var3\(3) & (!\ViaDados|RegistradorMedia|Add1~5\)) # (!\ViaDados|RegistradorMedia|var3\(3) & ((\ViaDados|RegistradorMedia|Add1~5\) # (GND)))))
-- \ViaDados|RegistradorMedia|Add1~7\ = CARRY((\ViaDados|RegistradorMedia|var4\(3) & (!\ViaDados|RegistradorMedia|var3\(3) & !\ViaDados|RegistradorMedia|Add1~5\)) # (!\ViaDados|RegistradorMedia|var4\(3) & ((!\ViaDados|RegistradorMedia|Add1~5\) # 
-- (!\ViaDados|RegistradorMedia|var3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var4\(3),
	datab => \ViaDados|RegistradorMedia|var3\(3),
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add1~5\,
	combout => \ViaDados|RegistradorMedia|Add1~6_combout\,
	cout => \ViaDados|RegistradorMedia|Add1~7\);

-- Location: LCCOMB_X61_Y19_N4
\ViaDados|RegistradorMedia|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add0~2_combout\ = (\ViaDados|RegistradorMedia|var2\(1) & ((\ViaDados|RegistradorMedia|var1\(1) & (\ViaDados|RegistradorMedia|Add0~1\ & VCC)) # (!\ViaDados|RegistradorMedia|var1\(1) & (!\ViaDados|RegistradorMedia|Add0~1\)))) # 
-- (!\ViaDados|RegistradorMedia|var2\(1) & ((\ViaDados|RegistradorMedia|var1\(1) & (!\ViaDados|RegistradorMedia|Add0~1\)) # (!\ViaDados|RegistradorMedia|var1\(1) & ((\ViaDados|RegistradorMedia|Add0~1\) # (GND)))))
-- \ViaDados|RegistradorMedia|Add0~3\ = CARRY((\ViaDados|RegistradorMedia|var2\(1) & (!\ViaDados|RegistradorMedia|var1\(1) & !\ViaDados|RegistradorMedia|Add0~1\)) # (!\ViaDados|RegistradorMedia|var2\(1) & ((!\ViaDados|RegistradorMedia|Add0~1\) # 
-- (!\ViaDados|RegistradorMedia|var1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|var2\(1),
	datab => \ViaDados|RegistradorMedia|var1\(1),
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add0~1\,
	combout => \ViaDados|RegistradorMedia|Add0~2_combout\,
	cout => \ViaDados|RegistradorMedia|Add0~3\);

-- Location: LCCOMB_X62_Y19_N6
\ViaDados|RegistradorMedia|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add2~1_cout\ = CARRY((\ViaDados|RegistradorMedia|Add0~0_combout\ & \ViaDados|RegistradorMedia|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|Add0~0_combout\,
	datab => \ViaDados|RegistradorMedia|Add1~0_combout\,
	datad => VCC,
	cout => \ViaDados|RegistradorMedia|Add2~1_cout\);

-- Location: LCCOMB_X62_Y19_N8
\ViaDados|RegistradorMedia|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add2~3_cout\ = CARRY((\ViaDados|RegistradorMedia|Add1~2_combout\ & (!\ViaDados|RegistradorMedia|Add0~2_combout\ & !\ViaDados|RegistradorMedia|Add2~1_cout\)) # (!\ViaDados|RegistradorMedia|Add1~2_combout\ & 
-- ((!\ViaDados|RegistradorMedia|Add2~1_cout\) # (!\ViaDados|RegistradorMedia|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|Add1~2_combout\,
	datab => \ViaDados|RegistradorMedia|Add0~2_combout\,
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add2~1_cout\,
	cout => \ViaDados|RegistradorMedia|Add2~3_cout\);

-- Location: LCCOMB_X62_Y19_N10
\ViaDados|RegistradorMedia|OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ = ((\ViaDados|RegistradorMedia|Add1~4_combout\ $ (\ViaDados|RegistradorMedia|Add0~4_combout\ $ (!\ViaDados|RegistradorMedia|Add2~3_cout\)))) # (GND)
-- \ViaDados|RegistradorMedia|OUTPUT[0]~1\ = CARRY((\ViaDados|RegistradorMedia|Add1~4_combout\ & ((\ViaDados|RegistradorMedia|Add0~4_combout\) # (!\ViaDados|RegistradorMedia|Add2~3_cout\))) # (!\ViaDados|RegistradorMedia|Add1~4_combout\ & 
-- (\ViaDados|RegistradorMedia|Add0~4_combout\ & !\ViaDados|RegistradorMedia|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|Add1~4_combout\,
	datab => \ViaDados|RegistradorMedia|Add0~4_combout\,
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|Add2~3_cout\,
	combout => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	cout => \ViaDados|RegistradorMedia|OUTPUT[0]~1\);

-- Location: LCCOMB_X62_Y19_N12
\ViaDados|RegistradorMedia|OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ = (\ViaDados|RegistradorMedia|Add0~6_combout\ & ((\ViaDados|RegistradorMedia|Add1~6_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[0]~1\ & VCC)) # (!\ViaDados|RegistradorMedia|Add1~6_combout\ & 
-- (!\ViaDados|RegistradorMedia|OUTPUT[0]~1\)))) # (!\ViaDados|RegistradorMedia|Add0~6_combout\ & ((\ViaDados|RegistradorMedia|Add1~6_combout\ & (!\ViaDados|RegistradorMedia|OUTPUT[0]~1\)) # (!\ViaDados|RegistradorMedia|Add1~6_combout\ & 
-- ((\ViaDados|RegistradorMedia|OUTPUT[0]~1\) # (GND)))))
-- \ViaDados|RegistradorMedia|OUTPUT[1]~3\ = CARRY((\ViaDados|RegistradorMedia|Add0~6_combout\ & (!\ViaDados|RegistradorMedia|Add1~6_combout\ & !\ViaDados|RegistradorMedia|OUTPUT[0]~1\)) # (!\ViaDados|RegistradorMedia|Add0~6_combout\ & 
-- ((!\ViaDados|RegistradorMedia|OUTPUT[0]~1\) # (!\ViaDados|RegistradorMedia|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|Add0~6_combout\,
	datab => \ViaDados|RegistradorMedia|Add1~6_combout\,
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|OUTPUT[0]~1\,
	combout => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	cout => \ViaDados|RegistradorMedia|OUTPUT[1]~3\);

-- Location: LCCOMB_X63_Y19_N4
\ViaDados|Comp|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Comp|LessThan0~1_combout\ = (\ViaDados|RegistradorE|Q\(1) & (((!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & \ViaDados|RegistradorE|Q\(0))) # (!\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\))) # (!\ViaDados|RegistradorE|Q\(1) & 
-- (!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & (\ViaDados|RegistradorE|Q\(0) & !\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \ViaDados|RegistradorE|Q\(1),
	datac => \ViaDados|RegistradorE|Q\(0),
	datad => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \ViaDados|Comp|LessThan0~1_combout\);

-- Location: LCCOMB_X62_Y19_N30
\ViaDados|RegistradorMedia|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|Add1~8_combout\ = !\ViaDados|RegistradorMedia|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ViaDados|RegistradorMedia|Add1~7\,
	combout => \ViaDados|RegistradorMedia|Add1~8_combout\);

-- Location: LCCOMB_X62_Y19_N14
\ViaDados|RegistradorMedia|OUTPUT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ = ((\ViaDados|RegistradorMedia|Add0~8_combout\ $ (\ViaDados|RegistradorMedia|Add1~8_combout\ $ (!\ViaDados|RegistradorMedia|OUTPUT[1]~3\)))) # (GND)
-- \ViaDados|RegistradorMedia|OUTPUT[2]~5\ = CARRY((\ViaDados|RegistradorMedia|Add0~8_combout\ & ((\ViaDados|RegistradorMedia|Add1~8_combout\) # (!\ViaDados|RegistradorMedia|OUTPUT[1]~3\))) # (!\ViaDados|RegistradorMedia|Add0~8_combout\ & 
-- (\ViaDados|RegistradorMedia|Add1~8_combout\ & !\ViaDados|RegistradorMedia|OUTPUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|Add0~8_combout\,
	datab => \ViaDados|RegistradorMedia|Add1~8_combout\,
	datad => VCC,
	cin => \ViaDados|RegistradorMedia|OUTPUT[1]~3\,
	combout => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	cout => \ViaDados|RegistradorMedia|OUTPUT[2]~5\);

-- Location: LCCOMB_X62_Y19_N16
\ViaDados|RegistradorMedia|OUTPUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ = \ViaDados|RegistradorMedia|OUTPUT[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ViaDados|RegistradorMedia|OUTPUT[2]~5\,
	combout => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\);

-- Location: LCCOMB_X63_Y19_N16
\ViaDados|Comp|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Comp|Equal0~1_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & (\ViaDados|RegistradorE|Q\(2) & (\ViaDados|RegistradorE|Q\(3) $ (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\)))) # (!\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ 
-- & (!\ViaDados|RegistradorE|Q\(2) & (\ViaDados|RegistradorE|Q\(3) $ (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	datab => \ViaDados|RegistradorE|Q\(3),
	datac => \ViaDados|RegistradorE|Q\(2),
	datad => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	combout => \ViaDados|Comp|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y19_N14
\ViaDados|Comp|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Comp|LessThan0~0_combout\ = (\ViaDados|RegistradorE|Q\(3) & (((!\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & \ViaDados|RegistradorE|Q\(2))) # (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\))) # (!\ViaDados|RegistradorE|Q\(3) & 
-- (!\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & (\ViaDados|RegistradorE|Q\(2) & !\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	datab => \ViaDados|RegistradorE|Q\(3),
	datac => \ViaDados|RegistradorE|Q\(2),
	datad => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	combout => \ViaDados|Comp|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y19_N6
\ViaDados|Comp|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Comp|LessThan0~2_combout\ = (\ViaDados|Comp|LessThan0~0_combout\) # ((\ViaDados|Comp|LessThan0~1_combout\ & \ViaDados|Comp|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ViaDados|Comp|LessThan0~1_combout\,
	datac => \ViaDados|Comp|Equal0~1_combout\,
	datad => \ViaDados|Comp|LessThan0~0_combout\,
	combout => \ViaDados|Comp|LessThan0~2_combout\);

-- Location: LCCOMB_X63_Y19_N30
\Controle|est_futuro.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controle|est_futuro.s1~0_combout\ = ((\Controle|est_futuro.s2~0_combout\ & !\ViaDados|Comp|LessThan0~2_combout\)) # (!\Controle|est_atual.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|est_futuro.s2~0_combout\,
	datac => \Controle|est_atual.s1~regout\,
	datad => \ViaDados|Comp|LessThan0~2_combout\,
	combout => \Controle|est_futuro.s1~0_combout\);

-- Location: LCFF_X63_Y19_N31
\Controle|est_atual.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \Controle|est_futuro.s1~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controle|est_atual.s1~regout\);

-- Location: LCFF_X64_Y19_N31
\ViaDados|RegistradorE|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \ViaDados|RegistradorE|Q[1]~feeder_combout\,
	ena => \Controle|ALT_INV_est_atual.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorE|Q\(1));

-- Location: LCCOMB_X63_Y19_N8
\ViaDados|Comp|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Comp|Equal0~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & (\ViaDados|RegistradorE|Q\(0) & (\ViaDados|RegistradorE|Q\(1) $ (!\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\)))) # (!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ 
-- & (!\ViaDados|RegistradorE|Q\(0) & (\ViaDados|RegistradorE|Q\(1) $ (!\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \ViaDados|RegistradorE|Q\(1),
	datac => \ViaDados|RegistradorE|Q\(0),
	datad => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \ViaDados|Comp|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y19_N18
\ViaDados|Comp|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Comp|LessThan1~1_combout\ = (\ViaDados|RegistradorE|Q\(3) & (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & (!\ViaDados|RegistradorE|Q\(2) & \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\))) # (!\ViaDados|RegistradorE|Q\(3) & 
-- ((\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\) # ((\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & !\ViaDados|RegistradorE|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	datab => \ViaDados|RegistradorE|Q\(3),
	datac => \ViaDados|RegistradorE|Q\(2),
	datad => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	combout => \ViaDados|Comp|LessThan1~1_combout\);

-- Location: LCCOMB_X63_Y19_N20
\Controle|est_futuro.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controle|est_futuro.s2~0_combout\ = (!\ViaDados|Comp|LessThan1~1_combout\ & (((!\ViaDados|Comp|LessThan1~0_combout\ & !\ViaDados|Comp|Equal0~0_combout\)) # (!\ViaDados|Comp|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|Comp|LessThan1~0_combout\,
	datab => \ViaDados|Comp|Equal0~0_combout\,
	datac => \ViaDados|Comp|Equal0~1_combout\,
	datad => \ViaDados|Comp|LessThan1~1_combout\,
	combout => \Controle|est_futuro.s2~0_combout\);

-- Location: LCCOMB_X63_Y19_N24
\Controle|est_futuro.s2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controle|est_futuro.s2~1_combout\ = (\Controle|est_atual.s1~regout\ & (\Controle|est_futuro.s2~0_combout\ & \ViaDados|Comp|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|est_atual.s1~regout\,
	datac => \Controle|est_futuro.s2~0_combout\,
	datad => \ViaDados|Comp|LessThan0~2_combout\,
	combout => \Controle|est_futuro.s2~1_combout\);

-- Location: LCFF_X63_Y19_N25
\Controle|est_atual.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \Controle|est_futuro.s2~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controle|est_atual.s2~regout\);

-- Location: LCCOMB_X63_Y19_N12
\Controle|SUBINDO[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controle|SUBINDO\(0) = (\Controle|est_atual.s2~regout\) # (!\Controle|est_atual.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controle|est_atual.s2~regout\,
	datad => \Controle|est_atual.s0~regout\,
	combout => \Controle|SUBINDO\(0));

-- Location: LCFF_X63_Y19_N13
\ViaDados|RegistradorS|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \Controle|SUBINDO\(0),
	ena => \Controle|ALT_INV_est_atual.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorS|Q\(0));

-- Location: LCCOMB_X63_Y19_N10
\ViaDados|Comp|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Comp|LessThan1~0_combout\ = (\ViaDados|RegistradorE|Q\(1) & (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & (!\ViaDados|RegistradorE|Q\(0) & \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\))) # (!\ViaDados|RegistradorE|Q\(1) & 
-- ((\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\) # ((\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & !\ViaDados|RegistradorE|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datab => \ViaDados|RegistradorE|Q\(1),
	datac => \ViaDados|RegistradorE|Q\(0),
	datad => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	combout => \ViaDados|Comp|LessThan1~0_combout\);

-- Location: LCCOMB_X63_Y19_N28
\Controle|est_futuro.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controle|est_futuro.s3~0_combout\ = (\Controle|est_atual.s1~regout\ & ((\ViaDados|Comp|LessThan1~1_combout\) # ((\ViaDados|Comp|LessThan1~0_combout\ & \ViaDados|Comp|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|est_atual.s1~regout\,
	datab => \ViaDados|Comp|LessThan1~0_combout\,
	datac => \ViaDados|Comp|Equal0~1_combout\,
	datad => \ViaDados|Comp|LessThan1~1_combout\,
	combout => \Controle|est_futuro.s3~0_combout\);

-- Location: LCFF_X63_Y19_N29
\Controle|est_atual.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \Controle|est_futuro.s3~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controle|est_atual.s3~regout\);

-- Location: LCCOMB_X63_Y19_N22
\Controle|DESCENDO[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controle|DESCENDO\(0) = (\Controle|est_atual.s3~regout\) # (!\Controle|est_atual.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controle|est_atual.s3~regout\,
	datad => \Controle|est_atual.s0~regout\,
	combout => \Controle|DESCENDO\(0));

-- Location: LCFF_X63_Y19_N23
\ViaDados|RegistradorD|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk|clk~clkctrl_outclk\,
	datain => \Controle|DESCENDO\(0),
	ena => \Controle|ALT_INV_est_atual.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ViaDados|RegistradorD|Q\(0));

-- Location: LCCOMB_X61_Y19_N24
\ViaDados|Led7segmentos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Led7segmentos|Mux6~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\) # (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ $ (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\)))) # 
-- (!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\) # (\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ $ (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	datac => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datad => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \ViaDados|Led7segmentos|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y19_N14
\ViaDados|Led7segmentos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Led7segmentos|Mux5~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\) # (!\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\)))) # 
-- (!\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ $ (!\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	datac => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datad => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \ViaDados|Led7segmentos|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y19_N18
\ViaDados|Led7segmentos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Led7segmentos|Mux4~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\))) # (!\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & 
-- ((\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\)) # (!\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	datac => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datad => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \ViaDados|Led7segmentos|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y19_N0
\ViaDados|Led7segmentos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Led7segmentos|Mux3~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\))) # (!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & 
-- (\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & !\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\)))) # (!\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & 
-- (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ $ (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	datac => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datad => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \ViaDados|Led7segmentos|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y19_N22
\ViaDados|Led7segmentos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Led7segmentos|Mux2~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\) # (!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\)))) # 
-- (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & (!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & !\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	datac => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datad => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \ViaDados|Led7segmentos|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y19_N26
\ViaDados|Led7segmentos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Led7segmentos|Mux1~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & ((\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\)) # (!\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & 
-- ((\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\))))) # (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ $ 
-- (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	datac => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datad => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \ViaDados|Led7segmentos|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y19_N12
\ViaDados|Led7segmentos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ViaDados|Led7segmentos|Mux0~0_combout\ = (\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ $ (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\)))) # 
-- (!\ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\ & (!\ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\ & (\ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\ $ (\ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ViaDados|RegistradorMedia|OUTPUT[3]~6_combout\,
	datab => \ViaDados|RegistradorMedia|OUTPUT[1]~2_combout\,
	datac => \ViaDados|RegistradorMedia|OUTPUT[0]~0_combout\,
	datad => \ViaDados|RegistradorMedia|OUTPUT[2]~4_combout\,
	combout => \ViaDados|Led7segmentos|Mux0~0_combout\);

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
	datain => \ViaDados|RegistradorS|Q\(0),
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
	datain => \ViaDados|RegistradorD|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Descendo(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ViaDados|Led7segmentos|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ViaDados|Led7segmentos|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(1));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ViaDados|Led7segmentos|Mux4~0_combout\,
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
	datain => \ViaDados|Led7segmentos|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ViaDados|Led7segmentos|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ViaDados|Led7segmentos|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(5));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ViaDados|Led7segmentos|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media_DSP_7Seg(6));
END structure;


