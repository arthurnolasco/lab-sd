 LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity RegW is
generic(
 W: integer:=32
);
port( 
 Load: in std_logic;
 clock: in std_logic;
 reset: in std_logic;
 E: in std_logic_vector(W-1 downto 0);
 Q: out std_logic_vector(W-1 downto 0)
 );
end RegW;

architecture RTL of RegW is
begin
	process(clock, Load, reset)
	begin
		if(RESET= '0') then
			Q <= std_logic_vector(to_unsigned(0,W));
		elsif (clock='1' and clock'event and Load='1') then
			Q <= E;
		end if;
	end process;
end RTL;
