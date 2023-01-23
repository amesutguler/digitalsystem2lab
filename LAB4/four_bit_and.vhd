----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:45:57 11/26/2022 
-- Design Name: 
-- Module Name:    four_bit_and - Behavioral 
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

entity four_bit_and is
		Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
             in2 : in  STD_LOGIC_VECTOR (3 downto 0);
             AND_out : out  STD_LOGIC_VECTOR (3 downto 0));
end four_bit_and;

architecture Behavioral of four_bit_and is

begin

AND_out <= (in1(3) and in2(3)) & (in1(2) and in2(2)) & (in1(1) and in2(1)) & (in1(0) and in2(0));

end Behavioral;

