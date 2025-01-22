library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_FlipFlopD is
end tb_FlipFlopD;

architecture teste of tb_FlipFlopD is

component FlipFlopD is 
	port( 
			clock: in std_logic;
			D: in std_logic;
			reset: in std_logic;
			enable: in std_logic;
	      Q: out std_logic
	    );
end component;

signal fio_Cl:std_logic:='0';
signal fio_D, fio_Re, fio_Q, fio_en: std_logic;

begin

-- Note que o componente é instanciado com apenas 4 bits nas entradas para facilitar a simulação:
instancia_FlipFlopD: FlipFlopD port map(clock=>fio_Cl, D=>fio_D, reset=>fio_Re, enable=>fio_en, Q=>fio_Q);

-- Dados de entrada de 4 bits são expressos em "hexadecimal" usando "x":
fio_Cl<=not fio_cl after 5ns;
fio_en<='0', '1' after 10ns;
fio_D<='1','0' after 25ns,'1' after 75ns, '0' after 175ns;
fio_Re<='0','1' after 2ns, '0' after 200ns;
end teste;