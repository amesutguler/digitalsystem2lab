----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:46:32 11/26/2022 
-- Design Name: 
-- Module Name:    increment - Behavioral 
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

entity increment is
		Port ( 
				 in1 : in  STD_LOGIC_VECTOR (3 downto 0);
             carry : out  STD_LOGIC;
             out1 : out  STD_LOGIC_VECTOR (3 downto 0));


end increment;

architecture Behavioral of increment is

component full_adder
	 Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sout : out  STD_LOGIC);
end component;
signal increment: std_logic_vector(3 downto 0); 
signal w1,w2,w3 : std_logic;
begin
increment <= "0001";
U1 : full_adder port map(in1(0), increment(0), '0', w1, out1(0));
U2 : full_adder port map(in1(1), increment(1), w1, w2, out1(1));
U3 : full_adder port map(in1(2), increment(2), w2, w3, out1(2));
U4 : full_adder port map(in1(3), increment(3), w3, carry, out1(3));






end Behavioral;

