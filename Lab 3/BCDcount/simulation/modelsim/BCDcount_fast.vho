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

-- DATE "05/23/2014 14:28:27"

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

ENTITY 	BCDCOUNT IS
    PORT (
	KEY0 : IN std_logic;
	CLK_50 : IN std_logic;
	MSD : OUT std_logic_vector(0 TO 6);
	LSD : OUT std_logic_vector(0 TO 6)
	);
END BCDCOUNT;

-- Design Ports Information
-- MSD[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSD[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSD[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSD[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSD[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSD[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSD[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LSD[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LSD[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LSD[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LSD[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LSD[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LSD[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LSD[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY0	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BCDCOUNT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_MSD : std_logic_vector(0 TO 6);
SIGNAL ww_LSD : std_logic_vector(0 TO 6);
SIGNAL \ClkFlag~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Internal_Count[0]~29_combout\ : std_logic;
SIGNAL \Internal_Count[0]~30\ : std_logic;
SIGNAL \Internal_Count[1]~31_combout\ : std_logic;
SIGNAL \Internal_Count[1]~32\ : std_logic;
SIGNAL \Internal_Count[2]~33_combout\ : std_logic;
SIGNAL \Internal_Count[2]~34\ : std_logic;
SIGNAL \Internal_Count[3]~35_combout\ : std_logic;
SIGNAL \Internal_Count[3]~36\ : std_logic;
SIGNAL \Internal_Count[4]~37_combout\ : std_logic;
SIGNAL \Internal_Count[4]~38\ : std_logic;
SIGNAL \Internal_Count[5]~39_combout\ : std_logic;
SIGNAL \Internal_Count[5]~40\ : std_logic;
SIGNAL \Internal_Count[6]~41_combout\ : std_logic;
SIGNAL \Internal_Count[6]~42\ : std_logic;
SIGNAL \Internal_Count[7]~43_combout\ : std_logic;
SIGNAL \Internal_Count[7]~44\ : std_logic;
SIGNAL \Internal_Count[8]~45_combout\ : std_logic;
SIGNAL \Internal_Count[8]~46\ : std_logic;
SIGNAL \Internal_Count[9]~47_combout\ : std_logic;
SIGNAL \Internal_Count[9]~48\ : std_logic;
SIGNAL \Internal_Count[10]~49_combout\ : std_logic;
SIGNAL \Internal_Count[10]~50\ : std_logic;
SIGNAL \Internal_Count[11]~51_combout\ : std_logic;
SIGNAL \Internal_Count[11]~52\ : std_logic;
SIGNAL \Internal_Count[12]~53_combout\ : std_logic;
SIGNAL \Internal_Count[12]~54\ : std_logic;
SIGNAL \Internal_Count[13]~55_combout\ : std_logic;
SIGNAL \Internal_Count[13]~56\ : std_logic;
SIGNAL \Internal_Count[14]~57_combout\ : std_logic;
SIGNAL \Internal_Count[14]~58\ : std_logic;
SIGNAL \Internal_Count[15]~59_combout\ : std_logic;
SIGNAL \Internal_Count[15]~60\ : std_logic;
SIGNAL \Internal_Count[16]~61_combout\ : std_logic;
SIGNAL \Internal_Count[16]~62\ : std_logic;
SIGNAL \Internal_Count[17]~63_combout\ : std_logic;
SIGNAL \Internal_Count[17]~64\ : std_logic;
SIGNAL \Internal_Count[18]~65_combout\ : std_logic;
SIGNAL \Internal_Count[18]~66\ : std_logic;
SIGNAL \Internal_Count[19]~67_combout\ : std_logic;
SIGNAL \Internal_Count[19]~68\ : std_logic;
SIGNAL \Internal_Count[20]~69_combout\ : std_logic;
SIGNAL \Internal_Count[20]~70\ : std_logic;
SIGNAL \Internal_Count[21]~71_combout\ : std_logic;
SIGNAL \Internal_Count[21]~72\ : std_logic;
SIGNAL \Internal_Count[22]~73_combout\ : std_logic;
SIGNAL \Internal_Count[22]~74\ : std_logic;
SIGNAL \Internal_Count[23]~75_combout\ : std_logic;
SIGNAL \Internal_Count[23]~76\ : std_logic;
SIGNAL \Internal_Count[24]~77_combout\ : std_logic;
SIGNAL \Internal_Count[24]~78\ : std_logic;
SIGNAL \Internal_Count[25]~79_combout\ : std_logic;
SIGNAL \Internal_Count[25]~80\ : std_logic;
SIGNAL \Internal_Count[26]~81_combout\ : std_logic;
SIGNAL \Internal_Count[26]~82\ : std_logic;
SIGNAL \Internal_Count[27]~83_combout\ : std_logic;
SIGNAL \Internal_Count[27]~84\ : std_logic;
SIGNAL \Internal_Count[28]~85_combout\ : std_logic;
SIGNAL \ClkFlag~regout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \ClkFlag~0_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \CLK_50~combout\ : std_logic;
SIGNAL \ClkFlag~clkctrl_outclk\ : std_logic;
SIGNAL \CLK_50~clkctrl_outclk\ : std_logic;
SIGNAL \HighDigit[0]~4_combout\ : std_logic;
SIGNAL \KEY0~combout\ : std_logic;
SIGNAL \LowDigit[0]~3_combout\ : std_logic;
SIGNAL \LowDigit~2_combout\ : std_logic;
SIGNAL \LowDigit~0_combout\ : std_logic;
SIGNAL \LowDigit[2]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \HighDigit[3]~2_combout\ : std_logic;
SIGNAL \HighDigit[3]~3_combout\ : std_logic;
SIGNAL \HighDigit~0_combout\ : std_logic;
SIGNAL \HighDigit~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL LowDigit : std_logic_vector(3 DOWNTO 0);
SIGNAL Internal_Count : std_logic_vector(28 DOWNTO 0);
SIGNAL HighDigit : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY0~combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;

BEGIN

ww_KEY0 <= KEY0;
ww_CLK_50 <= CLK_50;
MSD <= ww_MSD;
LSD <= ww_LSD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ClkFlag~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ClkFlag~regout\);

\CLK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_50~combout\);
\ALT_INV_KEY0~combout\ <= NOT \KEY0~combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;

-- Location: LCFF_X35_Y2_N3
\Internal_Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[15]~59_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(15));

-- Location: LCFF_X35_Y2_N7
\Internal_Count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[17]~63_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(17));

-- Location: LCFF_X35_Y2_N19
\Internal_Count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[23]~75_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(23));

-- Location: LCFF_X35_Y3_N27
\Internal_Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[11]~51_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(11));

-- Location: LCFF_X35_Y3_N29
\Internal_Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[12]~53_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(12));

-- Location: LCFF_X35_Y3_N31
\Internal_Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[13]~55_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(13));

-- Location: LCFF_X35_Y2_N1
\Internal_Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[14]~57_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(14));

-- Location: LCFF_X35_Y3_N17
\Internal_Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[6]~41_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(6));

-- Location: LCFF_X35_Y3_N19
\Internal_Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[7]~43_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(7));

-- Location: LCFF_X35_Y3_N21
\Internal_Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[8]~45_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(8));

-- Location: LCFF_X35_Y3_N23
\Internal_Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[9]~47_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(9));

-- Location: LCFF_X35_Y3_N25
\Internal_Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[10]~49_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(10));

-- Location: LCFF_X35_Y2_N5
\Internal_Count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[16]~61_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(16));

-- Location: LCFF_X35_Y2_N9
\Internal_Count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[18]~65_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(18));

-- Location: LCFF_X35_Y2_N11
\Internal_Count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[19]~67_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(19));

-- Location: LCFF_X35_Y2_N13
\Internal_Count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[20]~69_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(20));

-- Location: LCFF_X35_Y2_N15
\Internal_Count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[21]~71_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(21));

-- Location: LCFF_X35_Y2_N17
\Internal_Count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[22]~73_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(22));

-- Location: LCFF_X35_Y2_N21
\Internal_Count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[24]~77_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(24));

-- Location: LCFF_X35_Y2_N23
\Internal_Count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[25]~79_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(25));

-- Location: LCFF_X35_Y2_N25
\Internal_Count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[26]~81_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(26));

-- Location: LCFF_X35_Y2_N27
\Internal_Count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[27]~83_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(27));

-- Location: LCFF_X35_Y2_N29
\Internal_Count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[28]~85_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(28));

-- Location: LCFF_X35_Y3_N15
\Internal_Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[5]~39_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(5));

-- Location: LCFF_X35_Y3_N13
\Internal_Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[4]~37_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(4));

-- Location: LCFF_X35_Y3_N11
\Internal_Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[3]~35_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(3));

-- Location: LCFF_X35_Y3_N9
\Internal_Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[2]~33_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(2));

-- Location: LCFF_X35_Y3_N7
\Internal_Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[1]~31_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(1));

-- Location: LCFF_X35_Y3_N5
\Internal_Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \Internal_Count[0]~29_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Internal_Count(0));

-- Location: LCCOMB_X35_Y3_N4
\Internal_Count[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[0]~29_combout\ = Internal_Count(0) $ (VCC)
-- \Internal_Count[0]~30\ = CARRY(Internal_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(0),
	datad => VCC,
	combout => \Internal_Count[0]~29_combout\,
	cout => \Internal_Count[0]~30\);

-- Location: LCCOMB_X35_Y3_N6
\Internal_Count[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[1]~31_combout\ = (Internal_Count(1) & (!\Internal_Count[0]~30\)) # (!Internal_Count(1) & ((\Internal_Count[0]~30\) # (GND)))
-- \Internal_Count[1]~32\ = CARRY((!\Internal_Count[0]~30\) # (!Internal_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(1),
	datad => VCC,
	cin => \Internal_Count[0]~30\,
	combout => \Internal_Count[1]~31_combout\,
	cout => \Internal_Count[1]~32\);

-- Location: LCCOMB_X35_Y3_N8
\Internal_Count[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[2]~33_combout\ = (Internal_Count(2) & (\Internal_Count[1]~32\ $ (GND))) # (!Internal_Count(2) & (!\Internal_Count[1]~32\ & VCC))
-- \Internal_Count[2]~34\ = CARRY((Internal_Count(2) & !\Internal_Count[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(2),
	datad => VCC,
	cin => \Internal_Count[1]~32\,
	combout => \Internal_Count[2]~33_combout\,
	cout => \Internal_Count[2]~34\);

-- Location: LCCOMB_X35_Y3_N10
\Internal_Count[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[3]~35_combout\ = (Internal_Count(3) & (!\Internal_Count[2]~34\)) # (!Internal_Count(3) & ((\Internal_Count[2]~34\) # (GND)))
-- \Internal_Count[3]~36\ = CARRY((!\Internal_Count[2]~34\) # (!Internal_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(3),
	datad => VCC,
	cin => \Internal_Count[2]~34\,
	combout => \Internal_Count[3]~35_combout\,
	cout => \Internal_Count[3]~36\);

-- Location: LCCOMB_X35_Y3_N12
\Internal_Count[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[4]~37_combout\ = (Internal_Count(4) & (\Internal_Count[3]~36\ $ (GND))) # (!Internal_Count(4) & (!\Internal_Count[3]~36\ & VCC))
-- \Internal_Count[4]~38\ = CARRY((Internal_Count(4) & !\Internal_Count[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(4),
	datad => VCC,
	cin => \Internal_Count[3]~36\,
	combout => \Internal_Count[4]~37_combout\,
	cout => \Internal_Count[4]~38\);

-- Location: LCCOMB_X35_Y3_N14
\Internal_Count[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[5]~39_combout\ = (Internal_Count(5) & (!\Internal_Count[4]~38\)) # (!Internal_Count(5) & ((\Internal_Count[4]~38\) # (GND)))
-- \Internal_Count[5]~40\ = CARRY((!\Internal_Count[4]~38\) # (!Internal_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(5),
	datad => VCC,
	cin => \Internal_Count[4]~38\,
	combout => \Internal_Count[5]~39_combout\,
	cout => \Internal_Count[5]~40\);

-- Location: LCCOMB_X35_Y3_N16
\Internal_Count[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[6]~41_combout\ = (Internal_Count(6) & (\Internal_Count[5]~40\ $ (GND))) # (!Internal_Count(6) & (!\Internal_Count[5]~40\ & VCC))
-- \Internal_Count[6]~42\ = CARRY((Internal_Count(6) & !\Internal_Count[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(6),
	datad => VCC,
	cin => \Internal_Count[5]~40\,
	combout => \Internal_Count[6]~41_combout\,
	cout => \Internal_Count[6]~42\);

-- Location: LCCOMB_X35_Y3_N18
\Internal_Count[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[7]~43_combout\ = (Internal_Count(7) & (!\Internal_Count[6]~42\)) # (!Internal_Count(7) & ((\Internal_Count[6]~42\) # (GND)))
-- \Internal_Count[7]~44\ = CARRY((!\Internal_Count[6]~42\) # (!Internal_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(7),
	datad => VCC,
	cin => \Internal_Count[6]~42\,
	combout => \Internal_Count[7]~43_combout\,
	cout => \Internal_Count[7]~44\);

-- Location: LCCOMB_X35_Y3_N20
\Internal_Count[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[8]~45_combout\ = (Internal_Count(8) & (\Internal_Count[7]~44\ $ (GND))) # (!Internal_Count(8) & (!\Internal_Count[7]~44\ & VCC))
-- \Internal_Count[8]~46\ = CARRY((Internal_Count(8) & !\Internal_Count[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(8),
	datad => VCC,
	cin => \Internal_Count[7]~44\,
	combout => \Internal_Count[8]~45_combout\,
	cout => \Internal_Count[8]~46\);

-- Location: LCCOMB_X35_Y3_N22
\Internal_Count[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[9]~47_combout\ = (Internal_Count(9) & (!\Internal_Count[8]~46\)) # (!Internal_Count(9) & ((\Internal_Count[8]~46\) # (GND)))
-- \Internal_Count[9]~48\ = CARRY((!\Internal_Count[8]~46\) # (!Internal_Count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(9),
	datad => VCC,
	cin => \Internal_Count[8]~46\,
	combout => \Internal_Count[9]~47_combout\,
	cout => \Internal_Count[9]~48\);

-- Location: LCCOMB_X35_Y3_N24
\Internal_Count[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[10]~49_combout\ = (Internal_Count(10) & (\Internal_Count[9]~48\ $ (GND))) # (!Internal_Count(10) & (!\Internal_Count[9]~48\ & VCC))
-- \Internal_Count[10]~50\ = CARRY((Internal_Count(10) & !\Internal_Count[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(10),
	datad => VCC,
	cin => \Internal_Count[9]~48\,
	combout => \Internal_Count[10]~49_combout\,
	cout => \Internal_Count[10]~50\);

-- Location: LCCOMB_X35_Y3_N26
\Internal_Count[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[11]~51_combout\ = (Internal_Count(11) & (!\Internal_Count[10]~50\)) # (!Internal_Count(11) & ((\Internal_Count[10]~50\) # (GND)))
-- \Internal_Count[11]~52\ = CARRY((!\Internal_Count[10]~50\) # (!Internal_Count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(11),
	datad => VCC,
	cin => \Internal_Count[10]~50\,
	combout => \Internal_Count[11]~51_combout\,
	cout => \Internal_Count[11]~52\);

-- Location: LCCOMB_X35_Y3_N28
\Internal_Count[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[12]~53_combout\ = (Internal_Count(12) & (\Internal_Count[11]~52\ $ (GND))) # (!Internal_Count(12) & (!\Internal_Count[11]~52\ & VCC))
-- \Internal_Count[12]~54\ = CARRY((Internal_Count(12) & !\Internal_Count[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(12),
	datad => VCC,
	cin => \Internal_Count[11]~52\,
	combout => \Internal_Count[12]~53_combout\,
	cout => \Internal_Count[12]~54\);

-- Location: LCCOMB_X35_Y3_N30
\Internal_Count[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[13]~55_combout\ = (Internal_Count(13) & (!\Internal_Count[12]~54\)) # (!Internal_Count(13) & ((\Internal_Count[12]~54\) # (GND)))
-- \Internal_Count[13]~56\ = CARRY((!\Internal_Count[12]~54\) # (!Internal_Count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(13),
	datad => VCC,
	cin => \Internal_Count[12]~54\,
	combout => \Internal_Count[13]~55_combout\,
	cout => \Internal_Count[13]~56\);

-- Location: LCCOMB_X35_Y2_N0
\Internal_Count[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[14]~57_combout\ = (Internal_Count(14) & (\Internal_Count[13]~56\ $ (GND))) # (!Internal_Count(14) & (!\Internal_Count[13]~56\ & VCC))
-- \Internal_Count[14]~58\ = CARRY((Internal_Count(14) & !\Internal_Count[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(14),
	datad => VCC,
	cin => \Internal_Count[13]~56\,
	combout => \Internal_Count[14]~57_combout\,
	cout => \Internal_Count[14]~58\);

-- Location: LCCOMB_X35_Y2_N2
\Internal_Count[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[15]~59_combout\ = (Internal_Count(15) & (!\Internal_Count[14]~58\)) # (!Internal_Count(15) & ((\Internal_Count[14]~58\) # (GND)))
-- \Internal_Count[15]~60\ = CARRY((!\Internal_Count[14]~58\) # (!Internal_Count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(15),
	datad => VCC,
	cin => \Internal_Count[14]~58\,
	combout => \Internal_Count[15]~59_combout\,
	cout => \Internal_Count[15]~60\);

-- Location: LCCOMB_X35_Y2_N4
\Internal_Count[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[16]~61_combout\ = (Internal_Count(16) & (\Internal_Count[15]~60\ $ (GND))) # (!Internal_Count(16) & (!\Internal_Count[15]~60\ & VCC))
-- \Internal_Count[16]~62\ = CARRY((Internal_Count(16) & !\Internal_Count[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(16),
	datad => VCC,
	cin => \Internal_Count[15]~60\,
	combout => \Internal_Count[16]~61_combout\,
	cout => \Internal_Count[16]~62\);

-- Location: LCCOMB_X35_Y2_N6
\Internal_Count[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[17]~63_combout\ = (Internal_Count(17) & (!\Internal_Count[16]~62\)) # (!Internal_Count(17) & ((\Internal_Count[16]~62\) # (GND)))
-- \Internal_Count[17]~64\ = CARRY((!\Internal_Count[16]~62\) # (!Internal_Count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(17),
	datad => VCC,
	cin => \Internal_Count[16]~62\,
	combout => \Internal_Count[17]~63_combout\,
	cout => \Internal_Count[17]~64\);

-- Location: LCCOMB_X35_Y2_N8
\Internal_Count[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[18]~65_combout\ = (Internal_Count(18) & (\Internal_Count[17]~64\ $ (GND))) # (!Internal_Count(18) & (!\Internal_Count[17]~64\ & VCC))
-- \Internal_Count[18]~66\ = CARRY((Internal_Count(18) & !\Internal_Count[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(18),
	datad => VCC,
	cin => \Internal_Count[17]~64\,
	combout => \Internal_Count[18]~65_combout\,
	cout => \Internal_Count[18]~66\);

-- Location: LCCOMB_X35_Y2_N10
\Internal_Count[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[19]~67_combout\ = (Internal_Count(19) & (!\Internal_Count[18]~66\)) # (!Internal_Count(19) & ((\Internal_Count[18]~66\) # (GND)))
-- \Internal_Count[19]~68\ = CARRY((!\Internal_Count[18]~66\) # (!Internal_Count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(19),
	datad => VCC,
	cin => \Internal_Count[18]~66\,
	combout => \Internal_Count[19]~67_combout\,
	cout => \Internal_Count[19]~68\);

-- Location: LCCOMB_X35_Y2_N12
\Internal_Count[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[20]~69_combout\ = (Internal_Count(20) & (\Internal_Count[19]~68\ $ (GND))) # (!Internal_Count(20) & (!\Internal_Count[19]~68\ & VCC))
-- \Internal_Count[20]~70\ = CARRY((Internal_Count(20) & !\Internal_Count[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(20),
	datad => VCC,
	cin => \Internal_Count[19]~68\,
	combout => \Internal_Count[20]~69_combout\,
	cout => \Internal_Count[20]~70\);

-- Location: LCCOMB_X35_Y2_N14
\Internal_Count[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[21]~71_combout\ = (Internal_Count(21) & (!\Internal_Count[20]~70\)) # (!Internal_Count(21) & ((\Internal_Count[20]~70\) # (GND)))
-- \Internal_Count[21]~72\ = CARRY((!\Internal_Count[20]~70\) # (!Internal_Count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(21),
	datad => VCC,
	cin => \Internal_Count[20]~70\,
	combout => \Internal_Count[21]~71_combout\,
	cout => \Internal_Count[21]~72\);

-- Location: LCCOMB_X35_Y2_N16
\Internal_Count[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[22]~73_combout\ = (Internal_Count(22) & (\Internal_Count[21]~72\ $ (GND))) # (!Internal_Count(22) & (!\Internal_Count[21]~72\ & VCC))
-- \Internal_Count[22]~74\ = CARRY((Internal_Count(22) & !\Internal_Count[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(22),
	datad => VCC,
	cin => \Internal_Count[21]~72\,
	combout => \Internal_Count[22]~73_combout\,
	cout => \Internal_Count[22]~74\);

-- Location: LCCOMB_X35_Y2_N18
\Internal_Count[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[23]~75_combout\ = (Internal_Count(23) & (!\Internal_Count[22]~74\)) # (!Internal_Count(23) & ((\Internal_Count[22]~74\) # (GND)))
-- \Internal_Count[23]~76\ = CARRY((!\Internal_Count[22]~74\) # (!Internal_Count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(23),
	datad => VCC,
	cin => \Internal_Count[22]~74\,
	combout => \Internal_Count[23]~75_combout\,
	cout => \Internal_Count[23]~76\);

-- Location: LCCOMB_X35_Y2_N20
\Internal_Count[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[24]~77_combout\ = (Internal_Count(24) & (\Internal_Count[23]~76\ $ (GND))) # (!Internal_Count(24) & (!\Internal_Count[23]~76\ & VCC))
-- \Internal_Count[24]~78\ = CARRY((Internal_Count(24) & !\Internal_Count[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(24),
	datad => VCC,
	cin => \Internal_Count[23]~76\,
	combout => \Internal_Count[24]~77_combout\,
	cout => \Internal_Count[24]~78\);

-- Location: LCCOMB_X35_Y2_N22
\Internal_Count[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[25]~79_combout\ = (Internal_Count(25) & (!\Internal_Count[24]~78\)) # (!Internal_Count(25) & ((\Internal_Count[24]~78\) # (GND)))
-- \Internal_Count[25]~80\ = CARRY((!\Internal_Count[24]~78\) # (!Internal_Count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(25),
	datad => VCC,
	cin => \Internal_Count[24]~78\,
	combout => \Internal_Count[25]~79_combout\,
	cout => \Internal_Count[25]~80\);

-- Location: LCCOMB_X35_Y2_N24
\Internal_Count[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[26]~81_combout\ = (Internal_Count(26) & (\Internal_Count[25]~80\ $ (GND))) # (!Internal_Count(26) & (!\Internal_Count[25]~80\ & VCC))
-- \Internal_Count[26]~82\ = CARRY((Internal_Count(26) & !\Internal_Count[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(26),
	datad => VCC,
	cin => \Internal_Count[25]~80\,
	combout => \Internal_Count[26]~81_combout\,
	cout => \Internal_Count[26]~82\);

-- Location: LCCOMB_X35_Y2_N26
\Internal_Count[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[27]~83_combout\ = (Internal_Count(27) & (!\Internal_Count[26]~82\)) # (!Internal_Count(27) & ((\Internal_Count[26]~82\) # (GND)))
-- \Internal_Count[27]~84\ = CARRY((!\Internal_Count[26]~82\) # (!Internal_Count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(27),
	datad => VCC,
	cin => \Internal_Count[26]~82\,
	combout => \Internal_Count[27]~83_combout\,
	cout => \Internal_Count[27]~84\);

-- Location: LCCOMB_X35_Y2_N28
\Internal_Count[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Internal_Count[28]~85_combout\ = \Internal_Count[27]~84\ $ (!Internal_Count(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Internal_Count(28),
	cin => \Internal_Count[27]~84\,
	combout => \Internal_Count[28]~85_combout\);

-- Location: LCFF_X34_Y2_N27
ClkFlag : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \ClkFlag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ClkFlag~regout\);

-- Location: LCCOMB_X34_Y2_N24
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!Internal_Count(23) & (!Internal_Count(15) & !Internal_Count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(23),
	datac => Internal_Count(15),
	datad => Internal_Count(17),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y2_N30
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!Internal_Count(13)) # (!Internal_Count(11))) # (!Internal_Count(12))) # (!Internal_Count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(14),
	datab => Internal_Count(12),
	datac => Internal_Count(11),
	datad => Internal_Count(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y3_N0
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!Internal_Count(6) & (!Internal_Count(7) & (!Internal_Count(8) & !Internal_Count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(6),
	datab => Internal_Count(7),
	datac => Internal_Count(8),
	datad => Internal_Count(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y2_N18
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((!Internal_Count(10) & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(10),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X34_Y2_N14
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!Internal_Count(17) & !Internal_Count(16))) # (!Internal_Count(18))) # (!Internal_Count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(17),
	datab => Internal_Count(19),
	datac => Internal_Count(18),
	datad => Internal_Count(16),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y2_N28
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!Internal_Count(22)) # (!Internal_Count(21))) # (!Internal_Count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Internal_Count(20),
	datac => Internal_Count(21),
	datad => Internal_Count(22),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X34_Y2_N20
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!Internal_Count(23) & ((\LessThan0~4_combout\) # (\LessThan0~5_combout\)))) # (!Internal_Count(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(24),
	datab => Internal_Count(23),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X35_Y2_N30
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!Internal_Count(28) & (!Internal_Count(27) & (!Internal_Count(26) & !Internal_Count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Internal_Count(28),
	datab => Internal_Count(27),
	datac => Internal_Count(26),
	datad => Internal_Count(25),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X34_Y2_N26
\ClkFlag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkFlag~0_combout\ = \ClkFlag~regout\ $ ((((!\LessThan0~6_combout\ & !\LessThan0~3_combout\)) # (!\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~3_combout\,
	datac => \ClkFlag~regout\,
	datad => \LessThan0~7_combout\,
	combout => \ClkFlag~0_combout\);

-- Location: LCCOMB_X34_Y2_N0
\LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ((!\LessThan0~6_combout\ & !\LessThan0~3_combout\)) # (!\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~8_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_50~I\ : cycloneii_io
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
	padio => ww_CLK_50,
	combout => \CLK_50~combout\);

-- Location: CLKCTRL_G12
\ClkFlag~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClkFlag~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClkFlag~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y3_N16
\HighDigit[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \HighDigit[0]~4_combout\ = !HighDigit(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HighDigit(0),
	combout => \HighDigit[0]~4_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY0~I\ : cycloneii_io
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
	padio => ww_KEY0,
	combout => \KEY0~combout\);

-- Location: LCCOMB_X33_Y3_N4
\LowDigit[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LowDigit[0]~3_combout\ = !LowDigit(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LowDigit(0),
	combout => \LowDigit[0]~3_combout\);

-- Location: LCFF_X33_Y3_N5
\LowDigit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \LowDigit[0]~3_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => LowDigit(0));

-- Location: LCCOMB_X33_Y3_N14
\LowDigit~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LowDigit~2_combout\ = (LowDigit(2) & (LowDigit(3) $ (((LowDigit(1) & LowDigit(0)))))) # (!LowDigit(2) & (LowDigit(3) & ((LowDigit(1)) # (!LowDigit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(2),
	datab => LowDigit(1),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \LowDigit~2_combout\);

-- Location: LCFF_X33_Y3_N15
\LowDigit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \LowDigit~2_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => LowDigit(3));

-- Location: LCCOMB_X33_Y3_N6
\LowDigit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LowDigit~0_combout\ = (LowDigit(1) & (((!LowDigit(0))))) # (!LowDigit(1) & (LowDigit(0) & ((LowDigit(2)) # (!LowDigit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(2),
	datab => LowDigit(3),
	datac => LowDigit(1),
	datad => LowDigit(0),
	combout => \LowDigit~0_combout\);

-- Location: LCFF_X33_Y3_N7
\LowDigit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \LowDigit~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => LowDigit(1));

-- Location: LCCOMB_X33_Y3_N0
\LowDigit[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LowDigit[2]~1_combout\ = LowDigit(2) $ (((LowDigit(1) & LowDigit(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LowDigit(1),
	datac => LowDigit(2),
	datad => LowDigit(0),
	combout => \LowDigit[2]~1_combout\);

-- Location: LCFF_X33_Y3_N1
\LowDigit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \LowDigit[2]~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => LowDigit(2));

-- Location: LCCOMB_X33_Y3_N8
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (LowDigit(3) & (!LowDigit(2) & (LowDigit(0) & !LowDigit(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(3),
	datab => LowDigit(2),
	datac => LowDigit(0),
	datad => LowDigit(1),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X33_Y3_N17
\HighDigit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \HighDigit[0]~4_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => HighDigit(0));

-- Location: LCCOMB_X33_Y3_N2
\HighDigit[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \HighDigit[3]~2_combout\ = (HighDigit(2) & (HighDigit(0) & HighDigit(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datac => HighDigit(0),
	datad => HighDigit(1),
	combout => \HighDigit[3]~2_combout\);

-- Location: LCCOMB_X33_Y3_N18
\HighDigit[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \HighDigit[3]~3_combout\ = HighDigit(3) $ (((\Equal0~0_combout\ & \HighDigit[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => HighDigit(3),
	datad => \HighDigit[3]~2_combout\,
	combout => \HighDigit[3]~3_combout\);

-- Location: LCFF_X33_Y3_N19
\HighDigit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \HighDigit[3]~3_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => HighDigit(3));

-- Location: LCCOMB_X33_Y3_N30
\HighDigit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HighDigit~0_combout\ = (HighDigit(0) & (!HighDigit(1) & ((HighDigit(3)) # (!HighDigit(2))))) # (!HighDigit(0) & (((HighDigit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(0),
	datab => HighDigit(2),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \HighDigit~0_combout\);

-- Location: LCFF_X33_Y3_N31
\HighDigit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \HighDigit~0_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => HighDigit(1));

-- Location: LCCOMB_X33_Y3_N20
\HighDigit~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HighDigit~1_combout\ = (HighDigit(0) & ((HighDigit(2) & (HighDigit(3) & !HighDigit(1))) # (!HighDigit(2) & ((HighDigit(1)))))) # (!HighDigit(0) & (((HighDigit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(3),
	datab => HighDigit(0),
	datac => HighDigit(2),
	datad => HighDigit(1),
	combout => \HighDigit~1_combout\);

-- Location: LCFF_X33_Y3_N21
\HighDigit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ClkFlag~clkctrl_outclk\,
	datain => \HighDigit~1_combout\,
	aclr => \ALT_INV_KEY0~combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => HighDigit(2));

-- Location: LCCOMB_X64_Y3_N24
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (HighDigit(2) & (!HighDigit(3) & ((!HighDigit(1)) # (!HighDigit(0))))) # (!HighDigit(2) & ((HighDigit(1) $ (HighDigit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datab => HighDigit(0),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X64_Y3_N2
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (HighDigit(2) & ((HighDigit(3)) # ((HighDigit(0) & HighDigit(1))))) # (!HighDigit(2) & ((HighDigit(1)) # ((HighDigit(0) & !HighDigit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datab => HighDigit(0),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X64_Y3_N20
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (HighDigit(0)) # ((HighDigit(1) & ((HighDigit(3)))) # (!HighDigit(1) & (HighDigit(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datab => HighDigit(0),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X64_Y3_N10
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (HighDigit(1) & ((HighDigit(3)) # ((HighDigit(2) & HighDigit(0))))) # (!HighDigit(1) & (HighDigit(2) $ (((HighDigit(0) & !HighDigit(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datab => HighDigit(0),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X64_Y3_N0
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (HighDigit(2) & (((HighDigit(3))))) # (!HighDigit(2) & (HighDigit(1) & ((HighDigit(3)) # (!HighDigit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datab => HighDigit(0),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X64_Y3_N14
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (HighDigit(2) & ((HighDigit(3)) # (HighDigit(0) $ (HighDigit(1))))) # (!HighDigit(2) & (((HighDigit(1) & HighDigit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datab => HighDigit(0),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X64_Y3_N12
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (HighDigit(1) & (((HighDigit(3))))) # (!HighDigit(1) & (HighDigit(2) $ (((HighDigit(0) & !HighDigit(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HighDigit(2),
	datab => HighDigit(0),
	datac => HighDigit(1),
	datad => HighDigit(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X29_Y3_N28
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (LowDigit(1) & (!LowDigit(3) & ((!LowDigit(0)) # (!LowDigit(2))))) # (!LowDigit(1) & (LowDigit(2) $ ((LowDigit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(1),
	datab => LowDigit(2),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X29_Y3_N6
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (LowDigit(2) & ((LowDigit(3)) # ((LowDigit(1) & LowDigit(0))))) # (!LowDigit(2) & ((LowDigit(1)) # ((!LowDigit(3) & LowDigit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(1),
	datab => LowDigit(2),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X29_Y3_N0
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (LowDigit(0)) # ((LowDigit(1) & ((LowDigit(3)))) # (!LowDigit(1) & (LowDigit(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(1),
	datab => LowDigit(2),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X29_Y3_N2
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (LowDigit(1) & ((LowDigit(3)) # ((LowDigit(2) & LowDigit(0))))) # (!LowDigit(1) & (LowDigit(2) $ (((!LowDigit(3) & LowDigit(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(1),
	datab => LowDigit(2),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X29_Y3_N12
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (LowDigit(2) & (((LowDigit(3))))) # (!LowDigit(2) & (LowDigit(1) & ((LowDigit(3)) # (!LowDigit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(1),
	datab => LowDigit(2),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X29_Y3_N22
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (LowDigit(2) & ((LowDigit(3)) # (LowDigit(1) $ (LowDigit(0))))) # (!LowDigit(2) & (LowDigit(1) & (LowDigit(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(1),
	datab => LowDigit(2),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X29_Y3_N24
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (LowDigit(1) & (((LowDigit(3))))) # (!LowDigit(1) & (LowDigit(2) $ (((!LowDigit(3) & LowDigit(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LowDigit(1),
	datab => LowDigit(2),
	datac => LowDigit(3),
	datad => LowDigit(0),
	combout => \Mux0~0_combout\);

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSD[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSD(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSD[5]~I\ : cycloneii_io
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
	datain => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSD(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSD[4]~I\ : cycloneii_io
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
	datain => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSD(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSD[3]~I\ : cycloneii_io
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
	datain => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSD(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSD[2]~I\ : cycloneii_io
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
	datain => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSD(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSD[1]~I\ : cycloneii_io
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
	padio => ww_MSD(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSD[0]~I\ : cycloneii_io
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
	datain => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSD(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LSD[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LSD(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LSD[5]~I\ : cycloneii_io
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
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LSD(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LSD[4]~I\ : cycloneii_io
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
	datain => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LSD(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LSD[3]~I\ : cycloneii_io
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
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LSD(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LSD[2]~I\ : cycloneii_io
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
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LSD(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LSD[1]~I\ : cycloneii_io
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
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LSD(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LSD[0]~I\ : cycloneii_io
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
	datain => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LSD(0));
END structure;


