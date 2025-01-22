LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FullAdder4bits is
generic(
	W : integer :=4
);
port (
      x   : in std_logic_vector(w-1 downto 0);
      y   : in std_logic_vector(w-1 downto 0);
      s   : out std_logic_vector(w downto 0)
   );
end FullAdder4bits;
architecture flow OF FullAdder4bits is
component fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end component;
signal cin : std_logic_vector(w-2 downto 0);
begin
   add1: fulladder port map ('0',x(0),y(0),s(0),cin(0));
	add2: fulladder port map (cin(0),x(1),y(1),s(1),cin(1));
	add3: fulladder port map (cin(1),x(2),y(2),s(2),cin(2));
	add4: fulladder port map (cin(2),x(3),y(3),s(3),s(4));
end flow ;