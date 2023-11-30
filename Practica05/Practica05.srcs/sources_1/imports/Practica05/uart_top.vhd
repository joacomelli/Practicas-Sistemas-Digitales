-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Nov 16 11:52:31 2023
-- Host        : DESKTOP-AKM15S5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode pin_planning -force -port_diff_buffers {E:/Facultad/Sistemas
--               Digitales/Practicas/Practica05/uart_top.vhd}
-- Design      : ios
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- The following library declaration should be present if 
---- instantiating any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;


entity ios is
  Port ( 
    led_pins : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_pin : in STD_LOGIC;
    btn_pin : in STD_LOGIC;
    rst_pin : in STD_LOGIC;
    rxd_pin : in STD_LOGIC;
    txd_pin : out STD_LOGIC
  );

end ios;

architecture STRUCTURE of ios is
component uart_led is
generic(
 BAUD_RATE: integer := 115200;
 CLOCK_RATE: integer := 125E6
 );
 port(
 clk_pin: in std_logic; -- Clock input (from pin)
 rst_pin: in std_logic; -- Active HIGH reset (from pin)
 btn_pin: in std_logic; -- Button to swap high and low bits
 rxd_pin: in std_logic; -- RS232 RXD pin - directly from pin
 led_pins:out std_logic_vector(3 downto 0) -- 8 LED outputs
 );

 end component;
signal loopback: std_logic;
begin
loopback <= not rxd_pin;
txd_pin <= not loopback;
U0: uart_led
 generic map(
 BAUD_RATE => 115200,
 CLOCK_RATE => 125E6
 )
 port map(
 clk_pin => clk_pin, -- Clock input (from pin)
 rst_pin => rst_pin, -- Active HIGH reset (from pin)
 btn_pin => btn_pin, -- Button to swap high and low bits
 rxd_pin => rxd_pin, -- RS232 RXD pin - directly from pin
 led_pins => led_pins -- 8 LED outputs
 ); 

end STRUCTURE;
