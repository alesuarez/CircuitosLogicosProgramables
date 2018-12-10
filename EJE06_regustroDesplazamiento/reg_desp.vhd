library IEEE;
use IEEE.std_logic_1164.all;

entity reg_desp is 
	port(
		E: in std_logic;
		clk: in std_logic;
		S: out std_logic
	);
end;

architecture reg_desp_arq of reg_desp is 
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				Q <= '0';
			elsif ena = '1' then
				Q <= D;
			end if;
		end if;
	end process; -- flipFlopSincronico
end;