library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity tb_Sinalizador is
end tb_Sinalizador;
architecture teste of tb_Sinalizador is
component Sinalizador is 
port (
 E : in std_logic_vector(3 downto 0);
 RESET : in std_logic;
 CLOCK : in std_logic;
 
 Subindo : out std_logic_vector(0 downto 0);
 Descendo : out std_logic_vector(0 downto 0);
 Media_DSP_7Seg : out std_logic_vector(6 downto 0)
);
end component;
signal fio_clk : std_logic :='0';
signal fio_res : std_logic;
signal fio_e : std_logic_vector(3 downto 0);

signal fio_s, fio_d : std_logic_vector(0 downto 0);
signal fio_7seg : std_logic_vector(6 downto 0);

begin
-- Note que o componente é instanciado com apenas 4 bits nas entradas para facilitar a simulação:
instancia_Sinalizador: Sinalizador port map(fio_e, fio_res, fio_clk, fio_s, fio_d, fio_7seg);
-- Dados de entrada de 4 bits são expressos em "hexadecimal" usando "x":
fio_clk<=not fio_clk after 5ns;
fio_res<='1', '0' after 10ns;
fio_e<=x"0", x"8" after 50ns, x"2" after 80ns, x"1" after 100ns;

end teste;
