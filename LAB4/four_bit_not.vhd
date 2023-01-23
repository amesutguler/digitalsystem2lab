----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:06:04 11/30/2022 
-- Design Name: 
-- Module Name:    four_bit_not - Behavioral 
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

entity four_bit_not is
		Port (  in1 : in STD_LOGIC_VECTOR(3 downto 0);
			NOT_out: out STD_LOGIC_VECTOR(3 downto 0)
	);
end four_bit_not;

architecture Behavioral of four_bit_not is

begin
NOT_out <= NOT in1;

end Behavioral;

