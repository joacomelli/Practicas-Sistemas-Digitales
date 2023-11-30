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
begin

end STRUCTURE;
