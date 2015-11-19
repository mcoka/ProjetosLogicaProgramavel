----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2015 20:45:19
-- Design Name: 
-- Module Name: aula3 - bhv
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

ENTITY aula3 IS
    PORT(
        -- Clk e rst
        clk : in std_logic; -- 100Mhz
        btnCpuReset : in std_logic; -- RST em '0'
        -- IOs
        sw : in std_logic_vector(15 downto 0);
        led : out std_logic_vector(15 downto 0)
    );
END aula3;
ARCHITECTURE bhv OF aula3 IS

BEGIN
END bhv;