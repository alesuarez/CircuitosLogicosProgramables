library IEEE;
use IEEE.std_logic_1164.all;

entity flipflop is 
	port(
		D: in std_logic;
		ena: in std_logic;
		rst: in std_logic;
		clk: in std_logic;
		Q: out std_logic
	);
end;

architecture flipflop_arq of flipflop is 
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