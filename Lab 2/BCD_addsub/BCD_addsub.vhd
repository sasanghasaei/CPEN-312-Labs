library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BCD_addsub is
    port(
        -- INPUTS
		  number_tens     : in   std_logic_vector(3 downto 0); -- 4-bit input binary numbers.
		  number_ones     : in   std_logic_vector(3 downto 0); -- 4-bit input binary numbers.
        carry_in : in   std_logic;
		  enable_a : in   std_logic; -- when this is high, the latch is triggered and we save binary number a
		  enable_b : in   std_logic; -- when this is high, the latch is triggered and we save binary number b
		  subflag  : in   std_logic; -- when high, we know that we should subtract and not add
        
		  -- OUTPUTS
		  seg_a_tens : out std_logic_vector(6 downto 0);
		  seg_a_ones : out std_logic_vector(6 downto 0);
		  seg_b_tens : out std_logic_vector(6 downto 0);
		  seg_b_ones : out std_logic_vector(6 downto 0);
		  seg_sum_tens      : out  std_logic_vector(6 downto 0); 
		  seg_sum_ones      : out  std_logic_vector(6 downto 0);
        carry_out    : out  std_logic
		  
		  
    );
end BCD_addsub;

architecture a of BCD_addsub is
	signal output_sum_ones : std_logic_vector(3 downto 0);
	signal output_sum_tens : std_logic_vector(3 downto 0);
	signal sum_temp_ones : std_logic_vector(4 downto 0); 
	signal sum_temp_tens : std_logic_vector(4 downto 0);
	signal sum_temp_ones_adjust : std_logic_vector(4 downto 0); 
	signal sum_temp_tens_adjust : std_logic_vector(4 downto 0); 
	
	signal latch_temp_a_ones: std_logic_vector(3 downto 0);
	signal latch_temp_a_tens: std_logic_vector(3 downto 0);
	signal latch_temp_b_ones: std_logic_vector(3 downto 0);
	signal latch_temp_b_tens: std_logic_vector(3 downto 0);
	signal latch_temp_b_not: std_logic_vector(4 downto 0);
	
	signal carry_intermediate : std_logic;
	
	
begin

	process(enable_a)
	begin
		if enable_a = '1' then
			latch_temp_a_ones <= number_ones; -- store number a when the latch_a is enabled
			latch_temp_a_tens <= number_tens;
		end if;		
	end process;
	
	process(enable_b)
	begin
		if enable_b = '1' then
			latch_temp_b_ones <= number_ones; -- store number a when the latch_a is enabled
			latch_temp_b_tens <= number_tens;
		end if;
	end process;


	process(latch_temp_a_tens)
	begin
		 case latch_temp_a_tens is
				when "0000" =>
					 seg_a_tens <= "0000001"; -- 0
				when "0001" =>
					 seg_a_tens <= "1001111"; -- 1
				when "0010" =>
					 seg_a_tens <= "0010010"; -- 2
				when "0011" =>
					 seg_a_tens <= "0000110"; -- 3
				when "0100" =>
					 seg_a_tens <= "1001100"; -- 4
				when "0101" =>
					 seg_a_tens <= "0100100"; -- 5
				when "0110" =>
					 seg_a_tens <= "0100000"; -- 6
				when "0111" =>
					 seg_a_tens <= "0001111"; -- 7
				when "1000" =>
					 seg_a_tens <= "0000000"; -- 8
				when "1001" =>
					 seg_a_tens <= "0000100"; -- 9
				when others =>
					 seg_a_tens <= "1111111"; -- Display nothing for undefined inputs
		  end case;
   end process;  
	 
	process(latch_temp_a_ones)
	begin
		 case latch_temp_a_ones is
				when "0000" =>
					 seg_a_ones <= "0000001"; -- 0
				when "0001" =>
					 seg_a_ones <= "1001111"; -- 1
				when "0010" =>
					 seg_a_ones <= "0010010"; -- 2
				when "0011" =>
					 seg_a_ones <= "0000110"; -- 3
				when "0100" =>
					 seg_a_ones <= "1001100"; -- 4
				when "0101" =>
					 seg_a_ones <= "0100100"; -- 5
				when "0110" =>
					 seg_a_ones <= "0100000"; -- 6
				when "0111" =>
					 seg_a_ones <= "0001111"; -- 7
				when "1000" =>
					 seg_a_ones <= "0000000"; -- 8
				when "1001" =>
					 seg_a_ones <= "0000100"; -- 9
				when others =>
					 seg_a_ones <= "1111111"; -- Display nothing for undefined inputs
		  end case;
   end process; 
	 
	process(latch_temp_b_tens)
	begin
		 case latch_temp_b_tens is
				when "0000" =>
					 seg_b_tens <= "0000001"; -- 0
				when "0001" =>
					 seg_b_tens <= "1001111"; -- 1
				when "0010" =>
					 seg_b_tens <= "0010010"; -- 2
				when "0011" =>
					 seg_b_tens <= "0000110"; -- 3
				when "0100" =>
					 seg_b_tens <= "1001100"; -- 4
				when "0101" =>
					 seg_b_tens <= "0100100"; -- 5
				when "0110" =>
					 seg_b_tens <= "0100000"; -- 6
				when "0111" =>
					 seg_b_tens <= "0001111"; -- 7
				when "1000" =>
					 seg_b_tens <= "0000000"; -- 8
				when "1001" =>
					 seg_b_tens <= "0000100"; -- 9
				when others =>
					 seg_b_tens <= "1111111"; -- Display nothing for undefined inputs
		  end case;
   end process; 
	 
	process(latch_temp_b_ones)
	begin
		 case latch_temp_b_ones is
				when "0000" =>
					 seg_b_ones <= "0000001"; -- 0
				when "0001" =>
					 seg_b_ones <= "1001111"; -- 1
				when "0010" =>
					 seg_b_ones <= "0010010"; -- 2
				when "0011" =>
					 seg_b_ones <= "0000110"; -- 3
				when "0100" =>
					 seg_b_ones <= "1001100"; -- 4
				when "0101" =>
					 seg_b_ones <= "0100100"; -- 5
				when "0110" =>
					 seg_b_ones <= "0100000"; -- 6
				when "0111" =>
					 seg_b_ones <= "0001111"; -- 7
				when "1000" =>
					 seg_b_ones <= "0000000"; -- 8
				when "1001" =>
					 seg_b_ones <= "0000100"; -- 9
				when others =>
					 seg_b_ones <= "1111111"; -- Display nothing for undefined inputs
		  end case;
   end process; 
	
	
	
	
	process(latch_temp_a_tens, latch_temp_a_ones, latch_temp_b_tens, latch_temp_b_ones, carry_in, subflag)
	begin
		
		if subflag = '1' then
			carry_intermediate <= '0';
			sum_temp_ones <= ('0' & latch_temp_a_ones) - ('0' & latch_temp_b_ones) - ("0000" & carry_in);
			if (sum_temp_ones > 9) then
				carry_intermediate <= '1';
				sum_temp_ones_adjust <= sum_temp_ones - "00110";
				output_sum_ones <= sum_temp_ones_adjust(3 downto 0);
			else
				carry_intermediate <= '0';
				output_sum_ones <= sum_temp_ones(3 downto 0);
			end if;
			
			sum_temp_tens <= ('0' & latch_temp_a_tens) - ('0' & latch_temp_b_tens) - ("0000" & carry_intermediate);
			if (sum_temp_tens > 9) then
				carry_out <= '1';
				sum_temp_tens_adjust <= sum_temp_tens - "00110";
				output_sum_tens <= sum_temp_tens_adjust(3 downto 0);
			else
				carry_out <= '0';
				output_sum_tens <= sum_temp_tens(3 downto 0);
			end if;
		else
			carry_intermediate <= '0';
			sum_temp_ones <= ('0' & latch_temp_a_ones) + ('0' & latch_temp_b_ones) + ("0000" & carry_in);
			if (sum_temp_ones > 9) then
				carry_intermediate <= '1';
				sum_temp_ones_adjust <= sum_temp_ones + "00110";
				output_sum_ones <= sum_temp_ones_adjust(3 downto 0);
			else
				carry_intermediate <= '0';
				output_sum_ones <= sum_temp_ones(3 downto 0);
			end if;
			
			sum_temp_tens <= ('0' & latch_temp_a_tens) + ('0' & latch_temp_b_tens) + ("0000" & carry_intermediate);
			if (sum_temp_tens > 9) then
				carry_out <= '1';
				sum_temp_tens_adjust <= sum_temp_tens + "00110";
				output_sum_tens <= sum_temp_tens_adjust(3 downto 0);
			else
				carry_out <= '0';
				output_sum_tens <= sum_temp_tens(3 downto 0);
			end if;
		end if;
	end process;
	
	
	process(output_sum_tens)
	begin
		 case output_sum_tens is
				when "0000" =>
					 seg_sum_tens <= "0000001"; -- 0
				when "0001" =>
					 seg_sum_tens <= "1001111"; -- 1
				when "0010" =>
					 seg_sum_tens <= "0010010"; -- 2
				when "0011" =>
					 seg_sum_tens <= "0000110"; -- 3
				when "0100" =>
					 seg_sum_tens <= "1001100"; -- 4
				when "0101" =>
					 seg_sum_tens <= "0100100"; -- 5
				when "0110" =>
					 seg_sum_tens <= "0100000"; -- 6
				when "0111" =>
					 seg_sum_tens <= "0001111"; -- 7
				when "1000" =>
					 seg_sum_tens <= "0000000"; -- 8
				when "1001" =>
					 seg_sum_tens <= "0000100"; -- 9
				when others =>
					 seg_sum_tens <= "1111111"; -- Display nothing for undefined inputs
		  end case;
   end process;
	
	
	process(output_sum_ones)
	begin
		 case output_sum_ones is
				when "0000" =>
					 seg_sum_ones <= "0000001"; -- 0
				when "0001" =>
					 seg_sum_ones <= "1001111"; -- 1
				when "0010" =>
					 seg_sum_ones <= "0010010"; -- 2
				when "0011" =>
					 seg_sum_ones <= "0000110"; -- 3
				when "0100" =>
					 seg_sum_ones <= "1001100"; -- 4
				when "0101" =>
					 seg_sum_ones <= "0100100"; -- 5
				when "0110" =>
					 seg_sum_ones <= "0100000"; -- 6
				when "0111" =>
					 seg_sum_ones <= "0001111"; -- 7
				when "1000" =>
					 seg_sum_ones <= "0000000"; -- 8
				when "1001" =>
					 seg_sum_ones <= "0000100"; -- 9
				when others =>
					 seg_sum_ones <= "1111111"; -- Display nothing for undefined inputs
		  end case;
   end process;

end a;