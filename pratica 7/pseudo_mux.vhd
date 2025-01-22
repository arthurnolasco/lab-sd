-- pseudo_mux - A Finite State Machine that mimics the behavior of mux
-- Copyright (C) 2018  Digital Systems Group - UFMG
-- 
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <https://www.gnu.org/licenses/>.
--

library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux is
	port (
		CLOCK		:	in		std_logic; -- clock input
		RESET		:	in		std_logic; -- reset input
		S			:	in		std_logic; -- control input
		A,B,C,D	:	in		std_logic; -- data inputs
		Q			:	out	std_logic  -- data output
    );
end pseudo_mux;

architecture arch of pseudo_mux is
	type estado is (s0, s1, s2, s3);
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
	process(S, est_atual, A, B, C, D) is
	begin
		case est_atual is
			when s0 =>
				Q<=A;
				if(S='1') then
					est_futuro<=s1;
				else
					est_futuro<=s0;
				end if;
			when s1 =>
				Q<=B;
				if(S='1') then
					est_futuro<=s2;
				else
					est_futuro<=s1;
				end if;
			when s2 =>
				Q<=C;
				if(S='1') then
					est_futuro<=s3;
				else
					est_futuro<=s2;
				end if;
			when s3 =>
				Q<=D;
				if(S='1') then
					est_futuro<=s0;
				else
					est_futuro<=s3;
				end if;
			end case;
		end process;
end arch;