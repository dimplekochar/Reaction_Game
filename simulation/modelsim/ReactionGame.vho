-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "04/20/2018 21:17:32"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ReactionGame IS
    PORT (
	switch1 : IN std_logic;
	masterclock : IN std_logic;
	pwreset : IN std_logic;
	reset1 : IN std_logic;
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd1 : OUT std_logic_vector(7 DOWNTO 0);
	b11 : OUT std_logic;
	b12 : OUT std_logic;
	tottimeout1 : OUT std_logic_vector(10 DOWNTO 0);
	ledoutput : OUT std_logic;
	go : OUT std_logic
	);
END ReactionGame;

-- Design Ports Information


ARCHITECTURE structure OF ReactionGame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch1 : std_logic;
SIGNAL ww_masterclock : std_logic;
SIGNAL ww_pwreset : std_logic;
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b11 : std_logic;
SIGNAL ww_b12 : std_logic;
SIGNAL ww_tottimeout1 : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_ledoutput : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL \game1|outsample|random:1:twox|Q~regout\ : std_logic;
SIGNAL \game1|outsample|random:2:twox|Q~regout\ : std_logic;
SIGNAL \game1|outsample|random:4:twox|Q~regout\ : std_logic;
SIGNAL \game1|outsample|random:5:twox|Q~regout\ : std_logic;
SIGNAL \game1|outsample|random:6:twox|Q~regout\ : std_logic;
SIGNAL \game1|outsample|random:8:twox|Q~regout\ : std_logic;
SIGNAL \game1|outsample|random:9:twox|Q~regout\ : std_logic;
SIGNAL \game1|outsample|random:10:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|random:10:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:10:twox|Q~regout\ : std_logic;
SIGNAL \reset1~combout\ : std_logic;
SIGNAL \masterclock~combout\ : std_logic;
SIGNAL \oonclk|Q1:0:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:0:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:1:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:1:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:2:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:2:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:3:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:3:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:4:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:4:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:5:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:5:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:6:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:6:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:7:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:7:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:8:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:8:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:9:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:9:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:10:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:10:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:11:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:11:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:12:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:12:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:13:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:13:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:14:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:14:dbtwox|outclk~combout\ : std_logic;
SIGNAL \oonclk|Q1:15:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \oonclk|Q1:15:dbtwox|outclk~combout\ : std_logic;
SIGNAL \display|state.S2~regout\ : std_logic;
SIGNAL \display|state~30_combout\ : std_logic;
SIGNAL \display|state.S0~regout\ : std_logic;
SIGNAL \display|state~26_combout\ : std_logic;
SIGNAL \display|state.S1~regout\ : std_logic;
SIGNAL \display|LessThan0~0_combout\ : std_logic;
SIGNAL \display|LessThan0~1_combout\ : std_logic;
SIGNAL \display|state.S3~regout\ : std_logic;
SIGNAL \display|state.S4~regout\ : std_logic;
SIGNAL \display|state.S5~regout\ : std_logic;
SIGNAL \display|state.S6~regout\ : std_logic;
SIGNAL \display|state.S7~regout\ : std_logic;
SIGNAL \display|state.S8~regout\ : std_logic;
SIGNAL \display|state.S9~regout\ : std_logic;
SIGNAL \display|lcd[4]~0_combout\ : std_logic;
SIGNAL \display|Selector10~0_combout\ : std_logic;
SIGNAL \display|lcd_en~regout\ : std_logic;
SIGNAL \display|Selector8~1_combout\ : std_logic;
SIGNAL \display|Selector8~0_combout\ : std_logic;
SIGNAL \display|Selector8~2_combout\ : std_logic;
SIGNAL \display|lcd_rs~regout\ : std_logic;
SIGNAL \display|Selector3~2_combout\ : std_logic;
SIGNAL \display|Selector7~0_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~157COUT1_161\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \display|ack~regout\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_162\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_165\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_163\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_164\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_166\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_167\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_168\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_169\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_170\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_171\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_172\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_173\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_174\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_175\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_176\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_177\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_178\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_179\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_180\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_181\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_182\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_183\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_184\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \i[0]~0_combout\ : std_logic;
SIGNAL \display|Selector7~1\ : std_logic;
SIGNAL \pwreset~combout\ : std_logic;
SIGNAL \game1|reset~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:0:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:0:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:1:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:1:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:2:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:2:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:3:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:3:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:4:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:4:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:5:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:5:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:6:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:6:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:7:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:7:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:8:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:8:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:9:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:9:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:10:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:10:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:11:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:11:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:12:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:12:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:13:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:13:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:14:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:14:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|onclk|Q1:15:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|onclk|Q1:15:dbtwox|outclk~combout\ : std_logic;
SIGNAL \switch1~combout\ : std_logic;
SIGNAL \game1|debounce|D_FF0|Q~regout\ : std_logic;
SIGNAL \game1|debounce|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|ledfsm1|led~1_combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:0:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:1:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:2:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:3:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:4:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:5:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:6:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:7:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:8:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:9:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:10:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:11:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:12:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:13:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:14:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a1|s1~combout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:0:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:1:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a2|s~combout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a2|c3\ : std_logic;
SIGNAL \game1|checker1|counter1|random:2:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:3:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:4:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a5|c3~combout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:5:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:6:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:7:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a8|c3~combout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a9|s\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a7|s\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a8|s\ : std_logic;
SIGNAL \game1|checker1|counter1|random:8:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a10|s\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a3|s\ : std_logic;
SIGNAL \game1|rand1|dff4|Q~regout\ : std_logic;
SIGNAL \game1|rand1|dff3|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a5|s\ : std_logic;
SIGNAL \game1|rand1|dff2|Q~regout\ : std_logic;
SIGNAL \game1|rand1|dff1|Q~regout\ : std_logic;
SIGNAL \game1|rand1|dff0|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|random:9:twox|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a11|s\ : std_logic;
SIGNAL \game1|rand1|dff9|Q~regout\ : std_logic;
SIGNAL \game1|check~0\ : std_logic;
SIGNAL \game1|rand1|dff8|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a6|s\ : std_logic;
SIGNAL \game1|rand1|dff7|Q~regout\ : std_logic;
SIGNAL \game1|checker1|counter1|add1|a4|s\ : std_logic;
SIGNAL \game1|check~3\ : std_logic;
SIGNAL \game1|check~2\ : std_logic;
SIGNAL \game1|check~4_combout\ : std_logic;
SIGNAL \game1|rand1|dff6|Q~regout\ : std_logic;
SIGNAL \game1|rand1|dff5|Q~regout\ : std_logic;
SIGNAL \game1|check~1\ : std_logic;
SIGNAL \game1|check~5\ : std_logic;
SIGNAL \game1|check~6\ : std_logic;
SIGNAL \game1|ledfsm1|DFF0|Q~regout\ : std_logic;
SIGNAL \game1|ledfsm1|DFF1|Q~regout\ : std_logic;
SIGNAL \game1|ledfsm1|led~0_combout\ : std_logic;
SIGNAL \game1|ledfsm1|led~combout\ : std_logic;
SIGNAL \game1|gameisover1|clk1~combout\ : std_logic;
SIGNAL \game1|gameisover1|dff|Q~regout\ : std_logic;
SIGNAL \game1|clkin2~combout\ : std_logic;
SIGNAL \game1|ledoutput1~0_combout\ : std_logic;
SIGNAL \game1|addclock~combout\ : std_logic;
SIGNAL \game1|da|add1|a1|s1~combout\ : std_logic;
SIGNAL \game1|da|random:0:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|random:1:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|add1|a2|s~combout\ : std_logic;
SIGNAL \game1|da|add1|a2|c3\ : std_logic;
SIGNAL \game1|da|random:3:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|random:4:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|add1|a3|s~combout\ : std_logic;
SIGNAL \game1|da|random:2:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|add1|a5|s\ : std_logic;
SIGNAL \Equal1~0\ : std_logic;
SIGNAL \game1|outsample|random:0:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|add1|a5|c3\ : std_logic;
SIGNAL \game1|da|random:5:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|random:6:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|random:7:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|add1|a8|c3~combout\ : std_logic;
SIGNAL \game1|da|add1|a9|s\ : std_logic;
SIGNAL \i~1_combout\ : std_logic;
SIGNAL \Equal0~10\ : std_logic;
SIGNAL \game1|da|add1|a7|s\ : std_logic;
SIGNAL \game1|da|random:8:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|random:9:twox|Q~regout\ : std_logic;
SIGNAL \game1|da|add1|a11|s\ : std_logic;
SIGNAL \i~3_combout\ : std_logic;
SIGNAL \game1|da|add1|a4|s\ : std_logic;
SIGNAL \game1|da|add1|a8|s\ : std_logic;
SIGNAL \game1|outsample|random:7:twox|Q~regout\ : std_logic;
SIGNAL \i[3]~4\ : std_logic;
SIGNAL \game1|da|add1|a6|s\ : std_logic;
SIGNAL \game1|da|add1|a10|s\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \display|state~29\ : std_logic;
SIGNAL \display|Selector6~0\ : std_logic;
SIGNAL \display|Selector5~0_combout\ : std_logic;
SIGNAL \display|Selector5~1_combout\ : std_logic;
SIGNAL \display|Selector4~0_combout\ : std_logic;
SIGNAL \display|Selector4~1_combout\ : std_logic;
SIGNAL \display|Selector3~3_combout\ : std_logic;
SIGNAL \display|lcd[4]~1_combout\ : std_logic;
SIGNAL \display|Selector3~4\ : std_logic;
SIGNAL \display|Selector0~0_combout\ : std_logic;
SIGNAL \game1|outsample|random:3:twox|Q~regout\ : std_logic;
SIGNAL \game1|ledoutput~combout\ : std_logic;
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL \display|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL j : std_logic_vector(31 DOWNTO 0);
SIGNAL \display|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \display|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL write_column : std_logic_vector(3 DOWNTO 0);
SIGNAL \game1|temp1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \game1|tottimeout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \display|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset1~combout\ : std_logic;

BEGIN

ww_switch1 <= switch1;
ww_masterclock <= masterclock;
ww_pwreset <= pwreset;
ww_reset1 <= reset1;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
lcd1 <= ww_lcd1;
b11 <= ww_b11;
b12 <= ww_b12;
tottimeout1 <= ww_tottimeout1;
ledoutput <= ww_ledoutput;
go <= ww_go;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset1~combout\ <= NOT \reset1~combout\;

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset1,
	combout => \reset1~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\masterclock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_masterclock,
	combout => \masterclock~combout\);

-- Location: LC_X8_Y4_N9
\oonclk|Q1:0:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:0:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:0:dbtwox|D_FF1|Q~regout\))), GLOBAL(\masterclock~combout\), !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	datad => \oonclk|Q1:0:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:0:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y4_N6
\oonclk|Q1:0:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:0:dbtwox|outclk~combout\ = LCELL((((\oonclk|Q1:0:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \oonclk|Q1:0:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:0:dbtwox|outclk~combout\);

-- Location: LC_X6_Y4_N9
\oonclk|Q1:1:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:1:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:1:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:0:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:0:dbtwox|outclk~combout\,
	datad => \oonclk|Q1:1:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:1:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y4_N3
\oonclk|Q1:1:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:1:dbtwox|outclk~combout\ = LCELL((((\oonclk|Q1:1:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \oonclk|Q1:1:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:1:dbtwox|outclk~combout\);

-- Location: LC_X5_Y4_N4
\oonclk|Q1:2:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:2:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:2:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:1:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:1:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:2:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:2:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y4_N6
\oonclk|Q1:2:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:2:dbtwox|outclk~combout\ = LCELL((((\oonclk|Q1:2:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \oonclk|Q1:2:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:2:dbtwox|outclk~combout\);

-- Location: LC_X5_Y4_N5
\oonclk|Q1:3:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:3:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:3:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:2:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:2:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:3:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:3:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y4_N0
\oonclk|Q1:3:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:3:dbtwox|outclk~combout\ = LCELL((((\oonclk|Q1:3:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \oonclk|Q1:3:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:3:dbtwox|outclk~combout\);

-- Location: LC_X6_Y8_N9
\oonclk|Q1:4:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:4:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:4:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:3:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:3:dbtwox|outclk~combout\,
	datad => \oonclk|Q1:4:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:4:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y8_N4
\oonclk|Q1:4:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:4:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:4:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:4:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:4:dbtwox|outclk~combout\);

-- Location: LC_X6_Y8_N3
\oonclk|Q1:5:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:5:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:5:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:4:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:4:dbtwox|outclk~combout\,
	datad => \oonclk|Q1:5:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:5:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y8_N6
\oonclk|Q1:5:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:5:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:5:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:5:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:5:dbtwox|outclk~combout\);

-- Location: LC_X5_Y8_N4
\oonclk|Q1:6:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:6:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:6:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:5:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:5:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:6:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:6:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y8_N9
\oonclk|Q1:6:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:6:dbtwox|outclk~combout\ = LCELL((((\oonclk|Q1:6:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \oonclk|Q1:6:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:6:dbtwox|outclk~combout\);

-- Location: LC_X5_Y8_N0
\oonclk|Q1:7:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:7:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:7:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:6:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:6:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:7:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:7:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y4_N6
\oonclk|Q1:7:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:7:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:7:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:7:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:7:dbtwox|outclk~combout\);

-- Location: LC_X6_Y4_N3
\oonclk|Q1:8:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:8:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:8:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:7:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:7:dbtwox|outclk~combout\,
	datad => \oonclk|Q1:8:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:8:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y4_N7
\oonclk|Q1:8:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:8:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:8:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:8:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:8:dbtwox|outclk~combout\);

-- Location: LC_X5_Y5_N3
\oonclk|Q1:9:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:9:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:9:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:8:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:8:dbtwox|outclk~combout\,
	datad => \oonclk|Q1:9:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:9:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y5_N7
\oonclk|Q1:9:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:9:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:9:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:9:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:9:dbtwox|outclk~combout\);

-- Location: LC_X5_Y5_N4
\oonclk|Q1:10:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:10:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:10:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:9:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:9:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:10:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:10:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y5_N5
\oonclk|Q1:10:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:10:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:10:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:10:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:10:dbtwox|outclk~combout\);

-- Location: LC_X7_Y8_N7
\oonclk|Q1:11:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:11:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:11:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:10:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:10:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:11:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:11:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y4_N7
\oonclk|Q1:11:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:11:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:11:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:11:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:11:dbtwox|outclk~combout\);

-- Location: LC_X7_Y4_N9
\oonclk|Q1:12:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:12:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:12:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:11:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:11:dbtwox|outclk~combout\,
	datad => \oonclk|Q1:12:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:12:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y4_N4
\oonclk|Q1:12:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:12:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:12:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:12:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:12:dbtwox|outclk~combout\);

-- Location: LC_X8_Y4_N8
\oonclk|Q1:13:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:13:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:13:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:12:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:12:dbtwox|outclk~combout\,
	datad => \oonclk|Q1:13:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:13:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y4_N3
\oonclk|Q1:13:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:13:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:13:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:13:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:13:dbtwox|outclk~combout\);

-- Location: LC_X7_Y4_N5
\oonclk|Q1:14:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:14:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:14:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:13:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:13:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:14:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:14:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y4_N8
\oonclk|Q1:14:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:14:dbtwox|outclk~combout\ = LCELL((((\oonclk|Q1:14:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \oonclk|Q1:14:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:14:dbtwox|outclk~combout\);

-- Location: LC_X11_Y4_N0
\oonclk|Q1:15:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:15:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\oonclk|Q1:15:dbtwox|D_FF1|Q~regout\))), \oonclk|Q1:14:dbtwox|outclk~combout\, !\reset1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:14:dbtwox|outclk~combout\,
	datac => \oonclk|Q1:15:dbtwox|D_FF1|Q~regout\,
	aclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oonclk|Q1:15:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X12_Y3_N2
\oonclk|Q1:15:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \oonclk|Q1:15:dbtwox|outclk~combout\ = LCELL((((!\reset1~combout\ & \oonclk|Q1:15:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset1~combout\,
	datad => \oonclk|Q1:15:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oonclk|Q1:15:dbtwox|outclk~combout\);

-- Location: LC_X12_Y5_N1
\display|state.S2\ : maxv_lcell
-- Equation(s):
-- \display|state.S2~regout\ = DFFEAS((!\reset1~combout\ & (((\display|state.S1~regout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datad => \display|state.S1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S2~regout\);

-- Location: LC_X11_Y5_N8
\display|count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- \display|count_cmd\(0) = DFFEAS(\display|count_cmd\(0) $ ((((\display|state.S2~regout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , \reset1~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|count_cmd\(0),
	datad => \display|state.S2~regout\,
	aclr => GND,
	sclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|count_cmd\(0));

-- Location: LC_X11_Y5_N3
\display|state~30\ : maxv_lcell
-- Equation(s):
-- \display|state~30_combout\ = ((\reset1~combout\) # ((\display|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset1~combout\,
	datad => \display|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|state~30_combout\);

-- Location: LC_X11_Y5_N2
\display|count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- \display|count_cmd\(1) = DFFEAS((\display|count_cmd\(1) $ (((\display|count_cmd\(0))))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~30_combout\, , , \reset1~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datab => \display|count_cmd\(1),
	datad => \display|count_cmd\(0),
	aclr => GND,
	sclr => \reset1~combout\,
	ena => \display|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|count_cmd\(1));

-- Location: LC_X11_Y5_N5
\display|state.S0\ : maxv_lcell
-- Equation(s):
-- \display|state.S0~regout\ = DFFEAS((!\display|state~30_combout\), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S0~regout\);

-- Location: LC_X11_Y5_N9
\display|count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- \display|count_cmd\(2) = DFFEAS(\display|count_cmd\(2) $ (((\display|count_cmd\(0) & ((\display|count_cmd\(1)))))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~30_combout\, , , \reset1~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(2),
	datad => \display|count_cmd\(1),
	aclr => GND,
	sclr => \reset1~combout\,
	ena => \display|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|count_cmd\(2));

-- Location: LC_X11_Y5_N4
\display|state~26\ : maxv_lcell
-- Equation(s):
-- \display|state~26_combout\ = (!\display|state.S0~regout\ & (((!\display|count_cmd\(0) & !\display|count_cmd\(1))) # (!\display|count_cmd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "010f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(1),
	datac => \display|state.S0~regout\,
	datad => \display|count_cmd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|state~26_combout\);

-- Location: LC_X11_Y6_N5
\display|state.S1\ : maxv_lcell
-- Equation(s):
-- \display|state.S1~regout\ = DFFEAS((!\reset1~combout\ & (((\display|state~26_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datac => \display|state~26_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S1~regout\);

-- Location: LC_X12_Y5_N4
\display|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \display|LessThan0~0_combout\ = ((!\display|count_cmd\(1) & (!\display|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|count_cmd\(1),
	datac => \display|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|LessThan0~0_combout\);

-- Location: LC_X12_Y5_N0
\display|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \display|LessThan0~1_combout\ = (((!\display|count_cmd\(0) & !\display|count_cmd\(1))) # (!\display|count_cmd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(1),
	datad => \display|count_cmd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|LessThan0~1_combout\);

-- Location: LC_X12_Y6_N4
\display|state.S3\ : maxv_lcell
-- Equation(s):
-- \display|state.S3~regout\ = DFFEAS((!\reset1~combout\ & ((\display|state.S9~regout\) # ((!\display|state.S0~regout\ & !\display|LessThan0~1_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S0~regout\,
	datab => \display|state.S9~regout\,
	datac => \reset1~combout\,
	datad => \display|LessThan0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S3~regout\);

-- Location: LC_X12_Y6_N0
\display|state.S4\ : maxv_lcell
-- Equation(s):
-- \display|state.S4~regout\ = DFFEAS((!\reset1~combout\ & (((\display|state.S3~regout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datac => \display|state.S3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S4~regout\);

-- Location: LC_X12_Y6_N3
\display|state.S5\ : maxv_lcell
-- Equation(s):
-- \display|state.S5~regout\ = DFFEAS((!\reset1~combout\ & (((\display|state.S4~regout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datac => \display|state.S4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S5~regout\);

-- Location: LC_X10_Y6_N4
\display|state.S6\ : maxv_lcell
-- Equation(s):
-- \display|state.S6~regout\ = DFFEAS((!\reset1~combout\ & (((\display|state.S5~regout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datad => \display|state.S5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S6~regout\);

-- Location: LC_X10_Y6_N8
\display|state.S7\ : maxv_lcell
-- Equation(s):
-- \display|state~29\ = (!\reset1~combout\ & (((\display|state.S6~regout\))))
-- \display|state.S7~regout\ = DFFEAS(\display|state~29\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datac => \display|state.S6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|state~29\,
	regout => \display|state.S7~regout\);

-- Location: LC_X10_Y6_N7
\display|state.S8\ : maxv_lcell
-- Equation(s):
-- \display|state.S8~regout\ = DFFEAS((!\reset1~combout\ & (((\display|state.S7~regout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datad => \display|state.S7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S8~regout\);

-- Location: LC_X12_Y6_N5
\display|state.S9\ : maxv_lcell
-- Equation(s):
-- \display|state.S9~regout\ = DFFEAS((!\reset1~combout\ & (((\display|state.S8~regout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \reset1~combout\,
	datad => \display|state.S8~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S9~regout\);

-- Location: LC_X12_Y5_N2
\display|lcd[4]~0\ : maxv_lcell
-- Equation(s):
-- \display|lcd[4]~0_combout\ = (!\display|state.S9~regout\ & ((\display|LessThan0~0_combout\) # ((\display|state.S0~regout\) # (!\display|count_cmd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|LessThan0~0_combout\,
	datab => \display|state.S9~regout\,
	datac => \display|count_cmd\(2),
	datad => \display|state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|lcd[4]~0_combout\);

-- Location: LC_X12_Y6_N7
\display|Selector10~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector10~0_combout\ = ((\display|state.S4~regout\) # ((\display|state.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|state.S4~regout\,
	datac => \display|state.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector10~0_combout\);

-- Location: LC_X12_Y5_N8
\display|lcd_en\ : maxv_lcell
-- Equation(s):
-- \display|lcd_en~regout\ = DFFEAS((\display|state.S1~regout\) # ((\display|Selector10~0_combout\) # ((!\display|lcd[4]~0_combout\ & \display|lcd_en~regout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S1~regout\,
	datab => \display|lcd[4]~0_combout\,
	datac => \display|lcd_en~regout\,
	datad => \display|Selector10~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd_en~regout\);

-- Location: LC_X12_Y5_N7
\display|Selector8~1\ : maxv_lcell
-- Equation(s):
-- \display|Selector8~1_combout\ = (!\display|state.S1~regout\ & (((!\display|state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state.S1~regout\,
	datad => \display|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector8~1_combout\);

-- Location: LC_X12_Y6_N1
\display|Selector8~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector8~0_combout\ = ((!\display|state.S4~regout\ & (!\display|state.S3~regout\ & !\display|state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|state.S4~regout\,
	datac => \display|state.S3~regout\,
	datad => \display|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector8~0_combout\);

-- Location: LC_X12_Y5_N6
\display|Selector8~2\ : maxv_lcell
-- Equation(s):
-- \display|Selector8~2_combout\ = (\display|Selector8~1_combout\ & (\display|Selector8~0_combout\ & ((\display|lcd_rs~regout\) # (!\display|state.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|lcd_rs~regout\,
	datab => \display|state.S9~regout\,
	datac => \display|Selector8~1_combout\,
	datad => \display|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector8~2_combout\);

-- Location: LC_X12_Y5_N5
\display|lcd_rs\ : maxv_lcell
-- Equation(s):
-- \display|lcd_rs~regout\ = DFFEAS((\display|Selector8~2_combout\ & ((\display|state.S0~regout\) # ((\display|lcd_rs~regout\ & !\display|LessThan0~1_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd_rs~regout\,
	datab => \display|LessThan0~1_combout\,
	datac => \display|Selector8~2_combout\,
	datad => \display|state.S0~regout\,
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd_rs~regout\);

-- Location: LC_X10_Y6_N5
\display|Selector3~2\ : maxv_lcell
-- Equation(s):
-- \display|Selector3~2_combout\ = ((!\display|state.S8~regout\ & (!\display|state.S6~regout\ & !\display|state.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|state.S8~regout\,
	datac => \display|state.S6~regout\,
	datad => \display|state.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector3~2_combout\);

-- Location: LC_X11_Y5_N6
\display|Selector7~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector7~0_combout\ = (\display|count_cmd\(0) & (!\display|count_cmd\(1) & ((\display|state~26_combout\) # (!\display|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(1),
	datac => \display|state~26_combout\,
	datad => \display|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector7~0_combout\);

-- Location: LC_X13_Y8_N4
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = ((!j(0)))
-- \Add0~152\ = CARRY(((j(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout => \Add0~152\);

-- Location: LC_X13_Y8_N5
\Add0~155\ : maxv_lcell
-- Equation(s):
-- \Add0~155_combout\ = (j(1) $ ((\Add0~152\)))
-- \Add0~157\ = CARRY(((!\Add0~152\) # (!j(1))))
-- \Add0~157COUT1_161\ = CARRY(((!\Add0~152\) # (!j(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(1),
	cin => \Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\,
	cout0 => \Add0~157\,
	cout1 => \Add0~157COUT1_161\);

-- Location: LC_X13_Y8_N6
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = (j(2) $ ((!(!\Add0~152\ & \Add0~157\) # (\Add0~152\ & \Add0~157COUT1_161\))))
-- \Add0~147\ = CARRY(((j(2) & !\Add0~157\)))
-- \Add0~147COUT1_162\ = CARRY(((j(2) & !\Add0~157COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(2),
	cin => \Add0~152\,
	cin0 => \Add0~157\,
	cin1 => \Add0~157COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_162\);

-- Location: LC_X12_Y6_N2
\display|ack\ : maxv_lcell
-- Equation(s):
-- \display|ack~regout\ = DFFEAS((\display|state.S8~regout\) # ((!\display|state.S0~regout\ & (B1_ack & !\display|LessThan0~1_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , \reset1~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S0~regout\,
	datab => \display|state.S8~regout\,
	datad => \display|LessThan0~1_combout\,
	aclr => GND,
	sclr => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|ack~regout\);

-- Location: LC_X12_Y8_N7
\j[2]\ : maxv_lcell
-- Equation(s):
-- j(2) = DFFEAS((\Add0~145_combout\ & (((!\Equal0~9_combout\) # (!j(1))) # (!j(0)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \Add0~145_combout\,
	datab => j(0),
	datac => j(1),
	datad => \Equal0~9_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(2));

-- Location: LC_X13_Y8_N7
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = (j(3) $ (((!\Add0~152\ & \Add0~147\) # (\Add0~152\ & \Add0~147COUT1_162\))))
-- \Add0~142\ = CARRY(((!\Add0~147\) # (!j(3))))
-- \Add0~142COUT1_163\ = CARRY(((!\Add0~147COUT1_162\) # (!j(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(3),
	cin => \Add0~152\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_163\);

-- Location: LC_X14_Y8_N0
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (j(6) $ ((!\Add0~132\)))
-- \Add0~127\ = CARRY(((j(6) & !\Add0~132\)))
-- \Add0~127COUT1_165\ = CARRY(((j(6) & !\Add0~132\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(6),
	cin => \Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_165\);

-- Location: LC_X14_Y7_N4
\j[6]\ : maxv_lcell
-- Equation(s):
-- j(6) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(6));

-- Location: LC_X13_Y8_N0
\j[7]\ : maxv_lcell
-- Equation(s):
-- \Equal0~7\ = (!j(4) & (!j(5) & (!j[7] & !j(6))))
-- j(7) = DFFEAS(\Equal0~7\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(4),
	datab => j(5),
	datac => \Add0~120_combout\,
	datad => j(6),
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => j(7));

-- Location: LC_X14_Y8_N1
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = j(7) $ (((((!\Add0~132\ & \Add0~127\) # (\Add0~132\ & \Add0~127COUT1_165\)))))
-- \Add0~122\ = CARRY(((!\Add0~127\)) # (!j(7)))
-- \Add0~122COUT1_166\ = CARRY(((!\Add0~127COUT1_165\)) # (!j(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(7),
	cin => \Add0~132\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_166\);

-- Location: LC_X13_Y8_N1
\j[3]\ : maxv_lcell
-- Equation(s):
-- \Equal0~8\ = ((!j(2) & (!j[3] & \Equal0~7\)))
-- j(3) = DFFEAS(\Equal0~8\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datab => j(2),
	datac => \Add0~140_combout\,
	datad => \Equal0~7\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => j(3));

-- Location: LC_X13_Y8_N8
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = j(4) $ ((((!(!\Add0~152\ & \Add0~142\) # (\Add0~152\ & \Add0~142COUT1_163\)))))
-- \Add0~137\ = CARRY((j(4) & ((!\Add0~142\))))
-- \Add0~137COUT1_164\ = CARRY((j(4) & ((!\Add0~142COUT1_163\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(4),
	cin => \Add0~152\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_164\);

-- Location: LC_X13_Y8_N3
\j[4]\ : maxv_lcell
-- Equation(s):
-- j(4) = DFFEAS((((\Add0~135_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \Add0~135_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(4));

-- Location: LC_X13_Y8_N9
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (j(5) $ (((!\Add0~152\ & \Add0~137\) # (\Add0~152\ & \Add0~137COUT1_164\))))
-- \Add0~132\ = CARRY(((!\Add0~137COUT1_164\) # (!j(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(5),
	cin => \Add0~152\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout => \Add0~132\);

-- Location: LC_X13_Y8_N2
\j[5]\ : maxv_lcell
-- Equation(s):
-- j(5) = DFFEAS((((\Add0~130_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \Add0~130_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(5));

-- Location: LC_X14_Y8_N2
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = j(8) $ ((((!(!\Add0~132\ & \Add0~122\) # (\Add0~132\ & \Add0~122COUT1_166\)))))
-- \Add0~117\ = CARRY((j(8) & ((!\Add0~122\))))
-- \Add0~117COUT1_167\ = CARRY((j(8) & ((!\Add0~122COUT1_166\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(8),
	cin => \Add0~132\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_167\);

-- Location: LC_X14_Y7_N6
\j[8]\ : maxv_lcell
-- Equation(s):
-- j(8) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(8));

-- Location: LC_X14_Y8_N3
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = j(9) $ (((((!\Add0~132\ & \Add0~117\) # (\Add0~132\ & \Add0~117COUT1_167\)))))
-- \Add0~112\ = CARRY(((!\Add0~117\)) # (!j(9)))
-- \Add0~112COUT1_168\ = CARRY(((!\Add0~117COUT1_167\)) # (!j(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(9),
	cin => \Add0~132\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_168\);

-- Location: LC_X14_Y7_N8
\j[9]\ : maxv_lcell
-- Equation(s):
-- j(9) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~110_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(9));

-- Location: LC_X14_Y8_N4
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = j(10) $ ((((!(!\Add0~132\ & \Add0~112\) # (\Add0~132\ & \Add0~112COUT1_168\)))))
-- \Add0~107\ = CARRY((j(10) & ((!\Add0~112COUT1_168\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(10),
	cin => \Add0~132\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout => \Add0~107\);

-- Location: LC_X14_Y7_N1
\j[10]\ : maxv_lcell
-- Equation(s):
-- j(10) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(10));

-- Location: LC_X14_Y8_N5
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (j(11) $ ((\Add0~107\)))
-- \Add0~102\ = CARRY(((!\Add0~107\) # (!j(11))))
-- \Add0~102COUT1_169\ = CARRY(((!\Add0~107\) # (!j(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(11),
	cin => \Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_169\);

-- Location: LC_X14_Y7_N2
\j[11]\ : maxv_lcell
-- Equation(s):
-- \Equal0~6\ = (!j(8) & (!j(10) & (!j[11] & !j(9))))
-- j(11) = DFFEAS(\Equal0~6\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(8),
	datab => j(10),
	datac => \Add0~100_combout\,
	datad => j(9),
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => j(11));

-- Location: LC_X14_Y8_N6
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (j(12) $ ((!(!\Add0~107\ & \Add0~102\) # (\Add0~107\ & \Add0~102COUT1_169\))))
-- \Add0~97\ = CARRY(((j(12) & !\Add0~102\)))
-- \Add0~97COUT1_170\ = CARRY(((j(12) & !\Add0~102COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(12),
	cin => \Add0~107\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_170\);

-- Location: LC_X14_Y7_N5
\j[12]\ : maxv_lcell
-- Equation(s):
-- j(12) = DFFEAS((((\Add0~95_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \Add0~95_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(12));

-- Location: LC_X14_Y8_N7
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (j(13) $ (((!\Add0~107\ & \Add0~97\) # (\Add0~107\ & \Add0~97COUT1_170\))))
-- \Add0~92\ = CARRY(((!\Add0~97\) # (!j(13))))
-- \Add0~92COUT1_171\ = CARRY(((!\Add0~97COUT1_170\) # (!j(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(13),
	cin => \Add0~107\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_171\);

-- Location: LC_X14_Y7_N3
\j[13]\ : maxv_lcell
-- Equation(s):
-- j(13) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(13));

-- Location: LC_X14_Y8_N8
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (j(14) $ ((!(!\Add0~107\ & \Add0~92\) # (\Add0~107\ & \Add0~92COUT1_171\))))
-- \Add0~87\ = CARRY(((j(14) & !\Add0~92\)))
-- \Add0~87COUT1_172\ = CARRY(((j(14) & !\Add0~92COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(14),
	cin => \Add0~107\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_172\);

-- Location: LC_X14_Y7_N9
\j[14]\ : maxv_lcell
-- Equation(s):
-- j(14) = DFFEAS((((\Add0~85_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(14));

-- Location: LC_X14_Y7_N7
\j[15]\ : maxv_lcell
-- Equation(s):
-- \Equal0~5\ = (!j(12) & (!j(14) & (!j[15] & !j(13))))
-- j(15) = DFFEAS(\Equal0~5\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(12),
	datab => j(14),
	datac => \Add0~80_combout\,
	datad => j(13),
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => j(15));

-- Location: LC_X14_Y8_N9
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (j(15) $ (((!\Add0~107\ & \Add0~87\) # (\Add0~107\ & \Add0~87COUT1_172\))))
-- \Add0~82\ = CARRY(((!\Add0~87COUT1_172\) # (!j(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(15),
	cin => \Add0~107\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X15_Y8_N0
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (j(16) $ ((!\Add0~82\)))
-- \Add0~77\ = CARRY(((j(16) & !\Add0~82\)))
-- \Add0~77COUT1_173\ = CARRY(((j(16) & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(16),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_173\);

-- Location: LC_X15_Y7_N7
\j[16]\ : maxv_lcell
-- Equation(s):
-- j(16) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(16));

-- Location: LC_X15_Y8_N1
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (j(17) $ (((!\Add0~82\ & \Add0~77\) # (\Add0~82\ & \Add0~77COUT1_173\))))
-- \Add0~72\ = CARRY(((!\Add0~77\) # (!j(17))))
-- \Add0~72COUT1_174\ = CARRY(((!\Add0~77COUT1_173\) # (!j(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(17),
	cin => \Add0~82\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_174\);

-- Location: LC_X15_Y7_N4
\j[17]\ : maxv_lcell
-- Equation(s):
-- j(17) = DFFEAS((((\Add0~70_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(17));

-- Location: LC_X15_Y8_N2
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = j(18) $ ((((!(!\Add0~82\ & \Add0~72\) # (\Add0~82\ & \Add0~72COUT1_174\)))))
-- \Add0~67\ = CARRY((j(18) & ((!\Add0~72\))))
-- \Add0~67COUT1_175\ = CARRY((j(18) & ((!\Add0~72COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(18),
	cin => \Add0~82\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_175\);

-- Location: LC_X15_Y7_N1
\j[18]\ : maxv_lcell
-- Equation(s):
-- j(18) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(18));

-- Location: LC_X15_Y8_N3
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (j(19) $ (((!\Add0~82\ & \Add0~67\) # (\Add0~82\ & \Add0~67COUT1_175\))))
-- \Add0~62\ = CARRY(((!\Add0~67\) # (!j(19))))
-- \Add0~62COUT1_176\ = CARRY(((!\Add0~67COUT1_175\) # (!j(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(19),
	cin => \Add0~82\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_176\);

-- Location: LC_X15_Y7_N8
\j[19]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (!j(17) & (!j(16) & (!j[19] & !j(18))))
-- j(19) = DFFEAS(\Equal0~3\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(17),
	datab => j(16),
	datac => \Add0~60_combout\,
	datad => j(18),
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => j(19));

-- Location: LC_X15_Y8_N4
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (j(20) $ ((!(!\Add0~82\ & \Add0~62\) # (\Add0~82\ & \Add0~62COUT1_176\))))
-- \Add0~57\ = CARRY(((j(20) & !\Add0~62COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(20),
	cin => \Add0~82\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X12_Y8_N1
\j[20]\ : maxv_lcell
-- Equation(s):
-- j(20) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(20));

-- Location: LC_X15_Y8_N5
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (j(21) $ ((\Add0~57\)))
-- \Add0~52\ = CARRY(((!\Add0~57\) # (!j(21))))
-- \Add0~52COUT1_177\ = CARRY(((!\Add0~57\) # (!j(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(21),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_177\);

-- Location: LC_X12_Y8_N6
\j[21]\ : maxv_lcell
-- Equation(s):
-- j(21) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(21));

-- Location: LC_X15_Y8_N6
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (j(22) $ ((!(!\Add0~57\ & \Add0~52\) # (\Add0~57\ & \Add0~52COUT1_177\))))
-- \Add0~47\ = CARRY(((j(22) & !\Add0~52\)))
-- \Add0~47COUT1_178\ = CARRY(((j(22) & !\Add0~52COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(22),
	cin => \Add0~57\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_178\);

-- Location: LC_X12_Y8_N9
\j[22]\ : maxv_lcell
-- Equation(s):
-- j(22) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(22));

-- Location: LC_X12_Y8_N8
\j[23]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (!j(21) & (!j(22) & (!j[23] & !j(20))))
-- j(23) = DFFEAS(\Equal0~2\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(21),
	datab => j(22),
	datac => \Add0~40_combout\,
	datad => j(20),
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => j(23));

-- Location: LC_X15_Y8_N7
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (j(23) $ (((!\Add0~57\ & \Add0~47\) # (\Add0~57\ & \Add0~47COUT1_178\))))
-- \Add0~42\ = CARRY(((!\Add0~47\) # (!j(23))))
-- \Add0~42COUT1_179\ = CARRY(((!\Add0~47COUT1_178\) # (!j(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(23),
	cin => \Add0~57\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_179\);

-- Location: LC_X15_Y8_N8
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = j(24) $ ((((!(!\Add0~57\ & \Add0~42\) # (\Add0~57\ & \Add0~42COUT1_179\)))))
-- \Add0~37\ = CARRY((j(24) & ((!\Add0~42\))))
-- \Add0~37COUT1_180\ = CARRY((j(24) & ((!\Add0~42COUT1_179\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(24),
	cin => \Add0~57\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_180\);

-- Location: LC_X15_Y7_N6
\j[24]\ : maxv_lcell
-- Equation(s):
-- j(24) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(24));

-- Location: LC_X15_Y8_N9
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (j(25) $ (((!\Add0~57\ & \Add0~37\) # (\Add0~57\ & \Add0~37COUT1_180\))))
-- \Add0~32\ = CARRY(((!\Add0~37COUT1_180\) # (!j(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(25),
	cin => \Add0~57\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X15_Y7_N2
\j[25]\ : maxv_lcell
-- Equation(s):
-- j(25) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(25));

-- Location: LC_X16_Y8_N0
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (j(26) $ ((!\Add0~32\)))
-- \Add0~27\ = CARRY(((j(26) & !\Add0~32\)))
-- \Add0~27COUT1_181\ = CARRY(((j(26) & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(26),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_181\);

-- Location: LC_X15_Y7_N3
\j[26]\ : maxv_lcell
-- Equation(s):
-- j(26) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(26));

-- Location: LC_X15_Y7_N9
\j[27]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!j(24) & (!j(25) & (!j[27] & !j(26))))
-- j(27) = DFFEAS(\Equal0~1\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(24),
	datab => j(25),
	datac => \Add0~20_combout\,
	datad => j(26),
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => j(27));

-- Location: LC_X16_Y8_N1
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (j(27) $ (((!\Add0~32\ & \Add0~27\) # (\Add0~32\ & \Add0~27COUT1_181\))))
-- \Add0~22\ = CARRY(((!\Add0~27\) # (!j(27))))
-- \Add0~22COUT1_182\ = CARRY(((!\Add0~27COUT1_181\) # (!j(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(27),
	cin => \Add0~32\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_182\);

-- Location: LC_X16_Y8_N2
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (j(28) $ ((!(!\Add0~32\ & \Add0~22\) # (\Add0~32\ & \Add0~22COUT1_182\))))
-- \Add0~17\ = CARRY(((j(28) & !\Add0~22\)))
-- \Add0~17COUT1_183\ = CARRY(((j(28) & !\Add0~22COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(28),
	cin => \Add0~32\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_183\);

-- Location: LC_X16_Y8_N7
\j[28]\ : maxv_lcell
-- Equation(s):
-- j(28) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(28));

-- Location: LC_X16_Y8_N3
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = j(29) $ (((((!\Add0~32\ & \Add0~17\) # (\Add0~32\ & \Add0~17COUT1_183\)))))
-- \Add0~12\ = CARRY(((!\Add0~17\)) # (!j(29)))
-- \Add0~12COUT1_184\ = CARRY(((!\Add0~17COUT1_183\)) # (!j(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(29),
	cin => \Add0~32\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_184\);

-- Location: LC_X16_Y8_N6
\j[29]\ : maxv_lcell
-- Equation(s):
-- j(29) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(29));

-- Location: LC_X16_Y8_N4
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (j(30) $ ((!(!\Add0~32\ & \Add0~12\) # (\Add0~32\ & \Add0~12COUT1_184\))))
-- \Add0~7\ = CARRY(((j(30) & !\Add0~12COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(30),
	cin => \Add0~32\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X16_Y8_N9
\j[30]\ : maxv_lcell
-- Equation(s):
-- j(30) = DFFEAS(GND, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datac => \Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(30));

-- Location: LC_X16_Y8_N8
\j[31]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!j(29) & (!j(28) & (!j[31] & !j(30))))
-- j(31) = DFFEAS(\Equal0~0\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(29),
	datab => j(28),
	datac => \Add0~0_combout\,
	datad => j(30),
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => j(31));

-- Location: LC_X16_Y8_N5
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((\Add0~7\ $ (j(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => j(31),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X12_Y8_N0
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2\ & (\Equal0~1\ & (\Equal0~0\ & \Equal0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2\,
	datab => \Equal0~1\,
	datac => \Equal0~0\,
	datad => \Equal0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X12_Y8_N3
\Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5\ & (\Equal0~4_combout\ & (\Equal0~6\ & \Equal0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~6\,
	datad => \Equal0~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X12_Y8_N5
\j[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~10\ = ((!j(0) & (!j[1] & \Equal0~9_combout\)))
-- j(1) = DFFEAS(\Equal0~10\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datab => j(0),
	datac => \Add0~155_combout\,
	datad => \Equal0~9_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10\,
	regout => j(1));

-- Location: LC_X12_Y8_N2
\j[0]\ : maxv_lcell
-- Equation(s):
-- \Equal1~0\ = (!j(1) & (((j[0] & \Equal0~9_combout\))))
-- j(0) = DFFEAS(\Equal1~0\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, \Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(1),
	datac => \Add0~150_combout\,
	datad => \Equal0~9_combout\,
	aclr => GND,
	sload => VCC,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0\,
	regout => j(0));

-- Location: LC_X12_Y8_N4
\i[0]~0\ : maxv_lcell
-- Equation(s):
-- \i[0]~0_combout\ = (((\display|ack~regout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|ack~regout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i[0]~0_combout\);

-- Location: LC_X9_Y8_N4
\write_column[0]\ : maxv_lcell
-- Equation(s):
-- write_column(0) = DFFEAS(((!j(0) & (\Equal0~9_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datab => j(0),
	datac => \Equal0~9_combout\,
	aclr => GND,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(0));

-- Location: LC_X11_Y6_N4
\display|cmd_position[0]\ : maxv_lcell
-- Equation(s):
-- \display|Selector7~1\ = (\display|lcd\(0) & (((B1_cmd_position[0] & !\display|Selector8~0_combout\)) # (!\display|lcd[4]~0_combout\))) # (!\display|lcd\(0) & (((B1_cmd_position[0] & !\display|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd\(0),
	datab => \display|lcd[4]~0_combout\,
	datac => write_column(0),
	datad => \display|Selector8~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector7~1\,
	regout => \display|cmd_position\(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pwreset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pwreset,
	combout => \pwreset~combout\);

-- Location: LC_X5_Y6_N1
\game1|reset\ : maxv_lcell
-- Equation(s):
-- \game1|reset~combout\ = (((\pwreset~combout\) # (\reset1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwreset~combout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|reset~combout\);

-- Location: LC_X5_Y6_N6
\game1|onclk|Q1:0:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:0:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:0:dbtwox|D_FF1|Q~regout\))), GLOBAL(\masterclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	datac => \game1|onclk|Q1:0:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:0:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y6_N9
\game1|onclk|Q1:0:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:0:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((\game1|onclk|Q1:0:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \game1|onclk|Q1:0:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:0:dbtwox|outclk~combout\);

-- Location: LC_X9_Y6_N8
\game1|onclk|Q1:1:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:1:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:1:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:0:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:0:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:1:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:1:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y6_N3
\game1|onclk|Q1:1:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:1:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((\game1|onclk|Q1:1:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \game1|onclk|Q1:1:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:1:dbtwox|outclk~combout\);

-- Location: LC_X4_Y6_N2
\game1|onclk|Q1:2:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:2:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:2:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:1:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:1:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:2:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:2:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y6_N8
\game1|onclk|Q1:2:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:2:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|onclk|Q1:2:dbtwox|D_FF1|Q~regout\ & ((!\reset1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|onclk|Q1:2:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:2:dbtwox|outclk~combout\);

-- Location: LC_X6_Y6_N3
\game1|onclk|Q1:3:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:3:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:3:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:2:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:2:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:3:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:3:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y6_N5
\game1|onclk|Q1:3:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:3:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((!\reset1~combout\ & \game1|onclk|Q1:3:dbtwox|D_FF1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \reset1~combout\,
	datad => \game1|onclk|Q1:3:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:3:dbtwox|outclk~combout\);

-- Location: LC_X6_Y9_N7
\game1|onclk|Q1:4:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:4:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:4:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:3:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:3:dbtwox|outclk~combout\,
	datac => \game1|onclk|Q1:4:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:4:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y6_N3
\game1|onclk|Q1:4:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:4:dbtwox|outclk~combout\ = LCELL(((\game1|onclk|Q1:4:dbtwox|D_FF1|Q~regout\ & (!\pwreset~combout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \game1|onclk|Q1:4:dbtwox|D_FF1|Q~regout\,
	datac => \pwreset~combout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:4:dbtwox|outclk~combout\);

-- Location: LC_X7_Y6_N0
\game1|onclk|Q1:5:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:5:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:5:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:4:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:4:dbtwox|outclk~combout\,
	datac => \game1|onclk|Q1:5:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:5:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y6_N1
\game1|onclk|Q1:5:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:5:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((\game1|onclk|Q1:5:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \game1|onclk|Q1:5:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:5:dbtwox|outclk~combout\);

-- Location: LC_X7_Y6_N2
\game1|onclk|Q1:6:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:6:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:6:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:5:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:5:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:6:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:6:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y6_N8
\game1|onclk|Q1:6:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:6:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|onclk|Q1:6:dbtwox|D_FF1|Q~regout\ & (!\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|onclk|Q1:6:dbtwox|D_FF1|Q~regout\,
	datac => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:6:dbtwox|outclk~combout\);

-- Location: LC_X6_Y6_N2
\game1|onclk|Q1:7:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:7:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:7:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:6:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:6:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:7:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:7:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y6_N6
\game1|onclk|Q1:7:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:7:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((!\reset1~combout\ & \game1|onclk|Q1:7:dbtwox|D_FF1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \reset1~combout\,
	datad => \game1|onclk|Q1:7:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:7:dbtwox|outclk~combout\);

-- Location: LC_X5_Y6_N4
\game1|onclk|Q1:8:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:8:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:8:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:7:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:7:dbtwox|outclk~combout\,
	datac => \game1|onclk|Q1:8:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:8:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y6_N2
\game1|onclk|Q1:8:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:8:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((\game1|onclk|Q1:8:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \game1|onclk|Q1:8:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:8:dbtwox|outclk~combout\);

-- Location: LC_X4_Y5_N9
\game1|onclk|Q1:9:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:9:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:9:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:8:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:8:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:9:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:9:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X4_Y5_N5
\game1|onclk|Q1:9:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:9:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((!\reset1~combout\ & \game1|onclk|Q1:9:dbtwox|D_FF1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \reset1~combout\,
	datad => \game1|onclk|Q1:9:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:9:dbtwox|outclk~combout\);

-- Location: LC_X4_Y5_N8
\game1|onclk|Q1:10:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:10:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:10:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:9:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:9:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:10:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:10:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X3_Y6_N7
\game1|onclk|Q1:10:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:10:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((!\reset1~combout\ & \game1|onclk|Q1:10:dbtwox|D_FF1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \reset1~combout\,
	datad => \game1|onclk|Q1:10:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:10:dbtwox|outclk~combout\);

-- Location: LC_X2_Y6_N6
\game1|onclk|Q1:11:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:11:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:11:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:10:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:10:dbtwox|outclk~combout\,
	datac => \game1|onclk|Q1:11:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:11:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X2_Y6_N7
\game1|onclk|Q1:11:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:11:dbtwox|outclk~combout\ = LCELL(((!\pwreset~combout\ & (\game1|onclk|Q1:11:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwreset~combout\,
	datac => \game1|onclk|Q1:11:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:11:dbtwox|outclk~combout\);

-- Location: LC_X2_Y6_N3
\game1|onclk|Q1:12:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:12:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:12:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:11:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:11:dbtwox|outclk~combout\,
	datad => \game1|onclk|Q1:12:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:12:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X3_Y6_N6
\game1|onclk|Q1:12:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:12:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((!\reset1~combout\ & \game1|onclk|Q1:12:dbtwox|D_FF1|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \reset1~combout\,
	datad => \game1|onclk|Q1:12:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:12:dbtwox|outclk~combout\);

-- Location: LC_X3_Y6_N4
\game1|onclk|Q1:13:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:13:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:13:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:12:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:12:dbtwox|outclk~combout\,
	datac => \game1|onclk|Q1:13:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:13:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X3_Y6_N3
\game1|onclk|Q1:13:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:13:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((\game1|onclk|Q1:13:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \game1|onclk|Q1:13:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:13:dbtwox|outclk~combout\);

-- Location: LC_X3_Y6_N0
\game1|onclk|Q1:14:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:14:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:14:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:13:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:13:dbtwox|outclk~combout\,
	datac => \game1|onclk|Q1:14:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:14:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X3_Y6_N9
\game1|onclk|Q1:14:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:14:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (((\game1|onclk|Q1:14:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datac => \game1|onclk|Q1:14:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:14:dbtwox|outclk~combout\);

-- Location: LC_X4_Y6_N7
\game1|onclk|Q1:15:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:15:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|onclk|Q1:15:dbtwox|D_FF1|Q~regout\))), \game1|onclk|Q1:14:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:14:dbtwox|outclk~combout\,
	datac => \game1|onclk|Q1:15:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|onclk|Q1:15:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X5_Y6_N0
\game1|onclk|Q1:15:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|onclk|Q1:15:dbtwox|outclk~combout\ = LCELL(((\game1|onclk|Q1:15:dbtwox|D_FF1|Q~regout\ & (!\pwreset~combout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \game1|onclk|Q1:15:dbtwox|D_FF1|Q~regout\,
	datac => \pwreset~combout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|onclk|Q1:15:dbtwox|outclk~combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch1,
	combout => \switch1~combout\);

-- Location: LC_X6_Y9_N0
\game1|debounce|D_FF0|Q\ : maxv_lcell
-- Equation(s):
-- \game1|debounce|D_FF0|Q~regout\ = DFFEAS((((!\switch1~combout\))), \game1|onclk|Q1:15:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:15:dbtwox|outclk~combout\,
	datad => \switch1~combout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|debounce|D_FF0|Q~regout\);

-- Location: LC_X7_Y7_N0
\game1|debounce|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|debounce|D_FF1|Q~regout\ = DFFEAS((\switch1~combout\ & (\game1|debounce|D_FF0|Q~regout\ & ((\game1|debounce|D_FF1|Q~regout\)))) # (!\switch1~combout\ & ((\game1|debounce|D_FF0|Q~regout\) # ((\game1|debounce|D_FF1|Q~regout\)))), 
-- \game1|onclk|Q1:15:dbtwox|outclk~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|onclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \switch1~combout\,
	datab => \game1|debounce|D_FF0|Q~regout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|debounce|D_FF1|Q~regout\);

-- Location: LC_X7_Y7_N2
\game1|ledfsm1|led~1\ : maxv_lcell
-- Equation(s):
-- \game1|ledfsm1|led~1_combout\ = ((\pwreset~combout\) # ((\game1|debounce|D_FF1|Q~regout\) # (\reset1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwreset~combout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|ledfsm1|led~1_combout\);

-- Location: LC_X8_Y7_N9
\game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q~regout\))), GLOBAL(\masterclock~combout\), !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	datad => \game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y7_N4
\game1|checker1|clock1|Q1:0:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:0:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q~regout\ & (!\reset1~combout\ & !\game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|checker1|clock1|Q1:0:dbtwox|D_FF1|Q~regout\,
	datac => \reset1~combout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:0:dbtwox|outclk~combout\);

-- Location: LC_X8_Y7_N1
\game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:0:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:0:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y7_N5
\game1|checker1|clock1|Q1:1:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:1:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q~regout\ & (!\reset1~combout\ & !\game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|checker1|clock1|Q1:1:dbtwox|D_FF1|Q~regout\,
	datac => \reset1~combout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:1:dbtwox|outclk~combout\);

-- Location: LC_X9_Y7_N1
\game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:1:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:1:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X9_Y7_N9
\game1|checker1|clock1|Q1:2:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:2:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q~regout\ & (!\reset1~combout\ & !\game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|checker1|clock1|Q1:2:dbtwox|D_FF1|Q~regout\,
	datac => \reset1~combout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:2:dbtwox|outclk~combout\);

-- Location: LC_X9_Y7_N7
\game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:2:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:2:dbtwox|outclk~combout\,
	datac => \game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X9_Y7_N6
\game1|checker1|clock1|Q1:3:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:3:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q~regout\ & (!\reset1~combout\ & !\game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|checker1|clock1|Q1:3:dbtwox|D_FF1|Q~regout\,
	datac => \reset1~combout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:3:dbtwox|outclk~combout\);

-- Location: LC_X8_Y6_N0
\game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:3:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:3:dbtwox|outclk~combout\,
	datac => \game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y6_N4
\game1|checker1|clock1|Q1:4:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:4:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & (\game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|debounce|D_FF1|Q~regout\,
	datac => \game1|checker1|clock1|Q1:4:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:4:dbtwox|outclk~combout\);

-- Location: LC_X9_Y6_N9
\game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:4:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:4:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y5_N8
\game1|checker1|clock1|Q1:5:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:5:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & (\game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|debounce|D_FF1|Q~regout\,
	datac => \game1|checker1|clock1|Q1:5:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:5:dbtwox|outclk~combout\);

-- Location: LC_X8_Y5_N7
\game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:5:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:5:dbtwox|outclk~combout\,
	datac => \game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y5_N5
\game1|checker1|clock1|Q1:6:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:6:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & (\game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|debounce|D_FF1|Q~regout\,
	datac => \game1|checker1|clock1|Q1:6:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:6:dbtwox|outclk~combout\);

-- Location: LC_X8_Y5_N9
\game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:6:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:6:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y5_N8
\game1|checker1|clock1|Q1:7:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:7:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q~regout\ & (!\game1|debounce|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|checker1|clock1|Q1:7:dbtwox|D_FF1|Q~regout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:7:dbtwox|outclk~combout\);

-- Location: LC_X7_Y5_N7
\game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:7:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:7:dbtwox|outclk~combout\,
	datac => \game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y5_N9
\game1|checker1|clock1|Q1:8:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:8:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & (\game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|debounce|D_FF1|Q~regout\,
	datac => \game1|checker1|clock1|Q1:8:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:8:dbtwox|outclk~combout\);

-- Location: LC_X6_Y5_N2
\game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:8:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:8:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y5_N4
\game1|checker1|clock1|Q1:9:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:9:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q~regout\ & (!\reset1~combout\ & !\game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|checker1|clock1|Q1:9:dbtwox|D_FF1|Q~regout\,
	datac => \reset1~combout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:9:dbtwox|outclk~combout\);

-- Location: LC_X6_Y5_N3
\game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:9:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:9:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y5_N3
\game1|checker1|clock1|Q1:10:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:10:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (\game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q~regout\ & (!\game1|debounce|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|checker1|clock1|Q1:10:dbtwox|D_FF1|Q~regout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:10:dbtwox|outclk~combout\);

-- Location: LC_X7_Y5_N0
\game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:10:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:10:dbtwox|outclk~combout\,
	datac => \game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y5_N5
\game1|checker1|clock1|Q1:11:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:11:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & (\game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q~regout\ & !\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|debounce|D_FF1|Q~regout\,
	datac => \game1|checker1|clock1|Q1:11:dbtwox|D_FF1|Q~regout\,
	datad => \reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:11:dbtwox|outclk~combout\);

-- Location: LC_X8_Y6_N9
\game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:11:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:11:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y6_N6
\game1|checker1|clock1|Q1:12:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:12:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\reset1~combout\ & (\game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q~regout\ & !\game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \reset1~combout\,
	datac => \game1|checker1|clock1|Q1:12:dbtwox|D_FF1|Q~regout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:12:dbtwox|outclk~combout\);

-- Location: LC_X4_Y7_N9
\game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:12:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:12:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X4_Y7_N6
\game1|checker1|clock1|Q1:13:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:13:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & (!\reset1~combout\ & \game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \game1|debounce|D_FF1|Q~regout\,
	datac => \reset1~combout\,
	datad => \game1|checker1|clock1|Q1:13:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:13:dbtwox|outclk~combout\);

-- Location: LC_X4_Y7_N8
\game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:13:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:13:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y7_N9
\game1|checker1|clock1|Q1:14:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:14:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\reset1~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & \game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \reset1~combout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \game1|checker1|clock1|Q1:14:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:14:dbtwox|outclk~combout\);

-- Location: LC_X6_Y7_N3
\game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q~regout\))), \game1|checker1|clock1|Q1:14:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:14:dbtwox|outclk~combout\,
	datad => \game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y7_N7
\game1|checker1|clock1|Q1:15:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\ = LCELL((!\pwreset~combout\ & (!\reset1~combout\ & (!\game1|debounce|D_FF1|Q~regout\ & \game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \reset1~combout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \game1|checker1|clock1|Q1:15:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\);

-- Location: LC_X8_Y7_N3
\game1|checker1|counter1|add1|a1|s1\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a1|s1~combout\ = \game1|checker1|counter1|random:0:twox|Q~regout\ $ (((\reset1~combout\) # ((\pwreset~combout\) # (\game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5556",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|checker1|counter1|random:0:twox|Q~regout\,
	datab => \reset1~combout\,
	datac => \pwreset~combout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a1|s1~combout\);

-- Location: LC_X7_Y7_N5
\game1|checker1|counter1|random:0:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|random:0:twox|Q~regout\ = DFFEAS((((!\game1|checker1|counter1|add1|a1|s1~combout\))), \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	datac => \game1|checker1|counter1|add1|a1|s1~combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|checker1|counter1|random:0:twox|Q~regout\);

-- Location: LC_X7_Y7_N7
\game1|checker1|counter1|random:1:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a2|c3\ = (\game1|checker1|counter1|random:0:twox|Q~regout\ & (((E73_Q & !\game1|ledfsm1|led~1_combout\))))
-- \game1|checker1|counter1|random:1:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a2|c3\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , \game1|checker1|counter1|add1|a2|s~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|checker1|counter1|random:0:twox|Q~regout\,
	datac => \game1|checker1|counter1|add1|a2|s~combout\,
	datad => \game1|ledfsm1|led~1_combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a2|c3\,
	regout => \game1|checker1|counter1|random:1:twox|Q~regout\);

-- Location: LC_X8_Y7_N7
\game1|checker1|counter1|add1|a2|s\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a2|s~combout\ = \game1|checker1|counter1|random:1:twox|Q~regout\ $ (((\game1|checker1|counter1|random:0:twox|Q~regout\ & ((!\game1|ledfsm1|led~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|checker1|counter1|random:0:twox|Q~regout\,
	datab => \game1|checker1|counter1|random:1:twox|Q~regout\,
	datad => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a2|s~combout\);

-- Location: LC_X7_Y7_N1
\game1|checker1|counter1|random:2:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a3|s\ = E74_Q $ (((\game1|checker1|counter1|random:0:twox|Q~regout\ & (\game1|checker1|counter1|random:1:twox|Q~regout\ & !\game1|ledfsm1|led~1_combout\))))
-- \game1|checker1|counter1|random:2:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a3|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|checker1|counter1|random:0:twox|Q~regout\,
	datab => \game1|checker1|counter1|random:1:twox|Q~regout\,
	datad => \game1|ledfsm1|led~1_combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a3|s\,
	regout => \game1|checker1|counter1|random:2:twox|Q~regout\);

-- Location: LC_X6_Y7_N5
\game1|checker1|counter1|random:3:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a4|s\ = (E75_Q $ (((\game1|checker1|counter1|add1|a2|c3\ & \game1|checker1|counter1|random:2:twox|Q~regout\))))
-- \game1|checker1|counter1|random:3:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a4|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|checker1|counter1|add1|a2|c3\,
	datad => \game1|checker1|counter1|random:2:twox|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a4|s\,
	regout => \game1|checker1|counter1|random:3:twox|Q~regout\);

-- Location: LC_X7_Y7_N6
\game1|checker1|counter1|random:4:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a5|s\ = E76_Q $ (((\game1|checker1|counter1|random:3:twox|Q~regout\ & (\game1|checker1|counter1|add1|a2|c3\ & \game1|checker1|counter1|random:2:twox|Q~regout\))))
-- \game1|checker1|counter1|random:4:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a5|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|checker1|counter1|random:3:twox|Q~regout\,
	datab => \game1|checker1|counter1|add1|a2|c3\,
	datad => \game1|checker1|counter1|random:2:twox|Q~regout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a5|s\,
	regout => \game1|checker1|counter1|random:4:twox|Q~regout\);

-- Location: LC_X7_Y7_N8
\game1|checker1|counter1|add1|a5|c3\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a5|c3~combout\ = (\game1|checker1|counter1|random:3:twox|Q~regout\ & (\game1|checker1|counter1|random:2:twox|Q~regout\ & (\game1|checker1|counter1|random:4:twox|Q~regout\ & \game1|checker1|counter1|add1|a2|c3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|checker1|counter1|random:3:twox|Q~regout\,
	datab => \game1|checker1|counter1|random:2:twox|Q~regout\,
	datac => \game1|checker1|counter1|random:4:twox|Q~regout\,
	datad => \game1|checker1|counter1|add1|a2|c3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a5|c3~combout\);

-- Location: LC_X7_Y7_N9
\game1|checker1|counter1|random:5:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a6|s\ = ((E77_Q $ (\game1|checker1|counter1|add1|a5|c3~combout\)))
-- \game1|checker1|counter1|random:5:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a6|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	datad => \game1|checker1|counter1|add1|a5|c3~combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a6|s\,
	regout => \game1|checker1|counter1|random:5:twox|Q~regout\);

-- Location: LC_X7_Y7_N3
\game1|checker1|counter1|random:6:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a7|s\ = (E78_Q $ (((\game1|checker1|counter1|random:5:twox|Q~regout\ & \game1|checker1|counter1|add1|a5|c3~combout\))))
-- \game1|checker1|counter1|random:6:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a7|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	datab => \game1|checker1|counter1|random:5:twox|Q~regout\,
	datad => \game1|checker1|counter1|add1|a5|c3~combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a7|s\,
	regout => \game1|checker1|counter1|random:6:twox|Q~regout\);

-- Location: LC_X7_Y7_N4
\game1|checker1|counter1|random:7:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a8|s\ = E79_Q $ (((\game1|checker1|counter1|random:6:twox|Q~regout\ & (\game1|checker1|counter1|random:5:twox|Q~regout\ & \game1|checker1|counter1|add1|a5|c3~combout\))))
-- \game1|checker1|counter1|random:7:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a8|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|checker1|counter1|random:6:twox|Q~regout\,
	datab => \game1|checker1|counter1|random:5:twox|Q~regout\,
	datad => \game1|checker1|counter1|add1|a5|c3~combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a8|s\,
	regout => \game1|checker1|counter1|random:7:twox|Q~regout\);

-- Location: LC_X6_Y7_N1
\game1|checker1|counter1|add1|a8|c3\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a8|c3~combout\ = (\game1|checker1|counter1|random:6:twox|Q~regout\ & (\game1|checker1|counter1|random:7:twox|Q~regout\ & (\game1|checker1|counter1|random:5:twox|Q~regout\ & \game1|checker1|counter1|add1|a5|c3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|checker1|counter1|random:6:twox|Q~regout\,
	datab => \game1|checker1|counter1|random:7:twox|Q~regout\,
	datac => \game1|checker1|counter1|random:5:twox|Q~regout\,
	datad => \game1|checker1|counter1|add1|a5|c3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a8|c3~combout\);

-- Location: LC_X6_Y7_N4
\game1|checker1|counter1|random:8:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a9|s\ = ((E80_Q $ (\game1|checker1|counter1|add1|a8|c3~combout\)))
-- \game1|checker1|counter1|random:8:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a9|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	datad => \game1|checker1|counter1|add1|a8|c3~combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a9|s\,
	regout => \game1|checker1|counter1|random:8:twox|Q~regout\);

-- Location: LC_X6_Y7_N2
\game1|checker1|counter1|random:9:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a10|s\ = (E81_Q $ (((\game1|checker1|counter1|random:8:twox|Q~regout\ & \game1|checker1|counter1|add1|a8|c3~combout\))))
-- \game1|checker1|counter1|random:9:twox|Q~regout\ = DFFEAS(\game1|checker1|counter1|add1|a10|s\, \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\, !\game1|ledfsm1|led~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|checker1|counter1|random:8:twox|Q~regout\,
	datad => \game1|checker1|counter1|add1|a8|c3~combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a10|s\,
	regout => \game1|checker1|counter1|random:9:twox|Q~regout\);

-- Location: LC_X5_Y7_N7
\game1|rand1|dff4|Q\ : maxv_lcell
-- Equation(s):
-- \game1|rand1|dff4|Q~regout\ = DFFEAS(\game1|rand1|dff5|Q~regout\ $ ((((!\game1|rand1|dff0|Q~regout\)))), GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|rand1|dff5|Q~regout\,
	datad => \game1|rand1|dff0|Q~regout\,
	aclr => \pwreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|rand1|dff4|Q~regout\);

-- Location: LC_X5_Y7_N6
\game1|rand1|dff3|Q\ : maxv_lcell
-- Equation(s):
-- \game1|rand1|dff3|Q~regout\ = DFFEAS(((\game1|rand1|dff4|Q~regout\ $ (!\game1|rand1|dff0|Q~regout\))), GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	datac => \game1|rand1|dff4|Q~regout\,
	datad => \game1|rand1|dff0|Q~regout\,
	aclr => \pwreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|rand1|dff3|Q~regout\);

-- Location: LC_X5_Y7_N9
\game1|rand1|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \game1|check~2\ = (\game1|checker1|counter1|add1|a3|s\ & ((\game1|rand1|dff4|Q~regout\ $ (\game1|checker1|counter1|add1|a5|s\)) # (!E48_Q))) # (!\game1|checker1|counter1|add1|a3|s\ & ((E48_Q) # (\game1|rand1|dff4|Q~regout\ $ 
-- (\game1|checker1|counter1|add1|a5|s\))))
-- \game1|rand1|dff2|Q~regout\ = DFFEAS(\game1|check~2\, GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , \game1|rand1|dff3|Q~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bde",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|checker1|counter1|add1|a3|s\,
	datab => \game1|rand1|dff4|Q~regout\,
	datac => \game1|rand1|dff3|Q~regout\,
	datad => \game1|checker1|counter1|add1|a5|s\,
	aclr => \pwreset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|check~2\,
	regout => \game1|rand1|dff2|Q~regout\);

-- Location: LC_X8_Y7_N0
\game1|rand1|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|rand1|dff1|Q~regout\ = DFFEAS(GND, GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , \game1|rand1|dff2|Q~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	datac => \game1|rand1|dff2|Q~regout\,
	aclr => \pwreset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|rand1|dff1|Q~regout\);

-- Location: LC_X8_Y7_N8
\game1|rand1|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \game1|check~3\ = (\game1|checker1|counter1|add1|a1|s1~combout\ & ((E46_Q) # (\game1|rand1|dff1|Q~regout\ $ (\game1|checker1|counter1|add1|a2|s~combout\)))) # (!\game1|checker1|counter1|add1|a1|s1~combout\ & ((\game1|rand1|dff1|Q~regout\ $ 
-- (\game1|checker1|counter1|add1|a2|s~combout\)) # (!E46_Q)))
-- \game1|rand1|dff0|Q~regout\ = DFFEAS(\game1|check~3\, GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , \game1|rand1|dff1|Q~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b7ed",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|checker1|counter1|add1|a1|s1~combout\,
	datab => \game1|rand1|dff1|Q~regout\,
	datac => \game1|rand1|dff1|Q~regout\,
	datad => \game1|checker1|counter1|add1|a2|s~combout\,
	aclr => \pwreset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|check~3\,
	regout => \game1|rand1|dff0|Q~regout\);

-- Location: LC_X6_Y7_N8
\game1|checker1|counter1|random:10:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|checker1|counter1|add1|a11|s\ = E82_Q $ (((\game1|checker1|counter1|random:8:twox|Q~regout\ & (\game1|checker1|counter1|random:9:twox|Q~regout\ & \game1|checker1|counter1|add1|a8|c3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|checker1|clock1|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|checker1|counter1|random:8:twox|Q~regout\,
	datab => \game1|checker1|counter1|random:9:twox|Q~regout\,
	datad => \game1|checker1|counter1|add1|a8|c3~combout\,
	aclr => \game1|ledfsm1|led~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|checker1|counter1|add1|a11|s\,
	regout => \game1|checker1|counter1|random:10:twox|Q~regout\);

-- Location: LC_X5_Y7_N3
\game1|rand1|dff9|Q\ : maxv_lcell
-- Equation(s):
-- \game1|check~0\ = ((\game1|checker1|counter1|add1|a10|s\ $ (E55_Q)) # (!\game1|checker1|counter1|add1|a11|s\))
-- \game1|rand1|dff9|Q~regout\ = DFFEAS(\game1|check~0\, GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , \game1|rand1|dff0|Q~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	datab => \game1|checker1|counter1|add1|a10|s\,
	datac => \game1|rand1|dff0|Q~regout\,
	datad => \game1|checker1|counter1|add1|a11|s\,
	aclr => \pwreset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|check~0\,
	regout => \game1|rand1|dff9|Q~regout\);

-- Location: LC_X5_Y7_N4
\game1|rand1|dff8|Q\ : maxv_lcell
-- Equation(s):
-- \game1|check~6\ = (\game1|check~5\) # ((\game1|check~0\) # (\game1|checker1|counter1|add1|a9|s\ $ (E54_Q)))
-- \game1|rand1|dff8|Q~regout\ = DFFEAS(\game1|check~6\, GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , \game1|rand1|dff9|Q~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffde",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|checker1|counter1|add1|a9|s\,
	datab => \game1|check~5\,
	datac => \game1|rand1|dff9|Q~regout\,
	datad => \game1|check~0\,
	aclr => \pwreset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|check~6\,
	regout => \game1|rand1|dff8|Q~regout\);

-- Location: LC_X5_Y7_N2
\game1|rand1|dff7|Q\ : maxv_lcell
-- Equation(s):
-- \game1|check~1\ = (\game1|rand1|dff5|Q~regout\ & ((\game1|checker1|counter1|add1|a8|s\ $ (E53_Q)) # (!\game1|checker1|counter1|add1|a6|s\))) # (!\game1|rand1|dff5|Q~regout\ & ((\game1|checker1|counter1|add1|a6|s\) # (\game1|checker1|counter1|add1|a8|s\ $ 
-- (E53_Q))))
-- \game1|rand1|dff7|Q~regout\ = DFFEAS(\game1|check~1\, GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , \game1|rand1|dff8|Q~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7dbe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|rand1|dff5|Q~regout\,
	datab => \game1|checker1|counter1|add1|a8|s\,
	datac => \game1|rand1|dff8|Q~regout\,
	datad => \game1|checker1|counter1|add1|a6|s\,
	aclr => \pwreset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|check~1\,
	regout => \game1|rand1|dff7|Q~regout\);

-- Location: LC_X5_Y7_N0
\game1|check~4\ : maxv_lcell
-- Equation(s):
-- \game1|check~4_combout\ = (\game1|check~3\) # ((\game1|check~2\) # (\game1|rand1|dff3|Q~regout\ $ (\game1|checker1|counter1|add1|a4|s\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|rand1|dff3|Q~regout\,
	datab => \game1|checker1|counter1|add1|a4|s\,
	datac => \game1|check~3\,
	datad => \game1|check~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|check~4_combout\);

-- Location: LC_X5_Y7_N1
\game1|rand1|dff6|Q\ : maxv_lcell
-- Equation(s):
-- \game1|check~5\ = (\game1|check~1\) # ((\game1|check~4_combout\) # (\game1|checker1|counter1|add1|a7|s\ $ (E52_Q)))
-- \game1|rand1|dff6|Q~regout\ = DFFEAS(\game1|check~5\, GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , \game1|rand1|dff7|Q~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffde",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|checker1|counter1|add1|a7|s\,
	datab => \game1|check~1\,
	datac => \game1|rand1|dff7|Q~regout\,
	datad => \game1|check~4_combout\,
	aclr => \pwreset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|check~5\,
	regout => \game1|rand1|dff6|Q~regout\);

-- Location: LC_X5_Y7_N8
\game1|rand1|dff5|Q\ : maxv_lcell
-- Equation(s):
-- \game1|rand1|dff5|Q~regout\ = DFFEAS(\game1|rand1|dff6|Q~regout\ $ ((((!\game1|rand1|dff0|Q~regout\)))), GLOBAL(\masterclock~combout\), !\pwreset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|rand1|dff6|Q~regout\,
	datad => \game1|rand1|dff0|Q~regout\,
	aclr => \pwreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|rand1|dff5|Q~regout\);

-- Location: LC_X5_Y7_N5
\game1|ledfsm1|DFF0|Q\ : maxv_lcell
-- Equation(s):
-- \game1|ledfsm1|DFF0|Q~regout\ = DFFEAS(((!\game1|debounce|D_FF1|Q~regout\ & ((\game1|ledfsm1|DFF0|Q~regout\) # (!\game1|check~6\)))), GLOBAL(\masterclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|ledfsm1|DFF0|Q~regout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \game1|check~6\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|ledfsm1|DFF0|Q~regout\);

-- Location: LC_X5_Y6_N7
\game1|ledfsm1|DFF1|Q\ : maxv_lcell
-- Equation(s):
-- \game1|ledfsm1|DFF1|Q~regout\ = DFFEAS((\game1|debounce|D_FF1|Q~regout\ & ((\game1|ledfsm1|DFF0|Q~regout\) # ((\game1|ledfsm1|DFF1|Q~regout\)))), GLOBAL(\masterclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \masterclock~combout\,
	dataa => \game1|ledfsm1|DFF0|Q~regout\,
	datab => \game1|debounce|D_FF1|Q~regout\,
	datac => \game1|ledfsm1|DFF1|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|ledfsm1|DFF1|Q~regout\);

-- Location: LC_X5_Y6_N5
\game1|ledfsm1|led~0\ : maxv_lcell
-- Equation(s):
-- \game1|ledfsm1|led~0_combout\ = (!\game1|reset~combout\ & ((\game1|ledfsm1|DFF1|Q~regout\ & ((\game1|debounce|D_FF1|Q~regout\))) # (!\game1|ledfsm1|DFF1|Q~regout\ & (\game1|ledfsm1|DFF0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|ledfsm1|DFF0|Q~regout\,
	datab => \game1|ledfsm1|DFF1|Q~regout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|ledfsm1|led~0_combout\);

-- Location: LC_X10_Y7_N6
\game1|ledfsm1|led\ : maxv_lcell
-- Equation(s):
-- \game1|ledfsm1|led~combout\ = LCELL(((\game1|ledfsm1|led~0_combout\) # ((!\game1|check~6\ & !\game1|ledfsm1|led~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \game1|check~6\,
	datac => \game1|ledfsm1|led~1_combout\,
	datad => \game1|ledfsm1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|ledfsm1|led~combout\);

-- Location: LC_X9_Y7_N8
\game1|gameisover1|clk1\ : maxv_lcell
-- Equation(s):
-- \game1|gameisover1|clk1~combout\ = LCELL(((\masterclock~combout\ & (!\game1|ledfsm1|led~combout\ & \game1|debounce|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \masterclock~combout\,
	datac => \game1|ledfsm1|led~combout\,
	datad => \game1|debounce|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|gameisover1|clk1~combout\);

-- Location: LC_X8_Y8_N5
\game1|gameisover1|dff|Q\ : maxv_lcell
-- Equation(s):
-- \game1|gameisover1|dff|Q~regout\ = DFFEAS(VCC, \game1|gameisover1|clk1~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|gameisover1|clk1~combout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|gameisover1|dff|Q~regout\);

-- Location: LC_X10_Y7_N7
\game1|clkin2\ : maxv_lcell
-- Equation(s):
-- \game1|clkin2~combout\ = LCELL(((!\game1|gameisover1|dff|Q~regout\ & (\game1|debounce|D_FF1|Q~regout\ & \game1|ledfsm1|led~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|debounce|D_FF1|Q~regout\,
	datad => \game1|ledfsm1|led~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|clkin2~combout\);

-- Location: LC_X10_Y7_N5
\game1|temp1[0]\ : maxv_lcell
-- Equation(s):
-- \game1|temp1\(0) = DFFEAS((((!\game1|temp1\(0)))), \game1|ledfsm1|led~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|ledfsm1|led~combout\,
	datac => \game1|temp1\(0),
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|temp1\(0));

-- Location: LC_X10_Y7_N9
\game1|temp1[1]\ : maxv_lcell
-- Equation(s):
-- \game1|temp1\(1) = DFFEAS(((\game1|temp1\(0) $ (\game1|temp1\(1)))), \game1|ledfsm1|led~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|ledfsm1|led~combout\,
	datac => \game1|temp1\(0),
	datad => \game1|temp1\(1),
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|temp1\(1));

-- Location: LC_X10_Y7_N0
\game1|temp1[2]\ : maxv_lcell
-- Equation(s):
-- \game1|temp1\(2) = DFFEAS(\game1|temp1\(2) $ (((\game1|temp1\(0) & (\game1|temp1\(1))))), \game1|ledfsm1|led~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|ledfsm1|led~combout\,
	dataa => \game1|temp1\(0),
	datab => \game1|temp1\(1),
	datac => \game1|temp1\(2),
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|temp1\(2));

-- Location: LC_X10_Y7_N1
\game1|temp1[3]\ : maxv_lcell
-- Equation(s):
-- \game1|temp1\(3) = DFFEAS(\game1|temp1\(3) $ (((\game1|temp1\(0) & (\game1|temp1\(1) & \game1|temp1\(2))))), \game1|ledfsm1|led~combout\, !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|ledfsm1|led~combout\,
	dataa => \game1|temp1\(0),
	datab => \game1|temp1\(1),
	datac => \game1|temp1\(2),
	datad => \game1|temp1\(3),
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|temp1\(3));

-- Location: LC_X10_Y7_N3
\game1|ledoutput1~0\ : maxv_lcell
-- Equation(s):
-- \game1|ledoutput1~0_combout\ = ((\game1|temp1\(1)) # ((\game1|temp1\(2)) # (!\game1|temp1\(3)))) # (!\game1|temp1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|temp1\(0),
	datab => \game1|temp1\(1),
	datac => \game1|temp1\(2),
	datad => \game1|temp1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|ledoutput1~0_combout\);

-- Location: LC_X10_Y7_N4
\game1|addclock\ : maxv_lcell
-- Equation(s):
-- \game1|addclock~combout\ = LCELL((!\game1|debounce|D_FF1|Q~regout\ & (\game1|onclk|Q1:15:dbtwox|outclk~combout\ & (\game1|ledfsm1|led~combout\ & \game1|ledoutput1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|debounce|D_FF1|Q~regout\,
	datab => \game1|onclk|Q1:15:dbtwox|outclk~combout\,
	datac => \game1|ledfsm1|led~combout\,
	datad => \game1|ledoutput1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|addclock~combout\);

-- Location: LC_X6_Y10_N1
\game1|da|add1|a1|s1\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a1|s1~combout\ = (\game1|da|random:0:twox|Q~regout\ $ (((\pwreset~combout\) # (\reset1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \reset1~combout\,
	datad => \game1|da|random:0:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a1|s1~combout\);

-- Location: LC_X6_Y10_N2
\game1|da|random:0:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|random:0:twox|Q~regout\ = DFFEAS((!\game1|da|add1|a1|s1~combout\), GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|add1|a1|s1~combout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|da|random:0:twox|Q~regout\);

-- Location: LC_X6_Y10_N7
\game1|da|random:1:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a2|c3\ = (!\pwreset~combout\ & (!\reset1~combout\ & (E86_Q & \game1|da|random:0:twox|Q~regout\)))
-- \game1|da|random:1:twox|Q~regout\ = DFFEAS(\game1|da|add1|a2|c3\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , \game1|da|add1|a2|s~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \pwreset~combout\,
	datab => \reset1~combout\,
	datac => \game1|da|add1|a2|s~combout\,
	datad => \game1|da|random:0:twox|Q~regout\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a2|c3\,
	regout => \game1|da|random:1:twox|Q~regout\);

-- Location: LC_X6_Y10_N6
\game1|da|add1|a2|s\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a2|s~combout\ = \game1|da|random:1:twox|Q~regout\ $ (((!\pwreset~combout\ & (!\reset1~combout\ & \game1|da|random:0:twox|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwreset~combout\,
	datab => \reset1~combout\,
	datac => \game1|da|random:1:twox|Q~regout\,
	datad => \game1|da|random:0:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a2|s~combout\);

-- Location: LC_X7_Y10_N8
\game1|da|random:3:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a4|s\ = E88_Q $ (((\game1|da|add1|a2|c3\ & (\game1|da|random:2:twox|Q~regout\))))
-- \game1|da|random:3:twox|Q~regout\ = DFFEAS(\game1|da|add1|a4|s\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|add1|a2|c3\,
	datab => \game1|da|random:2:twox|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a4|s\,
	regout => \game1|da|random:3:twox|Q~regout\);

-- Location: LC_X7_Y10_N4
\game1|da|random:4:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a5|s\ = E89_Q $ (((\game1|da|add1|a2|c3\ & (\game1|da|random:2:twox|Q~regout\ & \game1|da|random:3:twox|Q~regout\))))
-- \game1|da|random:4:twox|Q~regout\ = DFFEAS(\game1|da|add1|a5|s\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|add1|a2|c3\,
	datab => \game1|da|random:2:twox|Q~regout\,
	datad => \game1|da|random:3:twox|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a5|s\,
	regout => \game1|da|random:4:twox|Q~regout\);

-- Location: LC_X7_Y10_N3
\game1|da|add1|a3|s\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a3|s~combout\ = \game1|da|add1|a2|c3\ $ ((((\game1|da|random:2:twox|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|da|add1|a2|c3\,
	datac => \game1|da|random:2:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a3|s~combout\);

-- Location: LC_X7_Y10_N0
\game1|da|random:2:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a5|c3\ = (\game1|da|add1|a2|c3\ & (\game1|da|random:4:twox|Q~regout\ & (E87_Q & \game1|da|random:3:twox|Q~regout\)))
-- \game1|da|random:2:twox|Q~regout\ = DFFEAS(\game1|da|add1|a5|c3\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , \game1|da|add1|a3|s~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|add1|a2|c3\,
	datab => \game1|da|random:4:twox|Q~regout\,
	datac => \game1|da|add1|a3|s~combout\,
	datad => \game1|da|random:3:twox|Q~regout\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a5|c3\,
	regout => \game1|da|random:2:twox|Q~regout\);

-- Location: LC_X8_Y8_N8
\game1|outsample|random:4:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(4) = (!\game1|gameisover1|dff|Q~regout\ & (((E100_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a5|s\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(4),
	regout => \game1|outsample|random:4:twox|Q~regout\);

-- Location: LC_X9_Y8_N8
\game1|outsample|random:0:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|outsample|random:0:twox|Q~regout\ = DFFEAS((!\game1|da|add1|a1|s1~combout\), GLOBAL(\game1|clkin2~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|da|add1|a1|s1~combout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game1|outsample|random:0:twox|Q~regout\);

-- Location: LC_X9_Y8_N7
\game1|tottimeout[0]\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(0) = (((!\game1|gameisover1|dff|Q~regout\ & \game1|outsample|random:0:twox|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \game1|gameisover1|dff|Q~regout\,
	datad => \game1|outsample|random:0:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(0));

-- Location: LC_X8_Y10_N0
\game1|da|random:5:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a6|s\ = ((E90_Q $ (\game1|da|add1|a5|c3\)))
-- \game1|da|random:5:twox|Q~regout\ = DFFEAS(\game1|da|add1|a6|s\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	datad => \game1|da|add1|a5|c3\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a6|s\,
	regout => \game1|da|random:5:twox|Q~regout\);

-- Location: LC_X7_Y10_N2
\game1|da|random:6:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a7|s\ = (E91_Q $ (((\game1|da|random:5:twox|Q~regout\ & \game1|da|add1|a5|c3\))))
-- \game1|da|random:6:twox|Q~regout\ = DFFEAS(\game1|da|add1|a7|s\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|random:5:twox|Q~regout\,
	datad => \game1|da|add1|a5|c3\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a7|s\,
	regout => \game1|da|random:6:twox|Q~regout\);

-- Location: LC_X7_Y10_N5
\game1|da|random:7:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a8|s\ = E92_Q $ (((\game1|da|random:5:twox|Q~regout\ & (\game1|da|add1|a5|c3\ & \game1|da|random:6:twox|Q~regout\))))
-- \game1|da|random:7:twox|Q~regout\ = DFFEAS(\game1|da|add1|a8|s\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|random:5:twox|Q~regout\,
	datab => \game1|da|add1|a5|c3\,
	datad => \game1|da|random:6:twox|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a8|s\,
	regout => \game1|da|random:7:twox|Q~regout\);

-- Location: LC_X7_Y10_N9
\game1|da|add1|a8|c3\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a8|c3~combout\ = (\game1|da|random:7:twox|Q~regout\ & (\game1|da|add1|a5|c3\ & (\game1|da|random:5:twox|Q~regout\ & \game1|da|random:6:twox|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|da|random:7:twox|Q~regout\,
	datab => \game1|da|add1|a5|c3\,
	datac => \game1|da|random:5:twox|Q~regout\,
	datad => \game1|da|random:6:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a8|c3~combout\);

-- Location: LC_X7_Y10_N6
\game1|da|random:8:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a9|s\ = (\game1|da|add1|a8|c3~combout\ $ ((E93_Q)))
-- \game1|da|random:8:twox|Q~regout\ = DFFEAS(\game1|da|add1|a9|s\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	datab => \game1|da|add1|a8|c3~combout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a9|s\,
	regout => \game1|da|random:8:twox|Q~regout\);

-- Location: LC_X8_Y8_N0
\game1|outsample|random:8:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(8) = (!\game1|gameisover1|dff|Q~regout\ & (((E104_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a9|s\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(8),
	regout => \game1|outsample|random:8:twox|Q~regout\);

-- Location: LC_X9_Y8_N9
\i~1\ : maxv_lcell
-- Equation(s):
-- \i~1_combout\ = (j(1) & (!j(0) & (\Equal0~9_combout\ & \game1|tottimeout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => j(0),
	datac => \Equal0~9_combout\,
	datad => \game1|tottimeout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i~1_combout\);

-- Location: LC_X9_Y8_N0
\i[0]\ : maxv_lcell
-- Equation(s):
-- i(0) = DFFEAS((\Equal1~0\ & (\game1|tottimeout\(4))) # (!\Equal1~0\ & (((\i~1_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, \game1|tottimeout\(0), , , \Equal0~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|tottimeout\(4),
	datab => \Equal1~0\,
	datac => \game1|tottimeout\(0),
	datad => \i~1_combout\,
	aclr => GND,
	sload => \Equal0~10\,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0));

-- Location: LC_X8_Y8_N1
\game1|outsample|random:6:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(6) = (!\game1|gameisover1|dff|Q~regout\ & (((E102_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a7|s\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(6),
	regout => \game1|outsample|random:6:twox|Q~regout\);

-- Location: LC_X8_Y8_N6
\game1|outsample|random:2:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(2) = (!\game1|gameisover1|dff|Q~regout\ & (((E98_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a3|s~combout\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(2),
	regout => \game1|outsample|random:2:twox|Q~regout\);

-- Location: LC_X7_Y10_N1
\game1|da|random:9:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a10|s\ = E94_Q $ (((\game1|da|random:8:twox|Q~regout\ & (\game1|da|add1|a8|c3~combout\))))
-- \game1|da|random:9:twox|Q~regout\ = DFFEAS(\game1|da|add1|a10|s\, GLOBAL(\game1|addclock~combout\), !\game1|reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|random:8:twox|Q~regout\,
	datab => \game1|da|add1|a8|c3~combout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a10|s\,
	regout => \game1|da|random:9:twox|Q~regout\);

-- Location: LC_X7_Y10_N7
\game1|da|random:10:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|da|add1|a11|s\ = E95_Q $ (((\game1|da|random:8:twox|Q~regout\ & (\game1|da|add1|a8|c3~combout\ & \game1|da|random:9:twox|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \game1|addclock~combout\,
	dataa => \game1|da|random:8:twox|Q~regout\,
	datab => \game1|da|add1|a8|c3~combout\,
	datad => \game1|da|random:9:twox|Q~regout\,
	aclr => \game1|reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|da|add1|a11|s\,
	regout => \game1|da|random:10:twox|Q~regout\);

-- Location: LC_X8_Y8_N2
\game1|outsample|random:10:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(10) = (!\game1|gameisover1|dff|Q~regout\ & (((E106_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a11|s\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(10),
	regout => \game1|outsample|random:10:twox|Q~regout\);

-- Location: LC_X9_Y8_N5
\i~3\ : maxv_lcell
-- Equation(s):
-- \i~3_combout\ = (j(1) & (!j(0) & (\Equal0~9_combout\ & \game1|tottimeout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => j(0),
	datac => \Equal0~9_combout\,
	datad => \game1|tottimeout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i~3_combout\);

-- Location: LC_X9_Y8_N6
\i[2]\ : maxv_lcell
-- Equation(s):
-- i(2) = DFFEAS((\Equal1~0\ & (\game1|tottimeout\(6))) # (!\Equal1~0\ & (((\i~3_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, \game1|tottimeout\(2), , , \Equal0~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \game1|tottimeout\(6),
	datab => \Equal1~0\,
	datac => \game1|tottimeout\(2),
	datad => \i~3_combout\,
	aclr => GND,
	sload => \Equal0~10\,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(2));

-- Location: LC_X8_Y9_N8
\game1|outsample|random:7:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(7) = (((E103_Q & !\game1|gameisover1|dff|Q~regout\)))
-- \game1|outsample|random:7:twox|Q~regout\ = DFFEAS(\game1|tottimeout\(7), GLOBAL(\game1|clkin2~combout\), !\game1|reset~combout\, , , \game1|da|add1|a8|s\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	datac => \game1|da|add1|a8|s\,
	datad => \game1|gameisover1|dff|Q~regout\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(7),
	regout => \game1|outsample|random:7:twox|Q~regout\);

-- Location: LC_X8_Y9_N5
\game1|outsample|random:3:twox|Q\ : maxv_lcell
-- Equation(s):
-- \i[3]~4\ = (\Equal0~10\ & (((E99_Q)))) # (!\Equal0~10\ & (\Equal1~0\ & ((\game1|outsample|random:7:twox|Q~regout\))))
-- \game1|outsample|random:3:twox|Q~regout\ = DFFEAS(\i[3]~4\, GLOBAL(\game1|clkin2~combout\), !\game1|reset~combout\, , , \game1|da|add1|a4|s\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \Equal1~0\,
	datab => \Equal0~10\,
	datac => \game1|da|add1|a4|s\,
	datad => \game1|outsample|random:7:twox|Q~regout\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i[3]~4\,
	regout => \game1|outsample|random:3:twox|Q~regout\);

-- Location: LC_X8_Y9_N6
\i[3]\ : maxv_lcell
-- Equation(s):
-- i(3) = DFFEAS((\i[0]~0_combout\ & (((!\game1|gameisover1|dff|Q~regout\ & \i[3]~4\)))) # (!\i[0]~0_combout\ & (i(3))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => i(3),
	datab => \game1|gameisover1|dff|Q~regout\,
	datac => \i[0]~0_combout\,
	datad => \i[3]~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3));

-- Location: LC_X8_Y8_N9
\game1|outsample|random:5:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(5) = (!\game1|gameisover1|dff|Q~regout\ & (((E101_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a6|s\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(5),
	regout => \game1|outsample|random:5:twox|Q~regout\);

-- Location: LC_X8_Y8_N4
\game1|outsample|random:1:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(1) = (!\game1|gameisover1|dff|Q~regout\ & (((E97_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a2|s~combout\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(1),
	regout => \game1|outsample|random:1:twox|Q~regout\);

-- Location: LC_X8_Y8_N7
\game1|outsample|random:9:twox|Q\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(9) = (!\game1|gameisover1|dff|Q~regout\ & (((E105_Q))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \game1|clkin2~combout\,
	dataa => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|da|add1|a10|s\,
	aclr => \game1|reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(9),
	regout => \game1|outsample|random:9:twox|Q~regout\);

-- Location: LC_X9_Y8_N1
\i~2\ : maxv_lcell
-- Equation(s):
-- \i~2_combout\ = (j(1) & (!j(0) & (\Equal0~9_combout\ & \game1|tottimeout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => j(0),
	datac => \Equal0~9_combout\,
	datad => \game1|tottimeout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i~2_combout\);

-- Location: LC_X9_Y8_N2
\i[1]\ : maxv_lcell
-- Equation(s):
-- i(1) = DFFEAS((\Equal1~0\ & (\game1|tottimeout\(5))) # (!\Equal1~0\ & (((\i~2_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, \game1|tottimeout\(1), , , \Equal0~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \Equal1~0\,
	datab => \game1|tottimeout\(5),
	datac => \game1|tottimeout\(1),
	datad => \i~2_combout\,
	aclr => GND,
	sload => \Equal0~10\,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(1));

-- Location: LC_X10_Y6_N6
\display|data_dis[0]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(0) = DFFEAS(i(0) $ (((i(3) & ((i(2)) # (i(1)))))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~29\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => i(0),
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(0));

-- Location: LC_X11_Y6_N8
\display|lcd[0]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(0) = DFFEAS((\display|Selector7~0_combout\) # ((\display|Selector7~1\) # ((!\display|Selector3~2_combout\ & \display|data_dis\(0)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|Selector3~2_combout\,
	datab => \display|Selector7~0_combout\,
	datac => \display|Selector7~1\,
	datad => \display|data_dis\(0),
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(0));

-- Location: LC_X10_Y6_N2
\display|data_dis[1]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(1) = DFFEAS((i(0) & (((i(1))))) # (!i(0) & ((i(3) & (i(2) & !i(1))) # (!i(3) & ((i(1)))))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~29\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => i(0),
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(1));

-- Location: LC_X9_Y8_N3
\write_column[1]\ : maxv_lcell
-- Equation(s):
-- write_column(1) = DFFEAS((!j(1) & (((\Equal0~9_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => j(1),
	datac => \Equal0~9_combout\,
	aclr => GND,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(1));

-- Location: LC_X11_Y6_N0
\display|cmd_position[1]\ : maxv_lcell
-- Equation(s):
-- \display|Selector6~0\ = (\display|Selector8~0_combout\ & (!\display|lcd[4]~0_combout\ & ((\display|lcd\(1))))) # (!\display|Selector8~0_combout\ & ((B1_cmd_position[1]) # ((!\display|lcd[4]~0_combout\ & \display|lcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|Selector8~0_combout\,
	datab => \display|lcd[4]~0_combout\,
	datac => write_column(1),
	datad => \display|lcd\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector6~0\,
	regout => \display|cmd_position\(1));

-- Location: LC_X11_Y6_N1
\display|lcd[1]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(1) = DFFEAS(((\display|Selector6~0\) # ((!\display|Selector3~2_combout\ & \display|data_dis\(1)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|Selector3~2_combout\,
	datab => \display|data_dis\(1),
	datad => \display|Selector6~0\,
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(1));

-- Location: LC_X10_Y6_N1
\display|data_dis[2]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(2) = DFFEAS((i(2) & ((i(0)) # ((i(1)) # (!i(3))))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~29\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => i(0),
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(2));

-- Location: LC_X11_Y6_N9
\display|Selector5~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector5~0_combout\ = (\display|data_dis\(2) & (((\display|lcd\(2) & !\display|lcd[4]~0_combout\)) # (!\display|Selector3~2_combout\))) # (!\display|data_dis\(2) & (\display|lcd\(2) & (!\display|lcd[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|data_dis\(2),
	datab => \display|lcd\(2),
	datac => \display|lcd[4]~0_combout\,
	datad => \display|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector5~0_combout\);

-- Location: LC_X11_Y5_N1
\display|Selector5~1\ : maxv_lcell
-- Equation(s):
-- \display|Selector5~1_combout\ = (!\display|count_cmd\(0) & (\display|count_cmd\(2) $ (((\display|count_cmd\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1144",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(2),
	datad => \display|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector5~1_combout\);

-- Location: LC_X11_Y6_N2
\display|lcd[2]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(2) = DFFEAS((\display|Selector5~0_combout\) # ((\display|Selector5~1_combout\ & ((\display|state~26_combout\) # (!\display|Selector8~1_combout\)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcdc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|Selector8~1_combout\,
	datab => \display|Selector5~0_combout\,
	datac => \display|Selector5~1_combout\,
	datad => \display|state~26_combout\,
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(2));

-- Location: LC_X12_Y5_N9
\display|Selector4~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector4~0_combout\ = (!\display|count_cmd\(0) & (!\display|count_cmd\(2) & ((!\display|Selector8~1_combout\) # (!\display|state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0007",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state.S0~regout\,
	datab => \display|Selector8~1_combout\,
	datac => \display|count_cmd\(0),
	datad => \display|count_cmd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector4~0_combout\);

-- Location: LC_X10_Y6_N3
\display|data_dis[3]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(3) = DFFEAS(((!i(2) & (i(3) & !i(1)))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~29\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(3));

-- Location: LC_X10_Y6_N0
\display|Selector4~1\ : maxv_lcell
-- Equation(s):
-- \display|Selector4~1_combout\ = (\display|data_dis\(3) & ((\display|state.S7~regout\) # ((\display|state.S8~regout\) # (\display|state.S6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state.S7~regout\,
	datab => \display|state.S8~regout\,
	datac => \display|state.S6~regout\,
	datad => \display|data_dis\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector4~1_combout\);

-- Location: LC_X12_Y5_N3
\display|lcd[3]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(3) = DFFEAS((\display|Selector4~0_combout\) # ((\display|Selector4~1_combout\) # ((\display|lcd\(3) & !\display|lcd[4]~0_combout\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd\(3),
	datab => \display|Selector4~0_combout\,
	datac => \display|Selector4~1_combout\,
	datad => \display|lcd[4]~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(3));

-- Location: LC_X10_Y6_N9
\display|data_dis[4]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(4) = DFFEAS((((!i(2) & !i(1))) # (!i(3))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~29\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(4));

-- Location: LC_X11_Y6_N7
\display|Selector3~3\ : maxv_lcell
-- Equation(s):
-- \display|Selector3~3_combout\ = (\display|Selector3~2_combout\ & (!\display|count_cmd\(2) & ((\display|LessThan0~0_combout\)))) # (!\display|Selector3~2_combout\ & (((\display|data_dis\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7250",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|Selector3~2_combout\,
	datab => \display|count_cmd\(2),
	datac => \display|data_dis\(4),
	datad => \display|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector3~3_combout\);

-- Location: LC_X12_Y6_N8
\display|lcd[4]~1\ : maxv_lcell
-- Equation(s):
-- \display|lcd[4]~1_combout\ = (!\reset1~combout\ & (!\display|state.S9~regout\ & ((\display|state.S0~regout\) # (\display|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state.S0~regout\,
	datab => \reset1~combout\,
	datac => \display|state.S9~regout\,
	datad => \display|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|lcd[4]~1_combout\);

-- Location: LC_X12_Y6_N9
\display|lcd[4]\ : maxv_lcell
-- Equation(s):
-- \display|Selector3~4\ = (!\display|state.S3~regout\ & (\display|Selector3~3_combout\ & (!\display|state.S4~regout\ & !\display|state.S5~regout\)))
-- \display|lcd\(4) = DFFEAS(\display|Selector3~4\, GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|lcd[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S3~regout\,
	datab => \display|Selector3~3_combout\,
	datac => \display|state.S4~regout\,
	datad => \display|state.S5~regout\,
	aclr => GND,
	ena => \display|lcd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector3~4\,
	regout => \display|lcd\(4));

-- Location: LC_X12_Y6_N6
\display|lcd[5]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(5) = DFFEAS((((\display|Selector3~4\))), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , \display|lcd[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	datad => \display|Selector3~4\,
	aclr => GND,
	ena => \display|lcd[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(5));

-- Location: LC_X11_Y6_N6
\display|lcd[6]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(6) = DFFEAS((\display|data_dis\(4) & (!\display|lcd[4]~0_combout\ & (\display|lcd\(6)))) # (!\display|data_dis\(4) & (((!\display|lcd[4]~0_combout\ & \display|lcd\(6))) # (!\display|Selector3~2_combout\))), 
-- GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3075",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|data_dis\(4),
	datab => \display|lcd[4]~0_combout\,
	datac => \display|lcd\(6),
	datad => \display|Selector3~2_combout\,
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(6));

-- Location: LC_X11_Y5_N7
\display|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector0~0_combout\ = (\display|count_cmd\(0) & (\display|count_cmd\(1) & ((\display|state~26_combout\) # (!\display|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(1),
	datac => \display|state~26_combout\,
	datad => \display|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector0~0_combout\);

-- Location: LC_X11_Y6_N3
\display|lcd[7]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(7) = DFFEAS((\display|Selector0~0_combout\) # (((\display|lcd\(7) & !\display|lcd[4]~0_combout\)) # (!\display|Selector8~0_combout\)), GLOBAL(\oonclk|Q1:15:dbtwox|outclk~combout\), VCC, , !\reset1~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \oonclk|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd\(7),
	datab => \display|lcd[4]~0_combout\,
	datac => \display|Selector0~0_combout\,
	datad => \display|Selector8~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(7));

-- Location: LC_X8_Y9_N9
\game1|tottimeout[3]\ : maxv_lcell
-- Equation(s):
-- \game1|tottimeout\(3) = (\game1|outsample|random:3:twox|Q~regout\ & (((!\game1|gameisover1|dff|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game1|outsample|random:3:twox|Q~regout\,
	datad => \game1|gameisover1|dff|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|tottimeout\(3));

-- Location: LC_X10_Y7_N8
\game1|ledoutput\ : maxv_lcell
-- Equation(s):
-- \game1|ledoutput~combout\ = ((!\game1|gameisover1|dff|Q~regout\ & (\game1|ledfsm1|led~combout\ & \game1|ledoutput1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \game1|gameisover1|dff|Q~regout\,
	datac => \game1|ledfsm1|led~combout\,
	datad => \game1|ledoutput1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game1|ledoutput~combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rw~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd_rw);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd_en~regout\,
	oe => VCC,
	padio => ww_lcd_en);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd_rs~regout\,
	oe => VCC,
	padio => ww_lcd_rs);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(0),
	oe => VCC,
	padio => ww_lcd1(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(1),
	oe => VCC,
	padio => ww_lcd1(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(2),
	oe => VCC,
	padio => ww_lcd1(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(3),
	oe => VCC,
	padio => ww_lcd1(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(4),
	oe => VCC,
	padio => ww_lcd1(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(5),
	oe => VCC,
	padio => ww_lcd1(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(6),
	oe => VCC,
	padio => ww_lcd1(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(7),
	oe => VCC,
	padio => ww_lcd1(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b11~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_b11);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b12~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_b12);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(0),
	oe => VCC,
	padio => ww_tottimeout1(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(1),
	oe => VCC,
	padio => ww_tottimeout1(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(2),
	oe => VCC,
	padio => ww_tottimeout1(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(3),
	oe => VCC,
	padio => ww_tottimeout1(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(4),
	oe => VCC,
	padio => ww_tottimeout1(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(5),
	oe => VCC,
	padio => ww_tottimeout1(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(6),
	oe => VCC,
	padio => ww_tottimeout1(6));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(7),
	oe => VCC,
	padio => ww_tottimeout1(7));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(8),
	oe => VCC,
	padio => ww_tottimeout1(8));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(9),
	oe => VCC,
	padio => ww_tottimeout1(9));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tottimeout1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|tottimeout\(10),
	oe => VCC,
	padio => ww_tottimeout1(10));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ledoutput~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|ledoutput~combout\,
	oe => VCC,
	padio => ww_ledoutput);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\go~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \game1|gameisover1|dff|Q~regout\,
	oe => VCC,
	padio => ww_go);
END structure;


