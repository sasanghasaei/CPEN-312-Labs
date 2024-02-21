library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity eightbit_addsub is
    port(
        number     : in   std_logic_vector(7 downto 0); -- 8-bit input binary numbers.
        carry_in : in   std_logic;
		  enable_a : in   std_logic; -- when this is high, the latch is triggered and we save binary number a
		  enable_b : in   std_logic; -- when this is high, the latch is triggered and we save binary number b
		  subflag  : in   std_logic; -- when high, we know that we should subtract and not add
        sum      : out  std_logic_vector(7 downto 0); -- 8-bit output binary number
        carry    : out  std_logic
		  
		  
    );
end eightbit_addsub;

architecture a of eightbit_addsub is
	signal sum_temp : std_logic_vector(8 downto 0); -- 9 bit because one is for carry 
	signal latch_temp_a: std_logic_vector(7 downto 0);
	signal latch_temp_b: std_logic_vector(7 downto 0);
	signal latch_temp_b_not: std_logic_vector(7 downto 0);
	
begin

	process(enable_a)
	begin
		if enable_a = '1' then
			latch_temp_a <= number; -- store number a when the latch_a is enabled
		end if;		
	end process;
	
	process(enable_b)
	begin
		if enable_b = '1' then
			latch_temp_b <= number; -- store number b when the latch_b is enabled
		end if;
	end process;


	process(latch_temp_a, latch_temp_b, subflag, sum_temp, carry_in)
	begin
		
		 if subflag = '1' then
			 sum_temp <= ('0' & latch_temp_a) - ('0' & latch_temp_b) - ("00000000" & carry_in);
			 carry <= sum_temp(8);
			 sum <= sum_temp(7 downto 0);
			 
		 else		 
			 sum_temp <= ('0' & latch_temp_a) + ('0' & latch_temp_b) + ("00000000" & carry_in);
			 carry <= sum_temp(8);
			 sum <= sum_temp(7 downto 0);
		 end if;
		 
	end process;   

end a;