----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nie13
-- 
-- Create Date: 10/16/2017 06:20:41 PM
-- Design Name: 
-- Module Name: up_down_count - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_down_count is
  Port (counter: out std_logic_vector (2 downto 0) := "000" ;
        clk: in std_logic;
        rst: in std_logic;
        up: in std_logic );
end up_down_count;

architecture Behavioral of up_down_count is
signal i_cnt: std_logic_vector (2 downto 0) := "000";

begin
counter <= i_cnt;
COUNTING: process(clk, rst, up)
begin
    if (rst = '1') then
        i_cnt <= "000";
    elsif(clk'EVENT and clk = '1') then
        if (up = '1') then
           i_cnt  <= i_cnt + '1';
        elsif (up = '0') then
            i_cnt <= i_cnt - '1';
        end if;
    end if;
end process;
end Behavioral;
