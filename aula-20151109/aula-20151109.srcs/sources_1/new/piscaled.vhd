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

ENTITY piscaled IS
    PORT(
        -- Clk e rst
        clk : in std_logic; -- 100Mhz
        btnCpuReset : in std_logic; -- RST em '0'
        -- IOs
        sw : in std_logic_vector(15 downto 0);
        led : out std_logic_vector(15 downto 0)
    );
end piscaled;
architecture bhv of piscaled is
    
    signal cnt : integer range 0 to 100_000_000 := 0;
    signal led_i : std_logic := '0';
    
begin
    process(clk, btnCpuReset)
    begin
        if(btnCpuReset = '1') then
            cnt <= 0;
        end if;
        if(rising_edge(clk)) then
            if (cnt = 100_000_000) then
                cnt <= 0;
                led_i <= not led_i;
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
--concorrente    
led(0) <= led_i;
led(1) <= not led_i;
    
end bhv;