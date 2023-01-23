----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:48:31 11/08/2022 
-- Design Name: 
-- Module Name:    Find_X - Behavioral 
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

entity Find_X is
	port(
			a: in std_logic;
			b: in std_logic;
			c: in std_logic;
			d: in std_logic;
			X: out std_logic
			);
end Find_X;

architecture Behavioral of Find_X is

signal p1, p2: std_logic;

begin
p1 <= b and d and (not c) after 12ns;
p2 <= a and b and (not c) after 12ns;
X <= p1 or p2 after 15ns;

end Behavioral;

