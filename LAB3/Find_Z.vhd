----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:53:36 11/09/2022 
-- Design Name: 
-- Module Name:    Find_Z - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Find_Z is
	port(
			a, b, c, d: in std_logic;
			Z: out std_logic
			);
end Find_Z;

architecture Behavioral of Find_Z is
signal sel1: std_logic_vector (3 downto 0);
begin
sel1 <= a&b&c&d;

with sel1 select
	Z <= '1' when "0000",
		  '0' when "0001",
		  '1' when "0010",
		  '1' when "0011",
		  '0' when "0100",
		  '0' when "0101",
		  '0' when "0110",
		  '1' when "0111",
		  '0' when "1000",
		  '0' when "1001",
		  '0' when "1010",
		  '0' when "1011",
		  '1' when "1100",
		  '0' when "1101",
		  '1' when "1110",
		  '0' when "1111",
		  'X' when others;

end Behavioral;

