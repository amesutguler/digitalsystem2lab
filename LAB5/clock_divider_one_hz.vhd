----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:54:45 12/14/2022 
-- Design Name: 
-- Module Name:    clock_divider_one_hz - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider_one_hz is
	Port (
			clk : in STD_LOGIC;
			clock_out : out STD_LOGIC
			);
end clock_divider_one_hz;

architecture Behavioral of clock_divider_one_hz is

	signal cnt : unsigned (31 downto 0) := (others => '0');
	signal out_temp : STD_LOGIC;
	
begin
	process(clk,cnt,out_temp)
	begin
		if(clk = '1' and clk'event) then
			if ( cnt = 50000000 ) then
				if( out_temp = '0') then
					out_temp <= '1';
					cnt <= (others => '0');
				else
					out_temp <= '0';
					cnt <= (others => '0');
				end if;
			else
			cnt <= cnt + 1;
			end if;
		end if;	
	end process;

	clock_out <= out_temp;
end Behavioral;

