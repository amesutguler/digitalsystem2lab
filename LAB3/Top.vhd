----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:30:09 11/09/2022 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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

entity Top is
	port(
		a, b, c, d, s0, s1: in std_logic;
		f: out std_logic
		);
end Top;


architecture Behavioral of Top is
signal sel: std_logic_vector (1 downto 0);
signal X, Y, Z: std_logic;

COMPONENT Find_X
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;
		d : IN std_logic;          
		x : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT Find_Y
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;
		d : IN std_logic;          
		y : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT Find_Z
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;
		d : IN std_logic;          
		z : OUT std_logic
		);
	END COMPONENT;




begin
sel <= s1&s0;

one : Find_X
port map( a => a,
			 b => b,
			 c => c,
			 d => d,
			 x => X
			 );
two : Find_Y
port map( a => a,
			 b => b,
			 c => c,
			 d => d,
			 y => Y
			 );			 
three : Find_Z
port map( a => a,
			 b => b,
			 c => c,
			 d => d,
			 z => Z
			 );
with sel select
	f <= X when "00",
		  Y when "01",
		  Z when "10",
        '0' when others;		  



end Behavioral;

