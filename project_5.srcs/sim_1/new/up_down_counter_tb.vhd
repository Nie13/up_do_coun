----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nie13
-- 
-- Create Date: 10/16/2017 06:30:20 PM
-- Design Name: 
-- Module Name: up_down_counter_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_down_counter_tb is
--  Port ( );
end up_down_counter_tb;

architecture Behavioral of up_down_counter_tb is
signal counter: std_logic_vector (2 downto 0);
signal clk: std_logic;
signal rst: std_logic;
signal up: std_logic;

component up_down_count
port (counter: out std_logic_vector (2 downto 0);
      clk: in std_logic;
      rst: in std_logic;
      up: in std_logic);
end component;

begin

DUT: up_down_count port map ( counter, clk, rst, up);

CLOCK: process
begin
clk <=  '0';
wait for 50ns;
clk <= '1';
wait for 50ns;
end process;

TEST: process
begin
rst <= '0';
up <= '1';
wait for 220ns;
rst <= '1';
wait for 360ns;
rst <= '0';
up <= '0';
wait for 420ns;
rst <= '0';
up <= '1';
wait for 300ns;
rst <= '1';
wait for 300ns;
rst <= '0';
wait;
end process;

end Behavioral;
