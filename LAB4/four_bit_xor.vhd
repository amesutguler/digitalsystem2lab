----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:48 11/26/2022 
-- Design Name: 
-- Module Name:    four_bit_xor - Behavioral 
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

entity four_bit_xor is
		Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
             in2 : in  STD_LOGIC_VECTOR (3 downto 0);
             XOR_out : out  STD_LOGIC_VECTOR (3 downto 0));


end four_bit_xor;

architecture Behavioral of four_bit_xor is

begin
XOR_out <= (in1(3) xor in2(3)) & (in1(2) xor in2(2)) & (in1(1) xor in2(1)) & (in1(0) xor in2(0));


end Behavioral;

