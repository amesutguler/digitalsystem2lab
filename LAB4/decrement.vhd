----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:46:55 11/26/2022 
-- Design Name: 
-- Module Name:    decrement - Behavioral 
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

entity decrement is

Port ( 
				 in1 : in  STD_LOGIC_VECTOR (3 downto 0);
             out1 : out  STD_LOGIC_VECTOR (3 downto 0));
end decrement;

architecture Behavioral of decrement is
component full_adder
	 Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sout : out  STD_LOGIC);
end component;
signal decrement: std_logic_vector(3 downto 0); 
signal w1,w2,w3 : std_logic;
signal carry : std_logic;
begin
decrement <= "1111";

U1 : full_adder port map(in1(0), decrement(0), '0', w1, out1(0));
U2 : full_adder port map(in1(1), decrement(1), w1, w2, out1(1));
U3 : full_adder port map(in1(2), decrement(2), w2, w3, out1(2));
U4 : full_adder port map(in1(3), decrement(3), w3, carry, out1(3));


end Behavioral;



