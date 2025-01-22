library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity tb_RegW is
end tb_RegW;
architecture teste of tb_RegW is
component RegW is
generic(
 W: integer:=32
);
port( 
 Load: in std_logic;
 clock: in std_logic;
 E: in std_logic_vector(W-1 downto 0);
 Q: out std_logic_vector(W-1 downto 0)
 );
end component;
signal fio_Cl: std_logic:='0';
signal fio_L: std_logic;
signal fio_E, fio_Q: std_logic_vector(3 downto 0);
begin
-- Note que o componente é instanciado com apenas 4 bits nas entradas para facilitar a simulação:
instancia_RegW: RegW generic map (w=>4) port map(clock=>fio_Cl, E=>fio_E, Q=>fio_Q, Load=>fio_L);
-- Dados de entrada de 4 bits são expressos em "hexadecimal" usando "x":
fio_L<='0', '1' after 75ns;
fio_Cl<=not fio_Cl after 25ns;
fio_E<=x"0",x"f" after 25ns,x"0" after 75ns, x"f" after 150ns;
end teste;