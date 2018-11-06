library IEEE;
use IEEE.std_logic_1164.all;

entity sumres4b is 
	port(
		a_i: 	in std_logic_vector(3 downto 0);
		b_i: 	in std_logic_vector(3 downto 0);
		sr_i: 	in std_logic;
		s_o: 	out std_logic_vector(3 downto 0);
		co_o: 	out std_logic
	);
end;

architecture sumres4b_arq of sumres4b is 
	component sum1b is 
		port(
			a_i: 	in std_logic;
			b_i: 	in std_logic;
			ci_i: 	in std_logic;
			s_o: 	out std_logic;
			co_o: 	out std_logic
		);
	end component;

	signal co_aux : std_logic_vector(4 downto 0);
	signal bi_aux : std_logic_vector(3 downto 0);
begin
	sum0: sum1b
		port map(
			a_i => a_i(0),
			b_i => bi_aux(0),
			ci_i => co_aux(0),
			s_o => s_o(0),
			co_o => co_aux(1)
		);

	sum1: sum1b
		port map(
			a_i => a_i(1),
			b_i => bi_aux(1),
			ci_i => co_aux(1),
			s_o => s_o(1),
			co_o => co_aux(2)
		);

	sum2: sum1b
		port map(
			a_i => a_i(2),
			b_i => bi_aux(2),
			ci_i => co_aux(2),
			s_o => s_o(2),
			co_o => co_aux(3)
		);

	sum3: sum1b
		port map(
			a_i => a_i(3),
			b_i => bi_aux(3),
			ci_i => co_aux(3),
			s_o => s_o(3),
			co_o => co_aux(4)
		);

	bi_aux(0) <= b_i(0) xor sr_i;
	bi_aux(1) <= b_i(1) xor sr_i;
	bi_aux(2) <= b_i(2) xor sr_i;
	bi_aux(3) <= b_i(3) xor sr_i;
	co_o <= co_aux(4);
	co_aux(0) <= sr_i;

end;