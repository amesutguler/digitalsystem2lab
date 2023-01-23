----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:13:48 11/09/2022 
-- Design Name: 
-- Module Name:    Find_Y - Behavioral 
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

entity Find_Y is
	port(
			a, b, c, d: in std_logic;
			Y: out std_logic
			);
end Find_Y;

architecture Behavioral of Find_Y is

signal sel0: std_logic_vector (3 downto 0);

begin
sel0 <= a & b & c & d;


Y <= '0' when (sel0 = "0000") else
	  '1' when (sel0 = "0001") else
	  '0' when (sel0 = "0010") else
	  '0' when (sel0 = "0011") else
	  '1' when (sel0 = "0100") else
	  '1' when (sel0 = "0101") else
	  '0' when (sel0 = "0110") else
	  '0' when (sel0 = "0111") else
	  '0' when (sel0 = "1000") else
	  '1' when (sel0 = "1001") else
	  '0' when (sel0 = "1010") else
	  '1' when (sel0 = "1011") else
	  '0' when (sel0 = "1100") else
	  '0' when (sel0 = "1101") else
	  '0' when (sel0 = "1110") else
	  '1';
end Behavioral;

