library IEEE;
use IEEE.std_logic_1164.all;

entity mux is 
	port(
		m1_i: in std_logic;
		m2_i: in std_logic;
		s_i:  in std_logic;
		o_o:  out std_logic
	);
end;

architecture mux_arq of mux is 
begin
	with s_i select
	o_o <= 	m1_i when '0',
			m2_i when others;
end;