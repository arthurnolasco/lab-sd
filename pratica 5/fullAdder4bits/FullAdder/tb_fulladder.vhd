library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_fulladder is
end tb_fulladder;

architecture teste of tb_fulladder is

component fulladder is
			generic
			(
				DATA_WIDTH : natural :=4
			);
			port (
				Cin : in std_logic_vector ((DATA_WIDTH-1) downto 0);
				x   : in std_logic_vector ((DATA_WIDTH-1) downto 0);
				y   : in std_logic_vector ((DATA_WIDTH-1) downto 0);
				s   : out std_logic_vector ((DATA_WIDTH-1) downto 0);
				Cout: out std_logic_vector ((DATA_WIDTH-1) downto 0)
        );
end component;

signal fio_Cin: std_logic_vector (3 downto 0);
signal fio_x: std_logic_vector (3 downto 0);
signal fio_y: std_logic_vector (3 downto 0);
signal  fio_s, fio_Cout: std_logic_vector (3 downto 0);

begin

instancia_fulladder: fulladder generic map (DATA_WIDTH => 4) port map(Cin=>fio_Cin, x=>fio_x, y=>fio_y, s=>fio_s,Cout=>fio_Cout);

fio_Cin <= x"0", x"2" after 10ns, x"3" after 40ns, x"7" after 90ns;
fio_x <= x"0", x"5" after 30ns, x"3" after 50ns, x"7" after 80ns;
fio_y <= x"0", x"4" after 20ns, x"5" after 60ns, x"7" after 70ns;

end teste;