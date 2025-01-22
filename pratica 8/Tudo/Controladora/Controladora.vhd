library ieee;
use ieee.std_logic_1164.all;
entity Controladora is
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
end Controladora;
architecture arch of Controladora is
 type estado is (s0, s1, s2, s3, s4);
 signal est_atual, est_futuro : estado;
begin
 process(CLOCK, RESET) is
 begin
  if(RESET= '1') then
   est_atual<=s0;
  elsif(rising_edge(CLOCK)) then
   est_atual<=est_futuro;
  end if;
 end process;
 process(est_atual, MAIOR, IGUAL, MENOR, RESET) is
  begin
   case est_atual is
   when s0 =>
    LOAD_E<='1';
	 RESET_MA<='1';
	 SUBINDO(0)<='1';
	 DESCENDO(0)<='1';
	 ATUALIZE<='1';
	 est_futuro<=s1;
	 
   when s1 =>
    LOAD_E<='0';
	 RESET_MA<='0';
	 ATUALIZE<='0';
	 SUBINDO(0)<='0';
	 DESCENDO(0)<='0';
	 
    if(MENOR='1') then
	   est_futuro<=s3;
	 elsif(IGUAL='1') then
	   est_futuro<=s4;
	 elsif(MAIOR='1') then
	   est_futuro<=s2;
	 else
	   est_futuro<=s1;
	 end if;
	 
   when s2 =>
    LOAD_E<='1';
	 SUBINDO(0)<='1';
	 DESCENDO(0)<='0';
	 ATUALIZE<='1';
	 RESET_MA<='0';
	 est_futuro<=s1;
		
   when s3 =>
    LOAD_E<='1';
	 SUBINDO(0)<='0';
	 DESCENDO(0)<='1';
	 ATUALIZE<='1';
	 RESET_MA<='0';
	 est_futuro<=s1;
	 
	 when s4 =>
	 LOAD_E<='1';
	 SUBINDO(0)<='0';
	 DESCENDO(0)<='0';
	 ATUALIZE<='1';
	 RESET_MA<='0';
	   est_futuro<=s1;
	end case;
 end process;
end arch;