library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
entity tb_Controladora is
end tb_Controladora;
architecture teste of tb_Controladora is
component Controladora is
port (
 CLOCK : in std_logic; -- clock input
 RESET : in std_logic; -- reset input
 MAIOR : in std_logic; -- control input
 IGUAL : in std_logic; -- data inputs
 MENOR : in std_logic;
 
 LOAD_E : out std_logic; -- data output
 RESET_MA : out std_logic;
 SUBINDO : out std_logic_vector(0 downto 0);
 DESCENDO : out std_logic_vector(0 downto 0);
 ATUALIZE : out std_logic
);
end component;
signal fio_clk : std_logic :='0';
signal fio_res : std_logic ;
signal fio_maior, fio_igual, fio_menor : std_logic ;
signal fio_Le,fio_ResetMa, fio_Atualize : std_logic;
signal fio_Subindo,fio_Descendo : std_logic_vector(0 downto 0);

begin
-- Note que o componente é instanciado com apenas 4 bits nas entradas para facilitar a simulação:
instancia_Controladora: Controladora port map(fio_clk,fio_res,fio_maior, fio_igual, fio_menor,fio_Le,fio_ResetMa,fio_Subindo,fio_Descendo, fio_Atualize);
-- Dados de entrada de 4 bits são expressos em "hexadecimal" usando "x":
fio_clk <= not fio_clk after 5ns;
fio_res <= '1', '0' after 10ns;
fio_maior <='1', '0' after 30ns;
fio_igual <='0', '1' after 50ns, '0' after 80ns;
fio_menor <='0', '1' after 110ns, '0' after 140ns;
end teste;