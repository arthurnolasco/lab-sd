begin_group VHDL
begin_group User
begin_template tb_template
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_altere is
end tb_altere;
architecture teste of tb_altere is
component altere is 
port( 

 );
end component;
signal fio_Cl: std_logic :='0'; 
signal fio_Re: std_logic;
begin
instancia_altere: altere port map();
-- Dados de entrada de 4 bits são expressos em "hexadecimal" usando "x":
fio_Cl<= not fio_Cl after 25ns;
fio_Re<='1','0 after 2ns;
end teste;
end_template
end_group 
end_group 
