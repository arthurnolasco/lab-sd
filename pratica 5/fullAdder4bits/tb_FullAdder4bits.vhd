library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_FullAdder4bits is
end tb_FullAdder4bits;
architecture teste of tb_FullAdder4bits is
component FullAdder4bits is 
generic(
	W : integer :=4
);
port (
      x   : in std_logic_vector(w-1 downto 0);
      y   : in std_logic_vector(w-1 downto 0);
      s   : out std_logic_vector(w downto 0)
   );
end component;

signal fio_x, fio_y: std_logic_vector(3 downto 0); 
signal fio_s: std_logic_vector(4 downto 0);
begin
instancia_FullAdder4bits: FullAdder4bits generic map(w=>4) port map(x=>fio_x, y=>fio_y,s=>fio_s);


-- Dados de entrada de 4 bits sÃ£o expressos em "hexadecimal" usando "x":
fio_x<=x"1",x"4" after 50ns,x"f" after 100ns;
fio_y<=x"4",x"8" after 25ns,x"f" after 75ns;
end teste;
