LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;



ENTITY counters IS
	port(
	-- INPUTS
	KEY0, KEY1, KEY2, KEY3, CLK_50	:IN 	STD_LOGIC;
	set_time: IN STD_LOGIC;
	ALARM_SETTER: IN STD_LOGIC;
	MSD_setter, LSD_setter: IN STD_LOGIC_VECTOR (3 downto 0);
	
	-- OUTPUTS 
	MSD_sec, LSD_sec, MSD_min, LSD_min, MSD_hour, LSD_hour :OUT STD_LOGIC_VECTOR (0 to 6);
	AMPM: OUT STD_LOGIC;
	ALARM_ACTIVATED: OUT STD_LOGIC;
	debugging: OUT STD_LOGIC
	);
END counters;



ARCHITECTURE a of counters is
	
	function display(digit : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
		variable result : STD_LOGIC_VECTOR(0 to 6);
	begin 
		case digit is
			when "0000" => result := "0000001";
			when "0001" => result := "1001111";
			when "0010" => result := "0010010";
			when "0011" => result := "0000110";
			when "0100" => result := "1001100";
			when "0101" => result := "0100100";
			when "0110" => result := "0100000";
			when "0111" => result := "0001111";
			when "1000" => result := "0000000";
			when "1001" => result := "0000100";
			when others => result := "1111111";
		end case;
		
		
		return result;
	end function;
	
	function check_alarm(LowDigit_min : STD_LOGIC_VECTOR(3 downto 0); 
								HighDigit_min : STD_LOGIC_VECTOR(3 downto 0); LowDigit_hour : STD_LOGIC_VECTOR(3 downto 0); HighDigit_hour : STD_LOGIC_VECTOR(3 downto 0);
								LowDigit_min_alarm : STD_LOGIC_VECTOR(3 downto 0);
								HighDigit_min_alarm : STD_LOGIC_VECTOR(3 downto 0); LowDigit_hour_alarm : STD_LOGIC_VECTOR(3 downto 0); HighDigit_hour_alarm : STD_LOGIC_VECTOR(3 downto 0);
								AMPM_FLAG: STD_LOGIC; AMPM_FLAG_ALARM: STD_LOGIC) return STD_LOGIC is
								
		variable result : STD_LOGIC;
	
	begin 
		
		if (LowDigit_min = LowDigit_min_alarm and HighDigit_min = HighDigit_min_alarm and LowDigit_hour = LowDigit_hour_alarm and HighDigit_hour = HighDigit_hour_alarm and AMPM_FLAG = AMPM_FLAG_alarm) then
			result := '1';
		else
			result := '0';
		end if;
		
		return result;
	end function;
	
	SIGNAL ClkFlag:	STD_LOGIC;
	SIGNAL AMPM_FLAG: STD_LOGIC;
	SIGNAL AMPM_FLAG_alarm: STD_LOGIC;
	SIGNAL set_time_flag: STD_LOGIC;
	SIGNAL Internal_Count:	STD_LOGIC_VECTOR(28 downto 0);
	SIGNAL HighDigit_sec, LowDigit_sec, HighDigit_min, LowDigit_min, LowDigit_hour, HighDigit_hour: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL HighDigit_sec_alarm, LowDigit_sec_alarm, HighDigit_min_alarm, LowDigit_min_alarm, LowDigit_hour_alarm, HighDigit_hour_alarm: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL MSD_7SEG_sec, LSD_7SEG_sec, MSD_7SEG_min, LSD_7SEG_min, MSD_7SEG_hour, LSD_7SEG_hour: STD_LOGIC_VECTOR(0 to 6);
	SIGNAL alarm_reached: STD_LOGIC;
	
	
	
BEGIN

	LSD_sec<=LSD_7SEG_sec;
	MSD_sec<=MSD_7SEG_sec;
	LSD_min<=LSD_7SEG_min;
	MSD_min<=MSD_7SEG_min;
	LSD_hour<=LSD_7SEG_hour;
	MSD_hour<=MSD_7SEG_hour;

	

	PROCESS(CLK_50)
	BEGIN
		if(CLK_50'event and CLK_50='1') then
			if Internal_Count<2500000 then -- set it to 25000000 to count one second as actual one second
				Internal_Count<=Internal_Count+1;
			else
				Internal_Count<=(others => '0'); 
				ClkFlag<=not ClkFlag;
			end if;
		end if;
	END PROCESS;
	
	

	PROCESS(ClkFlag, KEY0)
	variable count: integer := 0;
	
	BEGIN
		
		if (rising_edge(CLK_50) and count < 50) then
			
			count := count + 1;
			
		end if;
			
				
		
		if(count < 20 or Key0 = '0') then -- INITIALIZATION OF ALL THE SIGNALS 

			-- This is the initial time as 01:00:00 AM
			LowDigit_sec<="0000";
			HighDigit_sec<="0000";
			LowDigit_min<="0000";
			HighDigit_min<="0000";
			LowDigit_hour<="0001";
			HighDigit_hour<="0000";
			AMPM <= '0';
			AMPM_FLAG <= '0';
			
			
			
			
			-- This is to set the default alarm time to 6:00:00 AM
			LowDigit_sec_alarm<="0000";
			HighDigit_sec_alarm<="0000";
			LowDigit_min_alarm<="0000";
			HighDigit_min_alarm<="0000";
			LowDigit_hour_alarm<="0110";
			HighDigit_hour_alarm<="0000";
			AMPM_FLAG_alarm <= '0';
			
			ALARM_ACTIVATED <= '0'; -- deactivate the alarm
			debugging <= '0';
			
			
		elsif (ALARM_SETTER = '1' and set_time = '1') then
		
			if (AMPM_FLAG_alarm = '0') then
				AMPM <= '0';
				AMPM_FLAG_alarm <= '0';
			elsif (AMPM_FLAG_alarm = '1') then
				AMPM <= '1';
				AMPM_FLAG_alarm <= '1';
			end if;
			
		
			if (KEY1 = '0') then
				LowDigit_sec_alarm <= LSD_setter;
				HighDigit_sec_alarm <= MSD_setter;
			elsif (KEY2 = '0') then
				LowDigit_min_alarm <= LSD_setter;
				HighDigit_min_alarm <= MSD_setter;
			elsif (KEY3 = '0') then
				LowDigit_hour_alarm <= LSD_setter;
				HighDigit_hour_alarm <= MSD_setter;
			elsif (LSD_setter = "1111") then
				AMPM <= '0';
				AMPM_FLAG_alarm <= '0';
			elsif (MSD_setter = "1111") then
				AMPM <= '1';
				AMPM_FLAG_alarm <= '1';
			end if;
		
		elsif(set_time = '1') then -- for when we want to manually set the current time
		
			if (AMPM_FLAG = '0') then
				AMPM <= '0';
			else
				AMPM <= '1';
			end if;
				

			if (KEY1 = '0') then
				LowDigit_sec <= LSD_setter;
				HighDigit_sec <= MSD_setter;
			elsif (KEY2 = '0') then
				LowDigit_min <= LSD_setter;
				HighDigit_min <= MSD_setter;
			elsif (KEY3 = '0') then
				LowDigit_hour <= LSD_setter;
				HighDigit_hour <= MSD_setter;
			elsif (LSD_setter = "1111") then
				AMPM <= '0';
				AMPM_FLAG <= '0';
			elsif (MSD_setter = "1111") then
				AMPM <= '1';
				AMPM_FLAG <= '1';
			end if;	
			
			
			
		elsif(ClkFlag'event and ClkFlag='1') then
		
			
		
			if (AMPM_FLAG = '0') then
				AMPM <= '0';
			else
				AMPM <= '1';
			end if;
			
			if (LowDigit_sec > 9) then
				debugging <= '1';
			end if;
		
			if (LowDigit_sec >= 9) then
				LowDigit_sec<="0000";
				if (HighDigit_sec >= 5) then
					HighDigit_sec <= "0000";
					if (LowDigit_min >= 9) then
						LowDigit_min <= "0000";
						if (HighDigit_min >= 5) then
							HighDigit_min <= "0000";
							if (LowDigit_hour = 9 and HighDigit_hour = 0) then
								LowDigit_hour <= "0000";
								HighDigit_hour <= HighDigit_hour + '1';
							elsif(LowDigit_hour = 1 and HighDigit_hour = 1) then
								LowDigit_hour <= "0000";
								HighDigit_hour <= "0000";
								if (AMPM_FLAG = '0') then
									AMPM <= '1';
									AMPM_FLAG <= '1';
								else
									AMPM <= '0';
									AMPM_FLAG <= '0';
								end if;
							else 
								LowDigit_hour <= LowDigit_hour + '1';
							end if;
						else 
							HighDigit_min <= HighDigit_min + '1';
						end if;
					else
						LowDigit_min <= LowDigit_min + '1';
					end if;
				else 
					HighDigit_sec<=HighDigit_sec+'1';
				end if;
			else
				LowDigit_sec<=LowDigit_sec+'1';
			end if;
		end if;
		
		if (alarm_setter = '1' and set_time /= '1') then
			alarm_reached <= check_alarm(LowDigit_min, 
								HighDigit_min, LowDigit_hour , HighDigit_hour,
								LowDigit_min_alarm ,
								HighDigit_min_alarm , LowDigit_hour_alarm , HighDigit_hour_alarm ,
								AMPM_FLAG, AMPM_FLAG_ALARM);
			if (alarm_reached = '1') then
				ALARM_ACTIVATED <= '1';
			else
				ALARM_ACTIVATED <= '0';
			end if;
		elsif (alarm_setter /= '1' and set_time /= '1') then	
			ALARM_ACTIVATED <= '0';
			
		end if;
		
		
								
		
		
		
	END PROCESS;

	PROCESS(LowDigit_sec, HighDigit_sec, LowDigit_min, HighDigit_min, LowDigit_hour, HighDigit_hour,LowDigit_sec_alarm, HighDigit_sec_alarm, LowDigit_min_alarm, HighDigit_min_alarm, LowDigit_hour_alarm, HighDigit_hour_alarm, set_time)
	
	

	BEGIN
	

		if (ALARM_SETTER = '1' and set_time = '1') then
			LSD_7SEG_sec <= display(LowDigit_sec_alarm);
			MSD_7SEG_sec <= display(HighDigit_sec_alarm);
			LSD_7SEG_min <= display(LowDigit_min_alarm);
			MSD_7SEG_min <= display(HighDigit_min_alarm);
			LSD_7SEG_hour <= display(LowDigit_hour_alarm);
			MSD_7SEG_hour <= display(HighDigit_hour_alarm);
			
		else
			LSD_7SEG_sec <= display(LowDigit_sec);
			MSD_7SEG_sec <= display(HighDigit_sec);
			LSD_7SEG_min <= display(LowDigit_min);
			MSD_7SEG_min <= display(HighDigit_min);
			LSD_7SEG_hour <= display(LowDigit_hour);
			MSD_7SEG_hour <= display(HighDigit_hour);
		end if;
		
		

		
	END PROCESS;
	
	

end a;



	
