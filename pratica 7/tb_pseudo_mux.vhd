library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_pseudo_mux is
end tb_pseudo_mux;

architecture teste of tb_pseudo_mux is

component pseudo_mux is 
	port (
		CLOCK		:	in		std_logic; -- clock input
		RESET		:	in		std_logic; -- reset input
		S			:	in		std_logic; -- control input
		A,B,C,D	:	in		std_logic; -- data inputs
		Q			:	out	std_logic  -- data output
	);

end component;

signal fio_clk : std_logic :='0';
signal fio_res : std_logic ;
signal fio_s : std_logic ;
signal fio_a,fio_b,fio_c,fio_d : std_logic;
signal fio_q : std_logic :='0';
begin

-- Note que o componente é instanciado com apenas 4 bits nas entradas para facilitar a simulação:
instancia_pseudo_mux: pseudo_mux port map(CLOCK=>fio_clk, RESET=>fio_res,A=>fio_a,B=>fio_b,C=>fio_c,D=>fio_d,S=>fio_s,Q=>fio_q);

-- Dados de entrada de 4 bits são expressos em "hexadecimal" usando "x":
fio_clk  <= not fio_clk after 5ns;
fio_res  <= '1', '0' after 5ns;
fio_s  <= '0', '1' after 20ns, '0' after 30ns,'1' after 50ns, '0' after 60ns,'1' after 80ns, '0' after 90ns;
fio_a <= '0', '1' after 10ns, '0' after 20ns;
fio_b <= '0', '1' after 20ns, '0' after 50ns;
fio_c <= '0', '1' after 50ns, '0' after 80ns;
fio_d <= '0', '1' after 80ns, '0' after 90ns, '1' after 100ns, '0' after 110ns;
end teste;