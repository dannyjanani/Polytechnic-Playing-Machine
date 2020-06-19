--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ppmmvsh.vhf
-- /___/   /\     Timestamp : 12/11/2017 10:56:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl S:/CS2204/exp3/ppmmvsh/ppmmvsh.vhf -w S:/CS2204/exp3/ppmmvsh/ppmmvsh.sch
--Design Name: ppmmvsh
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMPM4_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity COMPM4_HXILINX_ppmmvsh is
  
port(
    GT  : out std_logic;
    LT  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMPM4_HXILINX_ppmmvsh;

architecture COMPM4_HXILINX_ppmmvsh_V of COMPM4_HXILINX_ppmmvsh is
  signal a_tmp: std_logic_vector(3 downto 0);
  signal b_tmp: std_logic_vector(3 downto 0);

begin

   a_tmp <= A3&A2&A1&A0;
   b_tmp <= B3&B2&B1&B0;
   
   GT <= '1' when (a_tmp > b_tmp ) else '0';
   LT <= '1' when (a_tmp < b_tmp ) else '0';
     
end COMPM4_HXILINX_ppmmvsh_V;
----- CELL FD8CE_HXILINX_ppmmvsh -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_ppmmvsh is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_ppmmvsh;

architecture Behavioral of FD8CE_HXILINX_ppmmvsh is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL CB4CE_HXILINX_ppmmvsh -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_ppmmvsh is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_ppmmvsh;

architecture Behavioral of CB4CE_HXILINX_ppmmvsh is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL M2_1E_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1E_HXILINX_ppmmvsh is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic
  );
end M2_1E_HXILINX_ppmmvsh;

architecture M2_1E_HXILINX_ppmmvsh_V of M2_1E_HXILINX_ppmmvsh is
begin
  process (D0, D1, E, S0)
  begin
    if( E = '0') then
    O <= '0';
    else
      case S0 is
      when '0' => O <= D0;
      when '1' => O <= D1;
      when others => NULL;
      end case;
    end if;
    end process; 
end M2_1E_HXILINX_ppmmvsh_V;
----- CELL D4_16E_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D4_16E_HXILINX_ppmmvsh is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    D4  : out std_logic;
    D5  : out std_logic;
    D6  : out std_logic;
    D7  : out std_logic;
    D8  : out std_logic;
    D9  : out std_logic;
    D10  : out std_logic;
    D11  : out std_logic;
    D12  : out std_logic;
    D13  : out std_logic;
    D14  : out std_logic;
    D15  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    E   : in std_logic
  );
end D4_16E_HXILINX_ppmmvsh;

architecture D4_16E_HXILINX_ppmmvsh_V of D4_16E_HXILINX_ppmmvsh is
  signal d_tmp : std_logic_vector(15 downto 0);
begin
  process (A0, A1, A2, A3, E)
  variable sel   : std_logic_vector(3 downto 0);
  begin
    sel := A3&A2&A1&A0;
    if( E = '0') then
    d_tmp <= "0000000000000000";
    else
      case sel is
      when "0000" => d_tmp <= "0000000000000001";
      when "0001" => d_tmp <= "0000000000000010";
      when "0010" => d_tmp <= "0000000000000100";
      when "0011" => d_tmp <= "0000000000001000";
      when "0100" => d_tmp <= "0000000000010000";
      when "0101" => d_tmp <= "0000000000100000";
      when "0110" => d_tmp <= "0000000001000000";
      when "0111" => d_tmp <= "0000000010000000";
      when "1000" => d_tmp <= "0000000100000000";
      when "1001" => d_tmp <= "0000001000000000";
      when "1010" => d_tmp <= "0000010000000000";
      when "1011" => d_tmp <= "0000100000000000";
      when "1100" => d_tmp <= "0001000000000000";
      when "1101" => d_tmp <= "0010000000000000";
      when "1110" => d_tmp <= "0100000000000000";
      when "1111" => d_tmp <= "1000000000000000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D15 <= d_tmp(15);
    D14 <= d_tmp(14);
    D13 <= d_tmp(13);
    D12 <= d_tmp(12);
    D11 <= d_tmp(11);
    D10 <= d_tmp(10);
    D9  <= d_tmp(9);
    D8  <= d_tmp(8);
    D7  <= d_tmp(7);
    D6  <= d_tmp(6);
    D5  <= d_tmp(5);
    D4  <= d_tmp(4);
    D3  <= d_tmp(3);
    D2  <= d_tmp(2);
    D1  <= d_tmp(1);
    D0  <= d_tmp(0);

end D4_16E_HXILINX_ppmmvsh_V;
----- CELL ADD4_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD4_HXILINX_ppmmvsh is
  port(
    CO  : out std_logic;
    OFL : out std_logic;
    S0  : out std_logic;
    S1  : out std_logic;
    S2  : out std_logic;
    S3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic;
    CI  : in std_logic
  );
end ADD4_HXILINX_ppmmvsh;

architecture ADD4_HXILINX_ppmmvsh_V of ADD4_HXILINX_ppmmvsh is
begin
 adsu_p : process (A0, A1, A2, A3, B0, B1, B2, B3, CI)
    variable adsu_tmp : std_logic_vector(4 downto 0);
    variable a_tmp    : std_logic_vector(3 downto 0);
    variable b_tmp    : std_logic_vector(3 downto 0);
  begin
    a_tmp := A3 & A2 & A1 & A0;
    b_tmp := B3 & B2 & B1 & B0;
    adsu_tmp := conv_std_logic_vector((conv_integer(a_tmp) + conv_integer(b_tmp) + conv_integer(CI)),5);
      
    S3 <= adsu_tmp(3);
    S2 <= adsu_tmp(2);
    S1 <= adsu_tmp(1);
    S0 <= adsu_tmp(0);
    CO <= adsu_tmp(4);
    OFL <= ( A3 and B3 and (not adsu_tmp(3)) ) or ( (not A3) and (not B3) and adsu_tmp(3) ); 
  end process; 

end ADD4_HXILINX_ppmmvsh_V;
----- CELL ADD8_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD8_HXILINX_ppmmvsh is
port(
    CO  : out std_logic;
    OFL : out std_logic;
    S   : out std_logic_vector(7 downto 0);
    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0);
    CI  : in std_logic
  );
end ADD8_HXILINX_ppmmvsh;

architecture ADD8_HXILINX_ppmmvsh_V of ADD8_HXILINX_ppmmvsh is
  signal adder_tmp: std_logic_vector(8 downto 0);
begin
  adder_tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),9);
  S  <= adder_tmp(7 downto 0);
  CO <= adder_tmp(8);
  OFL <=  ( A(7) and B(7) and (not adder_tmp(7)) ) or ( (not A(7)) and (not B(7)) and adder_tmp(7) );  
end ADD8_HXILINX_ppmmvsh_V;
----- CELL COMP4_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4_HXILINX_ppmmvsh is
  
port(
    EQ  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMP4_HXILINX_ppmmvsh;

architecture COMP4_HXILINX_ppmmvsh_V of COMP4_HXILINX_ppmmvsh is
begin
  EQ <= '1' when (A0=B0 and A1=B1 and A2=B2 and A3=B3) else '0';
end COMP4_HXILINX_ppmmvsh_V;
----- CELL M8_1E_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_ppmmvsh is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_ppmmvsh;

architecture M8_1E_HXILINX_ppmmvsh_V of M8_1E_HXILINX_ppmmvsh is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_ppmmvsh_V;
----- CELL CD4CE_HXILINX_ppmmvsh -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_ppmmvsh is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CD4CE_HXILINX_ppmmvsh;

architecture Behavioral of CD4CE_HXILINX_ppmmvsh is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := "1001";
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 

      if (COUNT = "1001") then
        COUNT <= "0000";
      elsif (COUNT = "1011") then
        COUNT <= "0110";
      elsif (COUNT = "1101") then
        COUNT <= "0100";
      elsif (COUNT = "1111") then
        COUNT <= "0010";
      else
        COUNT <= COUNT+1;
      end if;

    end if;
  end if;
end process;

TC   <= '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3   <= COUNT(3);
Q2   <= COUNT(2);
Q1   <= COUNT(1);
Q0   <= COUNT(0);

end Behavioral;

----- CELL FD4CE_HXILINX_ppmmvsh -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_ppmmvsh is
port (
    Q0  : out STD_LOGIC := '0';
    Q1  : out STD_LOGIC := '0';
    Q2  : out STD_LOGIC := '0';
    Q3  : out STD_LOGIC := '0';

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC
    );
end FD4CE_HXILINX_ppmmvsh;

architecture Behavioral of FD4CE_HXILINX_ppmmvsh is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q3 <= '0';
    Q2 <= '0';
    Q1 <= '0';
    Q0 <= '0';
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
    end if;
  end if;
end process;


end Behavioral;

----- CELL CB16CE_HXILINX_ppmmvsh -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_ppmmvsh is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_ppmmvsh;

architecture Behavioral of CB16CE_HXILINX_ppmmvsh is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;

----- CELL D3_8E_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_ppmmvsh is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    D4  : out std_logic;
    D5  : out std_logic;
    D6  : out std_logic;
    D7  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    E   : in std_logic
  );
end D3_8E_HXILINX_ppmmvsh;

architecture D3_8E_HXILINX_ppmmvsh_V of D3_8E_HXILINX_ppmmvsh is
  signal d_tmp : std_logic_vector(7 downto 0);
begin
  process (A0, A1, A2, E)
  variable sel   : std_logic_vector(2 downto 0);
  begin
    sel := A2&A1&A0;
    if( E = '0') then
    d_tmp <= "00000000";
    else
      case sel is
      when "000" => d_tmp <= "00000001";
      when "001" => d_tmp <= "00000010";
      when "010" => d_tmp <= "00000100";
      when "011" => d_tmp <= "00001000";
      when "100" => d_tmp <= "00010000";
      when "101" => d_tmp <= "00100000";
      when "110" => d_tmp <= "01000000";
      when "111" => d_tmp <= "10000000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D7 <= d_tmp(7);
    D6 <= d_tmp(6);
    D5 <= d_tmp(5);
    D4 <= d_tmp(4);
    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D3_8E_HXILINX_ppmmvsh_V;
----- CELL M4_1E_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_ppmmvsh is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_ppmmvsh;

architecture M4_1E_HXILINX_ppmmvsh_V of M4_1E_HXILINX_ppmmvsh is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_ppmmvsh_V;
----- CELL CB4CLE_HXILINX_ppmmvsh -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CLE_HXILINX_ppmmvsh is
  
port (
    CEO : out STD_LOGIC;
    Q0  : out STD_LOGIC;
    Q1  : out STD_LOGIC;
    Q2  : out STD_LOGIC;
    Q3  : out STD_LOGIC;
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;	
    D1  : in STD_LOGIC;	
    D2  : in STD_LOGIC;	
    D3  : in STD_LOGIC;	
    L   : in STD_LOGIC );
end CB4CLE_HXILINX_ppmmvsh;

architecture Behavioral of CB4CLE_HXILINX_ppmmvsh is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');

begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C ='1') then
    if (L = '1') then
      COUNT <= D3&D2&D1&D0;
    elsif (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <=  '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0'; 
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
 
Q3  <= COUNT(3);
Q2  <= COUNT(2);
Q1  <= COUNT(1);
Q0  <= COUNT(0);

end Behavioral;
----- CELL D2_4E_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_ppmmvsh is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_ppmmvsh;

architecture D2_4E_HXILINX_ppmmvsh_V of D2_4E_HXILINX_ppmmvsh is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_ppmmvsh_V;
----- CELL M2_1_HXILINX_ppmmvsh -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_ppmmvsh is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_ppmmvsh;

architecture M2_1_HXILINX_ppmmvsh_V of M2_1_HXILINX_ppmmvsh is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_ppmmvsh_V;
----- CELL CB2CE_HXILINX_ppmmvsh -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_ppmmvsh is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_ppmmvsh;

architecture Behavioral of CB2CE_HXILINX_ppmmvsh is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_157_MUSER_ppmmvsh is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          G  : in    std_logic; 
          S  : in    std_logic; 
          Y0 : out   std_logic; 
          Y1 : out   std_logic; 
          Y2 : out   std_logic; 
          Y3 : out   std_logic);
end X74_157_MUSER_ppmmvsh;

architecture BEHAVIORAL of X74_157_MUSER_ppmmvsh is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_196 : std_logic;
   component M2_1E_HXILINX_ppmmvsh
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_114 : label is "XLXI_114_0";
   attribute HU_SET of XLXI_115 : label is "XLXI_115_1";
   attribute HU_SET of XLXI_116 : label is "XLXI_116_2";
   attribute HU_SET of XLXI_117 : label is "XLXI_117_3";
begin
   XLXI_114 : M2_1E_HXILINX_ppmmvsh
      port map (D0=>A0,
                D1=>B0,
                E=>XLXN_196,
                S0=>S,
                O=>Y0);
   
   XLXI_115 : M2_1E_HXILINX_ppmmvsh
      port map (D0=>A1,
                D1=>B1,
                E=>XLXN_196,
                S0=>S,
                O=>Y1);
   
   XLXI_116 : M2_1E_HXILINX_ppmmvsh
      port map (D0=>A2,
                D1=>B2,
                E=>XLXN_196,
                S0=>S,
                O=>Y2);
   
   XLXI_117 : M2_1E_HXILINX_ppmmvsh
      port map (D0=>A3,
                D1=>B3,
                E=>XLXN_196,
                S0=>S,
                O=>Y3);
   
   XLXI_118 : INV
      port map (I=>G,
                O=>XLXN_196);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity X74_153_MUSER_ppmmvsh is
   port ( A    : in    std_logic; 
          B    : in    std_logic; 
          G1   : in    std_logic; 
          G2   : in    std_logic; 
          I1C0 : in    std_logic; 
          I1C1 : in    std_logic; 
          I1C2 : in    std_logic; 
          I1C3 : in    std_logic; 
          I2C0 : in    std_logic; 
          I2C1 : in    std_logic; 
          I2C2 : in    std_logic; 
          I2C3 : in    std_logic; 
          Y1   : out   std_logic; 
          Y2   : out   std_logic);
end X74_153_MUSER_ppmmvsh;

architecture BEHAVIORAL of X74_153_MUSER_ppmmvsh is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_22 : std_logic;
   component M2_1_HXILINX_ppmmvsh
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component M2_1E_HXILINX_ppmmvsh
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_4";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_5";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_6";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_7";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_8";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_9";
begin
   XLXI_1 : M2_1_HXILINX_ppmmvsh
      port map (D0=>I1C0,
                D1=>I1C1,
                S0=>A,
                O=>XLXN_1);
   
   XLXI_2 : M2_1_HXILINX_ppmmvsh
      port map (D0=>I1C2,
                D1=>I1C3,
                S0=>A,
                O=>XLXN_2);
   
   XLXI_3 : M2_1_HXILINX_ppmmvsh
      port map (D0=>I2C0,
                D1=>I2C1,
                S0=>A,
                O=>XLXN_13);
   
   XLXI_4 : M2_1_HXILINX_ppmmvsh
      port map (D0=>I2C2,
                D1=>I2C3,
                S0=>A,
                O=>XLXN_14);
   
   XLXI_5 : M2_1E_HXILINX_ppmmvsh
      port map (D0=>XLXN_1,
                D1=>XLXN_2,
                E=>XLXN_22,
                S0=>B,
                O=>Y1);
   
   XLXI_6 : M2_1E_HXILINX_ppmmvsh
      port map (D0=>XLXN_13,
                D1=>XLXN_14,
                E=>XLXN_15,
                S0=>B,
                O=>Y2);
   
   XLXI_7 : INV
      port map (I=>G1,
                O=>XLXN_22);
   
   XLXI_8 : INV
      port map (I=>G2,
                O=>XLXN_15);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ppmmvsh is
   port ( CLOCK_NP2B   : in    std_logic; 
          CodeOrKeypad : in    std_logic; 
          P1PLAY_NP2B  : in    std_logic; 
          P2PLAY_NP2B  : in    std_logic; 
          RESET_NP2B   : in    std_logic; 
          SHPTS_NP2B   : in    std_logic; 
          Testrd       : in    std_logic; 
          AA           : out   std_logic; 
          AB           : out   std_logic; 
          AC           : out   std_logic; 
          AD           : out   std_logic; 
          ADD_NB2P     : out   std_logic; 
          AE           : out   std_logic; 
          AF           : out   std_logic; 
          AG           : out   std_logic; 
          A0_NB2P      : out   std_logic; 
          A1_NB2P      : out   std_logic; 
          A2_NB2P      : out   std_logic; 
          A3_NB2P      : out   std_logic; 
          A4_NB2P      : out   std_logic; 
          A5_NB2P      : out   std_logic; 
          A6_NB2P      : out   std_logic; 
          A7_NB2P      : out   std_logic; 
          CA_NB2P      : out   std_logic; 
          CB_NB2P      : out   std_logic; 
          CC_NB2P      : out   std_logic; 
          CD_NB2P      : out   std_logic; 
          CE_NB2P      : out   std_logic; 
          CF_NB2P      : out   std_logic; 
          CG_NB2P      : out   std_logic; 
          DIGSEL       : out   std_logic; 
          LED8         : out   std_logic; 
          LED9         : out   std_logic; 
          LED10        : out   std_logic; 
          LED11        : out   std_logic; 
          LED12        : out   std_logic; 
          LED13        : out   std_logic; 
          LED14        : out   std_logic; 
          LED15        : out   std_logic; 
          led16_g      : out   std_logic; 
          led16_r      : out   std_logic; 
          led17_g      : out   std_logic; 
          led17_r      : out   std_logic; 
          RD0_NB2P     : out   std_logic; 
          RD1_NB2P     : out   std_logic; 
          RD2_NB2P     : out   std_logic; 
          RD3_NB2P     : out   std_logic; 
          STR0_NB2P    : out   std_logic; 
          STR1_NB2P    : out   std_logic; 
          STR2_NB2P    : out   std_logic; 
          KEYPADINPOUT : inout std_logic_vector (7 downto 0));
end ppmmvsh;

architecture BEHAVIORAL of ppmmvsh is
   attribute IOSTANDARD  : string ;
   attribute CAPACITANCE : string ;
   attribute SLEW        : string ;
   attribute DRIVE       : string ;
   attribute BOX_TYPE    : string ;
   attribute HU_SET      : string ;
   attribute INIT        : string ;
   signal ACDDIGFOUND        : std_logic;
   signal ADD                : std_logic;
   signal ADJPLAYPOS0        : std_logic;
   signal ADJPLAYPOS1        : std_logic;
   signal BPDF               : std_logic;
   signal BPDS               : std_logic;
   signal BRWD0              : std_logic;
   signal BRWD1              : std_logic;
   signal BRWD2              : std_logic;
   signal BRWD3              : std_logic;
   signal CALCPTS            : std_logic;
   signal CANPLAYCODEBOTH    : std_logic;
   signal CANPLAYCODEPOS0    : std_logic;
   signal CANPLAYCODEPOS1    : std_logic;
   signal CENLD              : std_logic;
   signal CLEAR              : std_logic;
   signal CLEARP1FFS         : std_logic;
   signal CLEARP2FFS         : std_logic;
   signal CLFF               : std_logic;
   signal CLKEN              : std_logic;
   signal CLOCK              : std_logic;
   signal CLPXNSDFF          : std_logic;
   signal CLRRDREGS          : std_logic;
   signal CLRSHFTREG         : std_logic;
   signal CLRTOPLAY          : std_logic;
   signal CODEDIG0           : std_logic;
   signal CODEDIG0FOUND      : std_logic;
   signal CODEDIG1           : std_logic;
   signal CODEDIG1FOUND      : std_logic;
   signal CODEDIG2           : std_logic;
   signal CODEDIG3           : std_logic;
   signal CODEDIG4           : std_logic;
   signal CODEDIG5           : std_logic;
   signal CODEDIG6           : std_logic;
   signal CODEDIG7           : std_logic;
   signal CODEPLAYADD        : std_logic;
   signal CODEPLAYPOS0       : std_logic;
   signal CODEPLAYPOS1       : std_logic;
   signal CODEPOS0GTCODEPOS1 : std_logic;
   signal CODERWD            : std_logic_vector (0 to 7);
   signal CRNTADJ            : std_logic;
   signal DCDEN0             : std_logic;
   signal DCDEN1             : std_logic;
   signal DCDEN2             : std_logic;
   signal DCDEN3             : std_logic;
   signal DCDEN4             : std_logic;
   signal DCDEN5             : std_logic;
   signal DCDEN6             : std_logic;
   signal DCDEN7             : std_logic;
   signal DDISP0             : std_logic;
   signal DDISP1             : std_logic;
   signal DDISP2             : std_logic;
   signal DDISP3             : std_logic;
   signal DDISP4             : std_logic;
   signal DDISP5             : std_logic;
   signal DDISP6             : std_logic;
   signal DDISP7             : std_logic;
   signal DDISP8             : std_logic;
   signal DDISP9             : std_logic;
   signal DDISP10            : std_logic;
   signal DDISP11            : std_logic;
   signal DDISP12            : std_logic;
   signal DDISP13            : std_logic;
   signal DDISP14            : std_logic;
   signal DDISP15            : std_logic;
   signal DIG_1              : std_logic;
   signal DIG_2              : std_logic;
   signal DIG_3              : std_logic;
   signal DIG_4              : std_logic;
   signal DISPEN             : std_logic_vector (3 downto 0);
   signal DISPSEL0           : std_logic;
   signal DISPSEL1           : std_logic;
   signal DISP0              : std_logic;
   signal DISP1              : std_logic;
   signal DISP2              : std_logic;
   signal DISP3              : std_logic;
   signal DISP4              : std_logic;
   signal DISP4INP0          : std_logic;
   signal DISP4INP1          : std_logic;
   signal DISP4INP2          : std_logic;
   signal DISP4INP3          : std_logic;
   signal DISP5              : std_logic;
   signal DISP5INP0          : std_logic;
   signal DISP5INP1          : std_logic;
   signal DISP5INP2          : std_logic;
   signal DISP5INP3          : std_logic;
   signal DISP6              : std_logic;
   signal DISP6INP0          : std_logic;
   signal DISP6INP1          : std_logic;
   signal DISP6INP2          : std_logic;
   signal DISP6INP3          : std_logic;
   signal DISP7              : std_logic;
   signal DISP7INP0          : std_logic;
   signal DISP7INP1          : std_logic;
   signal DISP7INP2          : std_logic;
   signal DISP7INP3          : std_logic;
   signal DISP8              : std_logic;
   signal DISP9              : std_logic;
   signal DISP10             : std_logic;
   signal DISP11             : std_logic;
   signal DISP12             : std_logic;
   signal DISP13             : std_logic;
   signal DISP14             : std_logic;
   signal DISP15             : std_logic;
   signal ENCPSEL0           : std_logic;
   signal ENCPSEL1           : std_logic;
   signal EQ0                : std_logic;
   signal EQ1                : std_logic;
   signal EQ2                : std_logic;
   signal EQ3                : std_logic;
   signal GETCODE            : std_logic;
   signal GRD                : std_logic;
   signal INITIALSHIFT       : std_logic;
   signal INT_NET0           : std_logic;
   signal INT_NET1           : std_logic;
   signal INT_NET2           : std_logic;
   signal INT_NET6           : std_logic;
   signal INT_NET8           : std_logic;
   signal INT_NET10          : std_logic;
   signal INT_NET11          : std_logic;
   signal KEYPAD             : std_logic_vector (3 downto 0);
   signal KSBUS              : std_logic_vector (3 downto 0);
   signal LPDPRD             : std_logic;
   signal LPSEL0             : std_logic;
   signal LPSEL1             : std_logic;
   signal LPSEL2             : std_logic;
   signal LPSEL3             : std_logic;
   signal LPTOVF             : std_logic;
   signal LP1NSD             : std_logic;
   signal LP2NSD             : std_logic;
   signal MC0                : std_logic;
   signal MC1                : std_logic;
   signal MC2                : std_logic;
   signal NEXTPLAY           : std_logic;
   signal NPDISP0            : std_logic;
   signal NPDISP1            : std_logic;
   signal NPDISP2            : std_logic;
   signal NPDISP3            : std_logic;
   signal NPDISP4            : std_logic;
   signal NPDISP5            : std_logic;
   signal NPDISP6            : std_logic;
   signal NPDISP7            : std_logic;
   signal NPDISP8            : std_logic;
   signal NPDISP9            : std_logic;
   signal NPDISP10           : std_logic;
   signal NPDISP11           : std_logic;
   signal NPDISP12           : std_logic;
   signal NPDISP13           : std_logic;
   signal NPDISP14           : std_logic;
   signal NPDISP15           : std_logic;
   signal NPSELDISP0         : std_logic;
   signal NPSELDISP1         : std_logic;
   signal NPSELDISP2         : std_logic;
   signal NPSELDISP3         : std_logic;
   signal NPT                : std_logic_vector (7 downto 0);
   signal NSD0               : std_logic;
   signal NSD1               : std_logic;
   signal OPTCODEPLAY0       : std_logic;
   signal OPTCODEPLAY1       : std_logic;
   signal OPTPOSS0           : std_logic;
   signal OPTPOSS1           : std_logic;
   signal PDPRD              : std_logic;
   signal PD0PRD             : std_logic;
   signal PD1PRD             : std_logic;
   signal PD2PRD             : std_logic;
   signal PD3PRD             : std_logic;
   signal PMODDISP0          : std_logic;
   signal PMODDISP1          : std_logic;
   signal PMODDISP2          : std_logic;
   signal PMODDISP3          : std_logic;
   signal PMODDISP4          : std_logic;
   signal PMODDISP5          : std_logic;
   signal PMODDISP6          : std_logic;
   signal PMODDISP7          : std_logic;
   signal POSSPLAY           : std_logic;
   signal PSEL0              : std_logic;
   signal PSEL1              : std_logic;
   signal PSEL2              : std_logic;
   signal PSEL3              : std_logic;
   signal PT                 : std_logic_vector (7 downto 0);
   signal PTOVF              : std_logic;
   signal P1ADD              : std_logic;
   signal P1PLAY             : std_logic;
   signal P1PLAYED           : std_logic;
   signal P1PLAYSYNCH        : std_logic;
   signal P1PT               : std_logic_vector (7 downto 0);
   signal P1SEL0             : std_logic;
   signal P1SEL1             : std_logic;
   signal P1SEL2             : std_logic;
   signal P1SEL3             : std_logic;
   signal P1SKIP             : std_logic;
   signal P1STURN            : std_logic;
   signal P2ADD              : std_logic;
   signal P2CLK              : std_logic;
   signal P2CODE0            : std_logic;
   signal P2CODE1            : std_logic;
   signal P2CODE2            : std_logic;
   signal P2CODE3            : std_logic;
   signal P2CODE4            : std_logic;
   signal P2CODE5            : std_logic;
   signal P2CODE6            : std_logic;
   signal P2CODE7            : std_logic;
   signal P2PLAY             : std_logic;
   signal P2PLAYED           : std_logic;
   signal P2PLAYSYNCH        : std_logic;
   signal P2PT               : std_logic_vector (7 downto 0);
   signal P2SEL0             : std_logic;
   signal P2SEL1             : std_logic;
   signal P2SEL2             : std_logic;
   signal P2SEL3             : std_logic;
   signal P2SKIP             : std_logic;
   signal P2STURN            : std_logic;
   signal Q                  : std_logic_vector (15 downto 0);
   signal QA                 : std_logic_vector (15 downto 0);
   signal RDCLK              : std_logic;
   signal RDC0               : std_logic;
   signal RDC1               : std_logic;
   signal RDC2               : std_logic;
   signal RDC3               : std_logic;
   signal RDP0EQ0            : std_logic;
   signal RDP0EQ1            : std_logic;
   signal RDP0EQ2            : std_logic;
   signal RDP1EQ0            : std_logic;
   signal RDP1EQ1            : std_logic;
   signal RDP1EQ2            : std_logic;
   signal RDP2EQ0            : std_logic;
   signal RDP2EQ1            : std_logic;
   signal RDP2EQ2            : std_logic;
   signal RDP3EQ0            : std_logic;
   signal RDP3EQ1            : std_logic;
   signal RDP3EQ2            : std_logic;
   signal RD0                : std_logic;
   signal RD1                : std_logic;
   signal RD2                : std_logic;
   signal RD3                : std_logic;
   signal RESET              : std_logic;
   signal RWD                : std_logic_vector (7 downto 0);
   signal RWDCOT             : std_logic;
   signal R0D0               : std_logic;
   signal R0D1               : std_logic;
   signal R0D2               : std_logic;
   signal R0D3               : std_logic;
   signal R1D0               : std_logic;
   signal R1D1               : std_logic;
   signal R1D2               : std_logic;
   signal R1D3               : std_logic;
   signal R2D0               : std_logic;
   signal R2D1               : std_logic;
   signal R2D2               : std_logic;
   signal R2D3               : std_logic;
   signal SBUS               : std_logic_vector (6 downto 0);
   signal SELPLYR            : std_logic;
   signal SHNXRDS            : std_logic;
   signal SHPTS              : std_logic;
   signal STDISP0            : std_logic;
   signal STDISP1            : std_logic;
   signal STDISP2            : std_logic;
   signal STDISP3            : std_logic;
   signal STP1PT             : std_logic;
   signal STP2PT             : std_logic;
   signal STR0               : std_logic;
   signal STR1               : std_logic;
   signal STR2               : std_logic;
   signal SYSCLK             : std_logic;
   signal S0                 : std_logic;
   signal S0P1PLAYSYNCH      : std_logic;
   signal S1                 : std_logic;
   signal S1P1PLAYED         : std_logic;
   signal S1P1SKIP           : std_logic;
   signal S1S4S6COND         : std_logic;
   signal S2                 : std_logic;
   signal S2ORS5             : std_logic;
   signal S3                 : std_logic;
   signal S3P1PLAYSYNCHADJ   : std_logic;
   signal S3P2PLAYSYNCH      : std_logic;
   signal S3S6COND           : std_logic;
   signal S4                 : std_logic;
   signal S4P2PLAYED         : std_logic;
   signal S4P2SKIP           : std_logic;
   signal S5                 : std_logic;
   signal S6                 : std_logic;
   signal S6P1PLAYSYNCH      : std_logic;
   signal S6P2PLAYSYNCHADJ   : std_logic;
   signal TOTRWD             : std_logic_vector (7 downto 0);
   signal UNENCNSD0          : std_logic;
   signal UNENCNSD1          : std_logic;
   signal UNENCNSD2          : std_logic;
   signal XLXN_1             : std_logic;
   signal XLXN_4             : std_logic;
   signal XLXN_7             : std_logic;
   signal XLXN_8             : std_logic;
   signal XLXN_74            : std_logic;
   signal XLXN_88            : std_logic;
   signal XLXN_102           : std_logic;
   signal XLXN_181           : std_logic;
   signal XLXN_193           : std_logic;
   signal XLXN_194           : std_logic;
   signal XLXN_195           : std_logic;
   signal XLXN_202           : std_logic;
   signal XLXN_203           : std_logic;
   signal XLXN_210           : std_logic;
   signal XLXN_211           : std_logic;
   signal XLXN_213           : std_logic;
   signal XLXN_1361          : std_logic;
   signal XLXN_1363          : std_logic;
   signal XLXN_1577          : std_logic;
   signal XLXN_1595          : std_logic;
   signal XLXN_1615          : std_logic;
   signal XLXN_1623          : std_logic;
   signal XLXN_1635          : std_logic;
   signal XLXN_1738          : std_logic;
   signal XLXN_1754          : std_logic;
   signal XLXN_1764          : std_logic;
   signal XLXN_1771          : std_logic;
   signal XLXN_1785          : std_logic;
   signal XLXN_1801          : std_logic;
   signal XLXN_1802          : std_logic;
   signal XLXN_1809          : std_logic;
   signal XLXN_1811          : std_logic;
   signal XLXN_1823          : std_logic;
   signal XLXN_2370          : std_logic;
   signal XLXN_2372          : std_logic;
   signal XLXN_10394         : std_logic;
   signal XLXN_10395         : std_logic;
   signal XLXN_10400         : std_logic;
   signal XLXN_10402         : std_logic;
   signal XLXN_10403         : std_logic;
   signal XLXN_10404         : std_logic;
   signal XLXN_10405         : std_logic;
   signal XLXN_10406         : std_logic;
   signal XLXN_10482         : std_logic;
   signal XLXN_10484         : std_logic;
   signal XLXN_10495         : std_logic;
   signal XLXN_10716         : std_logic;
   signal XLXN_10958         : std_logic;
   signal XLXN_10960         : std_logic;
   signal XLXN_10962         : std_logic;
   signal XLXN_10993         : std_logic;
   signal XLXN_11259         : std_logic;
   signal XLXN_11260         : std_logic;
   signal XLXN_11261         : std_logic;
   signal XLXN_11263         : std_logic;
   signal XLXN_11841         : std_logic;
   signal XLXN_11863         : std_logic;
   signal XLXN_11864         : std_logic;
   signal XLXN_11941         : std_logic;
   signal XLXN_11980         : std_logic;
   signal XLXN_11981         : std_logic;
   signal XLXN_11982         : std_logic;
   signal XLXN_12041         : std_logic;
   signal XLXN_12042         : std_logic;
   signal XLXN_12043         : std_logic;
   signal XLXN_12049         : std_logic;
   signal XLXN_12167         : std_logic;
   signal XLXN_12173         : std_logic;
   signal XLXN_12183         : std_logic;
   signal XLXN_12199         : std_logic;
   signal XLXN_12205         : std_logic;
   signal XLXN_12212         : std_logic;
   signal XLXN_12213         : std_logic;
   signal XLXN_12236         : std_logic;
   signal XLXN_12237         : std_logic;
   signal XLXN_12238         : std_logic;
   signal XLXN_12247         : std_logic;
   signal XLXN_12248         : std_logic;
   signal XLXN_12257         : std_logic;
   signal XLXN_12297         : std_logic;
   signal XLXN_12299         : std_logic;
   signal XLXN_12324         : std_logic;
   signal XLXN_12325         : std_logic;
   signal XLXN_12333         : std_logic;
   signal XLXN_12334         : std_logic;
   signal XLXN_12335         : std_logic;
   signal XLXN_12343         : std_logic;
   signal XLXN_12761         : std_logic;
   signal XLXN_12898         : std_logic;
   signal XLXN_12899         : std_logic;
   signal XLXN_12976         : std_logic;
   signal XLXN_12990         : std_logic;
   signal XLXN_13035         : std_logic;
   signal XLXN_13036         : std_logic;
   signal XLXN_13037         : std_logic;
   signal XLXN_13046         : std_logic;
   signal XLXN_13047         : std_logic;
   signal XLXN_13048         : std_logic;
   signal XLXN_13049         : std_logic;
   signal XLXN_13064         : std_logic;
   signal XLXN_13194         : std_logic;
   signal XLXN_13219         : std_logic;
   signal XLXN_13307         : std_logic;
   signal XLXN_13524         : std_logic;
   signal XLXN_13525         : std_logic;
   signal XLXN_13526         : std_logic;
   signal XLXN_13527         : std_logic;
   signal XLXN_13528         : std_logic;
   signal XLXN_13529         : std_logic;
   signal XLXN_13530         : std_logic;
   signal XLXN_13531         : std_logic;
   signal XLXN_13532         : std_logic;
   signal XLXN_13533         : std_logic;
   signal XLXN_13534         : std_logic;
   signal XLXN_13535         : std_logic;
   signal XLXN_13536         : std_logic;
   signal XLXN_13537         : std_logic;
   signal XLXN_13538         : std_logic;
   signal XLXN_13539         : std_logic;
   signal XLXN_13588         : std_logic;
   signal XLXN_13589         : std_logic;
   signal XLXN_13590         : std_logic;
   signal XLXN_13591         : std_logic;
   signal XLXN_13592         : std_logic;
   signal XLXN_13593         : std_logic;
   signal XLXN_13594         : std_logic;
   signal XLXN_13595         : std_logic;
   signal XLXN_13596         : std_logic;
   signal XLXN_13597         : std_logic;
   signal XLXN_13598         : std_logic;
   signal XLXN_13599         : std_logic;
   signal XLXN_13600         : std_logic;
   signal XLXN_13601         : std_logic;
   signal XLXN_13602         : std_logic;
   signal XLXN_13603         : std_logic;
   signal XLXN_13626         : std_logic;
   signal XLXN_13640         : std_logic;
   signal XLXN_13763         : std_logic;
   signal XLXN_13764         : std_logic;
   signal XLXN_13830         : std_logic;
   signal XLXN_13831         : std_logic;
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute CAPACITANCE of OBUF : component is "DONT_CARE";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute CAPACITANCE of IBUF : component is "DONT_CARE";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component CODEGEN
      port ( PSEL0     : in    std_logic; 
             PSEL1     : in    std_logic; 
             CALCPTS   : in    std_logic; 
             CLRRDREGS : in    std_logic; 
             GETCODE   : in    std_logic; 
             SYSCLK    : in    std_logic; 
             CODERWD   : out   std_logic_vector (0 to 7); 
             R2D1      : in    std_logic; 
             R2D2      : in    std_logic; 
             R1D1      : in    std_logic; 
             R1D0      : in    std_logic; 
             RDC1      : in    std_logic; 
             R1D3      : in    std_logic; 
             R2D0      : in    std_logic; 
             RDC3      : in    std_logic; 
             DISP0     : in    std_logic; 
             DISP1     : in    std_logic; 
             DISP2     : in    std_logic; 
             DISP3     : in    std_logic; 
             DISP4     : in    std_logic; 
             DISP5     : in    std_logic; 
             DISP6     : in    std_logic; 
             DISP7     : in    std_logic; 
             BRWD0     : in    std_logic; 
             BRWD1     : in    std_logic; 
             BRWD2     : in    std_logic; 
             BRWD3     : in    std_logic);
   end component;
   
   component SEVENSEGMENTDECODER
      port ( ANUM0  : in    std_logic; 
             BNUM0  : in    std_logic; 
             ANUM1  : in    std_logic; 
             BNUM1  : in    std_logic; 
             ANUM2  : in    std_logic; 
             BNUM2  : in    std_logic; 
             BNUM3  : in    std_logic; 
             ANUM3  : in    std_logic; 
             CLKINP : in    std_logic; 
             AC     : out   std_logic; 
             AE     : out   std_logic; 
             AF     : out   std_logic; 
             AG     : out   std_logic; 
             AA     : out   std_logic; 
             AB     : out   std_logic; 
             AD     : out   std_logic; 
             DIGSEL : out   std_logic);
   end component;
   
   component PmodKEYPAD
      port ( JA        : inout std_logic_vector (7 downto 0); 
             Keypadout : out   std_logic_vector (3 downto 0); 
             Clk       : in    std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component CB2CE_HXILINX_ppmmvsh
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component CB4CLE_HXILINX_ppmmvsh
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component D3_8E_HXILINX_ppmmvsh
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component CB16CE_HXILINX_ppmmvsh
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component FD4CE_HXILINX_ppmmvsh
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component X74_157_MUSER_ppmmvsh
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             G  : in    std_logic; 
             S  : in    std_logic; 
             Y0 : out   std_logic; 
             Y3 : out   std_logic; 
             Y1 : out   std_logic; 
             Y2 : out   std_logic);
   end component;
   
   component X74_153_MUSER_ppmmvsh
      port ( I1C0 : in    std_logic; 
             I1C1 : in    std_logic; 
             I1C2 : in    std_logic; 
             I1C3 : in    std_logic; 
             G1   : in    std_logic; 
             I2C0 : in    std_logic; 
             I2C1 : in    std_logic; 
             I2C2 : in    std_logic; 
             I2C3 : in    std_logic; 
             G2   : in    std_logic; 
             A    : in    std_logic; 
             B    : in    std_logic; 
             Y1   : out   std_logic; 
             Y2   : out   std_logic);
   end component;
   
   component CB4CE_HXILINX_ppmmvsh
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component OR2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2B1 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component ROM16X1
      -- synopsys translate_off
      generic( INIT : bit_vector :=  x"0000");
      -- synopsys translate_on
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute INIT of ROM16X1 : component is "0000";
   attribute BOX_TYPE of ROM16X1 : component is "BLACK_BOX";
   
   component FD8CE_HXILINX_ppmmvsh
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component CD4CE_HXILINX_ppmmvsh
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component ADD4_HXILINX_ppmmvsh
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             B0  : in    std_logic; 
             B1  : in    std_logic; 
             B2  : in    std_logic; 
             B3  : in    std_logic; 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic; 
             S2  : out   std_logic; 
             S3  : out   std_logic);
   end component;
   
   component M4_1E_HXILINX_ppmmvsh
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component COMP4_HXILINX_ppmmvsh
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             EQ : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component M2_1E_HXILINX_ppmmvsh
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component ADD8_HXILINX_ppmmvsh
      port ( A   : in    std_logic_vector (7 downto 0); 
             B   : in    std_logic_vector (7 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (7 downto 0));
   end component;
   
   component M8_1E_HXILINX_ppmmvsh
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component D2_4E_HXILINX_ppmmvsh
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component D4_16E_HXILINX_ppmmvsh
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             E   : in    std_logic; 
             D0  : out   std_logic; 
             D1  : out   std_logic; 
             D10 : out   std_logic; 
             D11 : out   std_logic; 
             D12 : out   std_logic; 
             D13 : out   std_logic; 
             D14 : out   std_logic; 
             D15 : out   std_logic; 
             D2  : out   std_logic; 
             D3  : out   std_logic; 
             D4  : out   std_logic; 
             D5  : out   std_logic; 
             D6  : out   std_logic; 
             D7  : out   std_logic; 
             D8  : out   std_logic; 
             D9  : out   std_logic);
   end component;
   
   component COMPM4_HXILINX_ppmmvsh
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component M2_1_HXILINX_ppmmvsh
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of U6 : label is "U6_39";
   attribute HU_SET of U64 : label is "U64_37";
   attribute HU_SET of U65 : label is "U65_38";
   attribute HU_SET of U66 : label is "U66_21";
   attribute HU_SET of U67 : label is "U67_22";
   attribute HU_SET of U69 : label is "U69_23";
   attribute HU_SET of U86 : label is "U86_40";
   attribute INIT of U104 : label is "2812";
   attribute INIT of U105 : label is "D860";
   attribute INIT of U106 : label is "D004";
   attribute INIT of U107 : label is "8692";
   attribute INIT of U108 : label is "02BA";
   attribute INIT of U109 : label is "208E";
   attribute INIT of U110 : label is "1083";
   attribute HU_SET of U113 : label is "U113_17";
   attribute HU_SET of U114 : label is "U114_18";
   attribute HU_SET of U115 : label is "U115_19";
   attribute HU_SET of U116 : label is "U116_20";
   attribute HU_SET of U117 : label is "U117_14";
   attribute HU_SET of U118 : label is "U118_15";
   attribute HU_SET of U119 : label is "U119_13";
   attribute HU_SET of U120 : label is "U120_12";
   attribute HU_SET of U121 : label is "U121_11";
   attribute HU_SET of U122 : label is "U122_10";
   attribute HU_SET of U148 : label is "U148_27";
   attribute HU_SET of U149 : label is "U149_26";
   attribute HU_SET of U150 : label is "U150_24";
   attribute HU_SET of U151 : label is "U151_25";
   attribute HU_SET of U155 : label is "U155_16";
   attribute HU_SET of U159 : label is "U159_30";
   attribute HU_SET of U160 : label is "U160_31";
   attribute HU_SET of U161 : label is "U161_29";
   attribute HU_SET of U162 : label is "U162_28";
   attribute HU_SET of U169 : label is "U169_33";
   attribute HU_SET of U171 : label is "U171_34";
   attribute HU_SET of U176 : label is "U176_32";
   attribute HU_SET of U181 : label is "U181_36";
   attribute HU_SET of U182 : label is "U182_35";
   attribute HU_SET of U184 : label is "U184_46";
   attribute HU_SET of U295 : label is "U295_41";
   attribute HU_SET of U296 : label is "U296_42";
   attribute HU_SET of U297 : label is "U297_44";
   attribute HU_SET of U298 : label is "U298_43";
   attribute HU_SET of U299 : label is "U299_45";
   attribute HU_SET of XLXI_2228 : label is "XLXI_2228_47";
   attribute HU_SET of XLXI_2229 : label is "XLXI_2229_48";
   attribute HU_SET of XLXI_2249 : label is "XLXI_2249_52";
   attribute HU_SET of XLXI_2250 : label is "XLXI_2250_53";
   attribute HU_SET of XLXI_2252 : label is "XLXI_2252_51";
   attribute HU_SET of XLXI_2255 : label is "XLXI_2255_54";
   attribute HU_SET of XLXI_2262 : label is "XLXI_2262_50";
   attribute HU_SET of XLXI_2326 : label is "XLXI_2326_59";
   attribute HU_SET of XLXI_2336 : label is "XLXI_2336_58";
   attribute HU_SET of XLXI_2339 : label is "XLXI_2339_49";
   attribute HU_SET of XLXI_2430 : label is "XLXI_2430_55";
   attribute HU_SET of XLXI_2447 : label is "XLXI_2447_56";
   attribute HU_SET of XLXI_2448 : label is "XLXI_2448_57";
begin
   ADD_BUF : OBUF
      port map (I=>ADD,
                O=>ADD_NB2P);
   
   CALCPTS_BUF : BUF
      port map (I=>S2ORS5,
                O=>CALCPTS);
   
   CA_BUF : OBUF
      port map (I=>SBUS(6),
                O=>CA_NB2P);
   
   CB_BUF : OBUF
      port map (I=>SBUS(5),
                O=>CB_NB2P);
   
   CC_BUF : OBUF
      port map (I=>SBUS(4),
                O=>CC_NB2P);
   
   CD_BUF : OBUF
      port map (I=>SBUS(3),
                O=>CD_NB2P);
   
   CE_BUF : OBUF
      port map (I=>SBUS(2),
                O=>CE_NB2P);
   
   CF_BUF : OBUF
      port map (I=>SBUS(1),
                O=>CF_NB2P);
   
   CG_BUF : OBUF
      port map (I=>SBUS(0),
                O=>CG_NB2P);
   
   CLEAR_BUF : BUF
      port map (I=>RESET,
                O=>CLEAR);
   
   CLOCK_BUF : IBUF
      port map (I=>CLOCK_NP2B,
                O=>XLXN_2370);
   
   CLOCK_BUFG : BUFG
      port map (I=>XLXN_2370,
                O=>CLOCK);
   
   DISPEN0_BUF : OBUF
      port map (I=>DISPEN(0),
                O=>A0_NB2P);
   
   DISPEN1_BUF : OBUF
      port map (I=>DISPEN(1),
                O=>A1_NB2P);
   
   DISPEN2_BUF : OBUF
      port map (I=>DISPEN(2),
                O=>A2_NB2P);
   
   DISPEN3_BUF : OBUF
      port map (I=>DISPEN(3),
                O=>A3_NB2P);
   
   M1 : CODEGEN
      port map (BRWD0=>BRWD0,
                BRWD1=>BRWD1,
                BRWD2=>BRWD2,
                BRWD3=>BRWD3,
                CALCPTS=>CALCPTS,
                CLRRDREGS=>CLRRDREGS,
                DISP0=>DISP0,
                DISP1=>DISP1,
                DISP2=>DISP2,
                DISP3=>DISP3,
                DISP4=>DISP4,
                DISP5=>DISP5,
                DISP6=>DISP6,
                DISP7=>DISP7,
                GETCODE=>GETCODE,
                PSEL0=>PSEL0,
                PSEL1=>PSEL1,
                RDC1=>RDC1,
                RDC3=>RDC3,
                R1D0=>R1D0,
                R1D1=>R1D1,
                R1D3=>R1D3,
                R2D0=>R2D0,
                R2D1=>R2D1,
                R2D2=>R2D2,
                SYSCLK=>SYSCLK,
                CODERWD(0 to 7)=>CODERWD(0 to 7));
   
   M5 : SEVENSEGMENTDECODER
      port map (ANUM0=>PMODDISP0,
                ANUM1=>PMODDISP1,
                ANUM2=>PMODDISP2,
                ANUM3=>PMODDISP3,
                BNUM0=>PMODDISP4,
                BNUM1=>PMODDISP5,
                BNUM2=>PMODDISP6,
                BNUM3=>PMODDISP7,
                CLKINP=>Q(0),
                AA=>AA,
                AB=>AB,
                AC=>AC,
                AD=>AD,
                AE=>AE,
                AF=>AF,
                AG=>AG,
                DIGSEL=>DIGSEL);
   
   M6 : PmodKEYPAD
      port map (Clk=>CLOCK,
                Keypadout(3 downto 0)=>KEYPAD(3 downto 0),
                JA(7 downto 0)=>KEYPADINPOUT(7 downto 0));
   
   P1PLAY_BUF : IBUF
      port map (I=>P1PLAY_NP2B,
                O=>P1PLAY);
   
   P1STURN_BUF : BUF
      port map (I=>S1,
                O=>P1STURN);
   
   P2ADD_BUF : BUF
      port map (I=>P1ADD,
                O=>P2ADD);
   
   P2CLK_BUFG : BUFG
      port map (I=>Q(4),
                O=>P2CLK);
   
   P2PLAY_BUF : IBUF
      port map (I=>P2PLAY_NP2B,
                O=>P2PLAY);
   
   P2SEL0_BUF : BUF
      port map (I=>P1SEL0,
                O=>P2SEL0);
   
   P2SEL1_BUF : BUF
      port map (I=>P1SEL1,
                O=>P2SEL1);
   
   P2SEL2_BUF : BUF
      port map (I=>P1SEL2,
                O=>P2SEL2);
   
   P2SEL3_BUF : BUF
      port map (I=>P1SEL3,
                O=>P2SEL3);
   
   P2SKIP_BUF : BUF
      port map (I=>P1PLAYSYNCH,
                O=>P2SKIP);
   
   P2STURN_BUF : BUF
      port map (I=>S4,
                O=>P2STURN);
   
   RDCLK_BUFG : BUFG
      port map (I=>Q(2),
                O=>RDCLK);
   
   RDP0EQ2_BUF : BUF
      port map (I=>EQ1,
                O=>RDP0EQ2);
   
   RDP1EQ1_BUF : BUF
      port map (I=>EQ2,
                O=>RDP1EQ1);
   
   RDP1EQ2_B : BUF
      port map (I=>EQ0,
                O=>RDP1EQ2);
   
   RDP2EQ1_B : BUF
      port map (I=>EQ1,
                O=>RDP2EQ1);
   
   RDP2EQ2_BUF : BUF
      port map (I=>EQ3,
                O=>RDP2EQ2);
   
   RDP3EQ2_BUF : BUF
      port map (I=>EQ2,
                O=>RDP3EQ2);
   
   RD0_BUF : OBUF
      port map (I=>RD0,
                O=>RD0_NB2P);
   
   RD1_BUF : OBUF
      port map (I=>RD1,
                O=>RD1_NB2P);
   
   RD2_BUF : OBUF
      port map (I=>RD2,
                O=>RD2_NB2P);
   
   RD3_BUF : OBUF
      port map (I=>RD3,
                O=>RD3_NB2P);
   
   RESET_BUF : IBUF
      port map (I=>RESET_NP2B,
                O=>RESET);
   
   SELPLYR_BUF : BUF
      port map (I=>STR2,
                O=>SELPLYR);
   
   SHPTS_BUF : IBUF
      port map (I=>SHPTS_NP2B,
                O=>SHPTS);
   
   STR0_BUF : OBUF
      port map (I=>STR0,
                O=>STR0_NB2P);
   
   STR1_BUF : OBUF
      port map (I=>STR1,
                O=>STR1_NB2P);
   
   STR2_BUF : OBUF
      port map (I=>STR2,
                O=>STR2_NB2P);
   
   SYSCLK_BUFG : BUFG
      port map (I=>Q(7),
                O=>SYSCLK);
   
   U1 : OR2
      port map (I0=>S1,
                I1=>S6P2PLAYSYNCHADJ,
                O=>CLEARP2FFS);
   
   U2 : AND2B1
      port map (I0=>LPTOVF,
                I1=>XLXN_12199,
                O=>CLFF);
   
   U3 : OR2
      port map (I0=>S0,
                I1=>NEXTPLAY,
                O=>XLXN_12199);
   
   U4 : AND2
      port map (I0=>INITIALSHIFT,
                I1=>S0,
                O=>GETCODE);
   
   U5 : AND3B1
      port map (I0=>INITIALSHIFT,
                I1=>P1PLAYSYNCH,
                I2=>S0,
                O=>CLRSHFTREG);
   
   U6 : CB2CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>CLRSHFTREG,
                CLR=>CLRRDREGS,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                TC=>INITIALSHIFT);
   
   U7 : OR2
      port map (I0=>XLXN_12205,
                I1=>SHNXRDS,
                O=>DISPSEL1);
   
   U8 : OR2
      port map (I0=>SHPTS,
                I1=>XLXN_12205,
                O=>DISPSEL0);
   
   U9 : AND2
      port map (I0=>SHPTS,
                I1=>P1PLAY,
                O=>XLXN_12205);
   
   U10 : OR2
      port map (I0=>XLXN_12213,
                I1=>XLXN_12212,
                O=>SHNXRDS);
   
   U11 : AND2
      port map (I0=>S1,
                I1=>P1PLAY,
                O=>XLXN_12212);
   
   U12 : AND3B1
      port map (I0=>LP1NSD,
                I1=>P1PLAY,
                I2=>S3,
                O=>XLXN_12213);
   
   U13 : AND2
      port map (I0=>PSEL3,
                I1=>CALCPTS,
                O=>STDISP3);
   
   U14 : AND2
      port map (I0=>PSEL2,
                I1=>CALCPTS,
                O=>STDISP2);
   
   U15 : AND2
      port map (I0=>PSEL1,
                I1=>CALCPTS,
                O=>STDISP1);
   
   U16 : AND2
      port map (I0=>PSEL0,
                I1=>CALCPTS,
                O=>STDISP0);
   
   U17 : AND2B1
      port map (I0=>LPTOVF,
                I1=>S2,
                O=>STP1PT);
   
   U18 : AND2B1
      port map (I0=>LPTOVF,
                I1=>S5,
                O=>STP2PT);
   
   U19 : FDC
      port map (C=>P2CLK,
                CLR=>S1,
                D=>CLEAR,
                Q=>XLXN_12333);
   
   U20 : FDC
      port map (C=>P2CLK,
                CLR=>S1,
                D=>XLXN_12333,
                Q=>XLXN_12334);
   
   U21 : FDC
      port map (C=>P2CLK,
                CLR=>S1,
                D=>XLXN_12334,
                Q=>XLXN_12335);
   
   U22 : AND3B1
      port map (I0=>XLXN_12335,
                I1=>XLXN_12334,
                I2=>XLXN_12333,
                O=>CLRRDREGS);
   
   U23 : AND2B1
      port map (I0=>LPTOVF,
                I1=>XLXN_12343,
                O=>ADD);
   
   U24 : OR3
      port map (I0=>XLXN_12247,
                I1=>XLXN_12325,
                I2=>XLXN_12324,
                O=>XLXN_12343);
   
   U25 : AND2
      port map (I0=>P1ADD,
                I1=>S1,
                O=>XLXN_12324);
   
   U26 : AND2
      port map (I0=>P2ADD,
                I1=>S4,
                O=>XLXN_12325);
   
   U27 : AND3B2
      port map (I0=>S4,
                I1=>S1,
                I2=>XLXN_12248,
                O=>XLXN_12247);
   
   U28 : FDCE
      port map (C=>SYSCLK,
                CE=>INT_NET10,
                CLR=>CLRTOPLAY,
                D=>XLXN_12238,
                Q=>XLXN_12248);
   
   U29 : AND2
      port map (I0=>S1P1PLAYED,
                I1=>P1ADD,
                O=>XLXN_12237);
   
   U30 : AND2
      port map (I0=>S4P2PLAYED,
                I1=>P2ADD,
                O=>XLXN_12236);
   
   U31 : OR2
      port map (I0=>XLXN_12236,
                I1=>XLXN_12237,
                O=>INT_NET10);
   
   U32 : AND2B1
      port map (I0=>LPTOVF,
                I1=>INT_NET6,
                O=>GRD);
   
   U33 : OR2
      port map (I0=>CLRSHFTREG,
                I1=>INT_NET8,
                O=>INT_NET6);
   
   U34 : AND2B1
      port map (I0=>S0,
                I1=>NEXTPLAY,
                O=>INT_NET8);
   
   U35 : AND2B1
      port map (I0=>INT_NET2,
                I1=>INT_NET1,
                O=>BPDS);
   
   U36 : AND2
      port map (I0=>INT_NET1,
                I1=>INT_NET2,
                O=>BPDF);
   
   U37 : AND2
      port map (I0=>ADD,
                I1=>LPDPRD,
                O=>INT_NET2);
   
   U38 : AND3B2
      port map (I0=>LPTOVF,
                I1=>SHPTS,
                I2=>XLXN_12257,
                O=>INT_NET1);
   
   U39 : OR2
      port map (I0=>S3,
                I1=>S6,
                O=>XLXN_12257);
   
   U40 : OR4
      port map (I0=>S3S6COND,
                I1=>S1P1SKIP,
                I2=>S6P2PLAYSYNCHADJ,
                I3=>S3P2PLAYSYNCH,
                O=>NEXTPLAY);
   
   U41 : OR3
      port map (I0=>NEXTPLAY,
                I1=>S0,
                I2=>S4P2SKIP,
                O=>CLRTOPLAY);
   
   U42 : NOR2
      port map (I0=>LP2NSD,
                I1=>LP1NSD,
                O=>INT_NET11);
   
   U43 : FDC
      port map (C=>SYSCLK,
                CLR=>INT_NET11,
                D=>CLRTOPLAY,
                Q=>CLPXNSDFF);
   
   U44 : AND3
      port map (I0=>INITIALSHIFT,
                I1=>P1PLAYSYNCH,
                I2=>S0,
                O=>S0P1PLAYSYNCH);
   
   U45 : AND2
      port map (I0=>P1PLAYED,
                I1=>S1,
                O=>S1P1PLAYED);
   
   U46 : AND2
      port map (I0=>P1SKIP,
                I1=>S1,
                O=>S1P1SKIP);
   
   U47 : AND3B1
      port map (I0=>LP1NSD,
                I1=>P2PLAYSYNCH,
                I2=>S3,
                O=>S3P2PLAYSYNCH);
   
   U48 : AND3
      port map (I0=>LP1NSD,
                I1=>P1PLAYSYNCH,
                I2=>S3,
                O=>S3P1PLAYSYNCHADJ);
   
   U49 : OR2
      port map (I0=>NSD1,
                I1=>NSD0,
                O=>CRNTADJ);
   
   U50 : FDCE
      port map (C=>SYSCLK,
                CE=>S2,
                CLR=>CLPXNSDFF,
                D=>CRNTADJ,
                Q=>LP1NSD);
   
   U51 : AND2
      port map (I0=>P2PLAYED,
                I1=>S4,
                O=>S4P2PLAYED);
   
   U52 : AND2
      port map (I0=>P2SKIP,
                I1=>S4,
                O=>S4P2SKIP);
   
   U53 : AND3B1
      port map (I0=>LP2NSD,
                I1=>P1PLAYSYNCH,
                I2=>S6,
                O=>S6P1PLAYSYNCH);
   
   U54 : AND3
      port map (I0=>LP2NSD,
                I1=>P2PLAYSYNCH,
                I2=>S6,
                O=>S6P2PLAYSYNCHADJ);
   
   U55 : FDCE
      port map (C=>SYSCLK,
                CE=>S5,
                CLR=>CLPXNSDFF,
                D=>CRNTADJ,
                Q=>LP2NSD);
   
   U56 : OR4
      port map (I0=>S4P2PLAYED,
                I1=>S3P2PLAYSYNCH,
                I2=>S1P1PLAYED,
                I3=>S0P1PLAYSYNCH,
                O=>XLXN_12299);
   
   U57 : OR2
      port map (I0=>S5,
                I1=>S2,
                O=>S2ORS5);
   
   U58 : OR3
      port map (I0=>CENLD,
                I1=>S2ORS5,
                I2=>XLXN_12299,
                O=>XLXN_12297);
   
   U59 : AND2B1
      port map (I0=>LPTOVF,
                I1=>XLXN_12297,
                O=>CLKEN);
   
   U60 : OR2
      port map (I0=>S3P1PLAYSYNCHADJ,
                I1=>S6P1PLAYSYNCH,
                O=>S3S6COND);
   
   U61 : OR3
      port map (I0=>S6P2PLAYSYNCHADJ,
                I1=>S4P2SKIP,
                I2=>S1P1SKIP,
                O=>S1S4S6COND);
   
   U62 : OR2
      port map (I0=>S1S4S6COND,
                I1=>S3S6COND,
                O=>CENLD);
   
   U63 : AND2B1
      port map (I0=>LPTOVF,
                I1=>CENLD,
                O=>XLXN_12173);
   
   U64 : CB4CLE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>CLKEN,
                CLR=>RESET,
                D0=>S3S6COND,
                D1=>S4P2SKIP,
                D2=>S1S4S6COND,
                D3=>XLXN_12167,
                L=>XLXN_12173,
                CEO=>open,
                Q0=>STR0,
                Q1=>STR1,
                Q2=>STR2,
                Q3=>open,
                TC=>open);
   
   U65 : D3_8E_HXILINX_ppmmvsh
      port map (A0=>STR0,
                A1=>STR1,
                A2=>STR2,
                E=>XLXN_12183,
                D0=>S0,
                D1=>S1,
                D2=>S2,
                D3=>S3,
                D4=>S4,
                D5=>S5,
                D6=>S6,
                D7=>open);
   
   U66 : CB16CE_HXILINX_ppmmvsh
      port map (C=>CLOCK,
                CE=>XLXN_1,
                CLR=>XLXN_4,
                CEO=>open,
                Q(15 downto 0)=>QA(15 downto 0),
                TC=>open);
   
   U67 : CB16CE_HXILINX_ppmmvsh
      port map (C=>QA(15),
                CE=>XLXN_8,
                CLR=>XLXN_7,
                CEO=>open,
                Q(15 downto 0)=>Q(15 downto 0),
                TC=>open);
   
   U68 : FDCE
      port map (C=>SYSCLK,
                CE=>CALCPTS,
                CLR=>CLFF,
                D=>PDPRD,
                Q=>LPDPRD);
   
   U69 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>CALCPTS,
                CLR=>CLFF,
                D0=>PSEL0,
                D1=>PSEL1,
                D2=>PSEL2,
                D3=>PSEL3,
                Q0=>LPSEL0,
                Q1=>LPSEL1,
                Q2=>LPSEL2,
                Q3=>LPSEL3);
   
   U70 : OR2
      port map (I0=>STP2PT,
                I1=>STP1PT,
                O=>XLXN_74);
   
   U71 : FDCE
      port map (C=>SYSCLK,
                CE=>XLXN_74,
                CLR=>CLEAR,
                D=>PTOVF,
                Q=>LPTOVF);
   
   U72 : FDC
      port map (C=>RDCLK,
                CLR=>XLXN_10716,
                D=>P2PLAY,
                Q=>XLXN_10484);
   
   U73 : FDC
      port map (C=>P2CLK,
                CLR=>XLXN_10716,
                D=>XLXN_10484,
                Q=>XLXN_10482);
   
   U74 : FDC
      port map (C=>SYSCLK,
                CLR=>XLXN_10716,
                D=>XLXN_10482,
                Q=>XLXN_10495);
   
   U75 : AND3B1
      port map (I0=>XLXN_10495,
                I1=>XLXN_10482,
                I2=>XLXN_10484,
                O=>P2PLAYSYNCH);
   
   U76 : FDC
      port map (C=>RDCLK,
                CLR=>XLXN_10993,
                D=>P1PLAY,
                Q=>XLXN_10962);
   
   U77 : FDC
      port map (C=>P2CLK,
                CLR=>XLXN_10993,
                D=>XLXN_10962,
                Q=>XLXN_10958);
   
   U78 : FDC
      port map (C=>SYSCLK,
                CLR=>XLXN_10993,
                D=>XLXN_10958,
                Q=>XLXN_10960);
   
   U79 : AND3B1
      port map (I0=>XLXN_10960,
                I1=>XLXN_10958,
                I2=>XLXN_10962,
                O=>P1PLAYSYNCH);
   
   U80 : X74_157_MUSER_ppmmvsh
      port map (A0=>DISP12,
                A1=>DISP13,
                A2=>DISP14,
                A3=>DISP15,
                B0=>P2PT(4),
                B1=>P2PT(5),
                B2=>P2PT(6),
                B3=>P2PT(7),
                G=>XLXN_88,
                S=>DISPSEL0,
                Y0=>DDISP12,
                Y1=>DDISP13,
                Y2=>DDISP14,
                Y3=>DDISP15);
   
   U81 : X74_157_MUSER_ppmmvsh
      port map (A0=>DISP8,
                A1=>DISP9,
                A2=>DISP10,
                A3=>DISP11,
                B0=>P2PT(0),
                B1=>P2PT(1),
                B2=>P2PT(2),
                B3=>P2PT(3),
                G=>XLXN_102,
                S=>DISPSEL0,
                Y0=>DDISP8,
                Y1=>DDISP9,
                Y2=>DDISP10,
                Y3=>DDISP11);
   
   U82 : X74_153_MUSER_ppmmvsh
      port map (A=>DISPSEL0,
                B=>DISPSEL1,
                G1=>XLXN_10402,
                G2=>XLXN_10400,
                I1C0=>DISP6,
                I1C1=>P1PT(6),
                I1C2=>R2D2,
                I1C3=>P2CODE6,
                I2C0=>DISP7,
                I2C1=>P1PT(7),
                I2C2=>R2D3,
                I2C3=>P2CODE7,
                Y1=>DDISP6,
                Y2=>DDISP7);
   
   U83 : X74_153_MUSER_ppmmvsh
      port map (A=>DISPSEL0,
                B=>DISPSEL1,
                G1=>XLXN_10404,
                G2=>XLXN_10403,
                I1C0=>DISP4,
                I1C1=>P1PT(4),
                I1C2=>R2D0,
                I1C3=>P2CODE4,
                I2C0=>DISP5,
                I2C1=>P1PT(5),
                I2C2=>R2D1,
                I2C3=>P2CODE5,
                Y1=>DDISP4,
                Y2=>DDISP5);
   
   U84 : X74_153_MUSER_ppmmvsh
      port map (A=>DISPSEL0,
                B=>DISPSEL1,
                G1=>XLXN_10395,
                G2=>XLXN_10394,
                I1C0=>DISP2,
                I1C1=>P1PT(2),
                I1C2=>R1D2,
                I1C3=>P2CODE2,
                I2C0=>DISP3,
                I2C1=>P1PT(3),
                I2C2=>R1D3,
                I2C3=>P2CODE3,
                Y1=>DDISP2,
                Y2=>DDISP3);
   
   U85 : X74_153_MUSER_ppmmvsh
      port map (A=>DISPSEL0,
                B=>DISPSEL1,
                G1=>XLXN_10406,
                G2=>XLXN_10405,
                I1C0=>DISP0,
                I1C1=>P1PT(0),
                I1C2=>R1D0,
                I1C3=>P2CODE0,
                I2C0=>DISP1,
                I2C1=>P1PT(1),
                I2C2=>R1D1,
                I2C3=>P2CODE1,
                Y1=>DDISP0,
                Y2=>DDISP1);
   
   U86 : CB4CE_HXILINX_ppmmvsh
      port map (C=>Q(0),
                CE=>XLXN_211,
                CLR=>XLXN_213,
                CEO=>open,
                Q0=>MC0,
                Q1=>MC1,
                Q2=>MC2,
                Q3=>open,
                TC=>open);
   
   U87 : OR2B1
      port map (I0=>BPDF,
                I1=>Q(6),
                O=>XLXN_202);
   
   U88 : OR2B1
      port map (I0=>BPDS,
                I1=>Q(8),
                O=>XLXN_203);
   
   U89 : AND2
      port map (I0=>XLXN_203,
                I1=>XLXN_202,
                O=>INT_NET0);
   
   U92 : OR2B1
      port map (I0=>LPSEL0,
                I1=>INT_NET0,
                O=>XLXN_181);
   
   U93 : NAND2
      port map (I0=>DCDEN0,
                I1=>XLXN_181,
                O=>DISPEN(0));
   
   U94 : OR2B1
      port map (I0=>LPSEL1,
                I1=>INT_NET0,
                O=>XLXN_195);
   
   U95 : NAND2
      port map (I0=>DCDEN1,
                I1=>XLXN_195,
                O=>DISPEN(1));
   
   U96 : OR2B1
      port map (I0=>LPSEL2,
                I1=>INT_NET0,
                O=>XLXN_194);
   
   U97 : NAND2
      port map (I0=>DCDEN2,
                I1=>XLXN_194,
                O=>DISPEN(2));
   
   U98 : OR2B1
      port map (I0=>LPSEL3,
                I1=>INT_NET0,
                O=>XLXN_193);
   
   U99 : NAND2
      port map (I0=>DCDEN3,
                I1=>XLXN_193,
                O=>DISPEN(3));
   
   U104 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"2812")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(6));
   
   U105 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"D860")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(5));
   
   U106 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"D004")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(4));
   
   U107 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"8692")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(3));
   
   U108 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"02BA")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(2));
   
   U109 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"208E")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(1));
   
   U110 : ROM16X1
   -- synopsys translate_off
   generic map( INIT => x"1083")
   -- synopsys translate_on
      port map (A0=>KSBUS(0),
                A1=>KSBUS(1),
                A2=>KSBUS(2),
                A3=>KSBUS(3),
                O=>SBUS(0));
   
   U113 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>STDISP3,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP12,
                Q1=>DISP13,
                Q2=>DISP14,
                Q3=>DISP15);
   
   U114 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>STDISP2,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP8,
                Q1=>DISP9,
                Q2=>DISP10,
                Q3=>DISP11);
   
   U115 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>STDISP1,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP4,
                Q1=>DISP5,
                Q2=>DISP6,
                Q3=>DISP7);
   
   U116 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>STDISP0,
                CLR=>CLEAR,
                D0=>BRWD0,
                D1=>BRWD1,
                D2=>BRWD2,
                D3=>BRWD3,
                Q0=>DISP0,
                Q1=>DISP1,
                Q2=>DISP2,
                Q3=>DISP3);
   
   U117 : FD8CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>STP1PT,
                CLR=>CLEAR,
                D(7 downto 0)=>NPT(7 downto 0),
                Q(7 downto 0)=>P1PT(7 downto 0));
   
   U118 : FD8CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>STP2PT,
                CLR=>CLEAR,
                D(7 downto 0)=>NPT(7 downto 0),
                Q(7 downto 0)=>P2PT(7 downto 0));
   
   U119 : CD4CE_HXILINX_ppmmvsh
      port map (C=>RDCLK,
                CE=>XLXN_1361,
                CLR=>XLXN_1363,
                CEO=>open,
                Q0=>RDC0,
                Q1=>RDC1,
                Q2=>RDC2,
                Q3=>RDC3,
                TC=>open);
   
   U120 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>GRD,
                CLR=>CLRRDREGS,
                D0=>RDC0,
                D1=>RDC1,
                D2=>RDC2,
                D3=>RDC3,
                Q0=>R2D0,
                Q1=>R2D1,
                Q2=>R2D2,
                Q3=>R2D3);
   
   U121 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>GRD,
                CLR=>CLRRDREGS,
                D0=>R2D0,
                D1=>R2D1,
                D2=>R2D2,
                D3=>R2D3,
                Q0=>R1D0,
                Q1=>R1D1,
                Q2=>R1D2,
                Q3=>R1D3);
   
   U122 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>GRD,
                CLR=>CLRRDREGS,
                D0=>R1D0,
                D1=>R1D1,
                D2=>R1D2,
                D3=>R1D3,
                Q0=>R0D0,
                Q1=>R0D1,
                Q2=>R0D2,
                Q3=>R0D3);
   
   U148 : ADD4_HXILINX_ppmmvsh
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                CI=>XLXN_11259,
                CO=>PD1PRD,
                OFL=>open,
                S0=>NPDISP4,
                S1=>NPDISP5,
                S2=>NPDISP6,
                S3=>NPDISP7);
   
   U149 : ADD4_HXILINX_ppmmvsh
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP0,
                B1=>DISP1,
                B2=>DISP2,
                B3=>DISP3,
                CI=>XLXN_11260,
                CO=>PD0PRD,
                OFL=>open,
                S0=>NPDISP0,
                S1=>NPDISP1,
                S2=>NPDISP2,
                S3=>NPDISP3);
   
   U150 : ADD4_HXILINX_ppmmvsh
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP12,
                B1=>DISP13,
                B2=>DISP14,
                B3=>DISP15,
                CI=>XLXN_11261,
                CO=>PD3PRD,
                OFL=>open,
                S0=>NPDISP12,
                S1=>NPDISP13,
                S2=>NPDISP14,
                S3=>NPDISP15);
   
   U151 : ADD4_HXILINX_ppmmvsh
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>DISP8,
                B1=>DISP9,
                B2=>DISP10,
                B3=>DISP11,
                CI=>XLXN_11263,
                CO=>PD2PRD,
                OFL=>open,
                S0=>NPDISP8,
                S1=>NPDISP9,
                S2=>NPDISP10,
                S3=>NPDISP11);
   
   U152 : X74_157_MUSER_ppmmvsh
      port map (A0=>P1SEL0,
                A1=>P1SEL1,
                A2=>P1SEL2,
                A3=>P1SEL3,
                B0=>P2SEL0,
                B1=>P2SEL1,
                B2=>P2SEL2,
                B3=>P2SEL3,
                G=>XLXN_1595,
                S=>SELPLYR,
                Y0=>PSEL0,
                Y1=>PSEL1,
                Y2=>PSEL2,
                Y3=>PSEL3);
   
   U153 : OR2
      port map (I0=>PSEL3,
                I1=>PSEL1,
                O=>ENCPSEL0);
   
   U154 : OR2
      port map (I0=>PSEL2,
                I1=>PSEL3,
                O=>ENCPSEL1);
   
   U155 : M4_1E_HXILINX_ppmmvsh
      port map (D0=>PD0PRD,
                D1=>PD1PRD,
                D2=>PD2PRD,
                D3=>PD3PRD,
                E=>XLXN_1577,
                S0=>ENCPSEL0,
                S1=>ENCPSEL1,
                O=>PDPRD);
   
   U156 : X74_153_MUSER_ppmmvsh
      port map (A=>ENCPSEL0,
                B=>ENCPSEL1,
                G1=>XLXN_1615,
                G2=>XLXN_1615,
                I1C0=>NPDISP2,
                I1C1=>NPDISP6,
                I1C2=>NPDISP10,
                I1C3=>NPDISP14,
                I2C0=>NPDISP3,
                I2C1=>NPDISP7,
                I2C2=>NPDISP11,
                I2C3=>NPDISP15,
                Y1=>NPSELDISP2,
                Y2=>NPSELDISP3);
   
   U157 : X74_153_MUSER_ppmmvsh
      port map (A=>ENCPSEL0,
                B=>ENCPSEL1,
                G1=>XLXN_1623,
                G2=>XLXN_1623,
                I1C0=>NPDISP0,
                I1C1=>NPDISP4,
                I1C2=>NPDISP8,
                I1C3=>NPDISP12,
                I2C0=>NPDISP1,
                I2C1=>NPDISP5,
                I2C2=>NPDISP9,
                I2C3=>NPDISP13,
                Y1=>NPSELDISP0,
                Y2=>NPSELDISP1);
   
   U158 : X74_157_MUSER_ppmmvsh
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>NPSELDISP0,
                B1=>NPSELDISP1,
                B2=>NPSELDISP2,
                B3=>NPSELDISP3,
                G=>XLXN_1635,
                S=>ADD,
                Y0=>BRWD0,
                Y1=>BRWD1,
                Y2=>BRWD2,
                Y3=>BRWD3);
   
   U159 : COMP4_HXILINX_ppmmvsh
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP4,
                B1=>DISP5,
                B2=>DISP6,
                B3=>DISP7,
                EQ=>EQ1);
   
   U160 : COMP4_HXILINX_ppmmvsh
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP0,
                B1=>DISP1,
                B2=>DISP2,
                B3=>DISP3,
                EQ=>EQ0);
   
   U161 : COMP4_HXILINX_ppmmvsh
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP12,
                B1=>DISP13,
                B2=>DISP14,
                B3=>DISP15,
                EQ=>EQ3);
   
   U162 : COMP4_HXILINX_ppmmvsh
      port map (A0=>BRWD0,
                A1=>BRWD1,
                A2=>BRWD2,
                A3=>BRWD3,
                B0=>DISP8,
                B1=>DISP9,
                B2=>DISP10,
                B3=>DISP11,
                EQ=>EQ2);
   
   U163 : AND2
      port map (I0=>RDP3EQ2,
                I1=>EQ1,
                O=>RDP3EQ1);
   
   U164 : AND2
      port map (I0=>RDP3EQ1,
                I1=>EQ0,
                O=>RDP3EQ0);
   
   U165 : AND2
      port map (I0=>RDP2EQ1,
                I1=>EQ0,
                O=>RDP2EQ0);
   
   U166 : AND2
      port map (I0=>RDP1EQ1,
                I1=>EQ3,
                O=>RDP1EQ0);
   
   U167 : AND2
      port map (I0=>RDP0EQ2,
                I1=>EQ2,
                O=>RDP0EQ1);
   
   U168 : AND2
      port map (I0=>RDP0EQ1,
                I1=>EQ3,
                O=>RDP0EQ0);
   
   U169 : M4_1E_HXILINX_ppmmvsh
      port map (D0=>RDP0EQ2,
                D1=>RDP1EQ2,
                D2=>RDP2EQ2,
                D3=>RDP3EQ2,
                E=>XLXN_2372,
                S0=>ENCPSEL0,
                S1=>ENCPSEL1,
                O=>UNENCNSD2);
   
   U170 : X74_153_MUSER_ppmmvsh
      port map (A=>ENCPSEL0,
                B=>ENCPSEL1,
                G1=>XLXN_1738,
                G2=>XLXN_1738,
                I1C0=>RDP0EQ0,
                I1C1=>RDP1EQ0,
                I1C2=>RDP2EQ0,
                I1C3=>RDP3EQ0,
                I2C0=>RDP0EQ1,
                I2C1=>RDP1EQ1,
                I2C2=>RDP2EQ1,
                I2C3=>RDP3EQ1,
                Y1=>UNENCNSD0,
                Y2=>UNENCNSD1);
   
   U171 : ADD4_HXILINX_ppmmvsh
      port map (A0=>UNENCNSD1,
                A1=>XLXN_1754,
                A2=>XLXN_1754,
                A3=>XLXN_1754,
                B0=>UNENCNSD2,
                B1=>XLXN_1754,
                B2=>XLXN_1754,
                B3=>XLXN_1754,
                CI=>UNENCNSD0,
                CO=>open,
                OFL=>open,
                S0=>NSD0,
                S1=>NSD1,
                S2=>open,
                S3=>open);
   
   U172 : AND3
      port map (I0=>NSD1,
                I1=>NSD0,
                I2=>BRWD3,
                O=>RWD(6));
   
   U173 : X74_153_MUSER_ppmmvsh
      port map (A=>NSD0,
                B=>NSD1,
                G1=>XLXN_1811,
                G2=>XLXN_1811,
                I1C0=>XLXN_1811,
                I1C1=>BRWD3,
                I1C2=>BRWD2,
                I1C3=>BRWD1,
                I2C0=>XLXN_1811,
                I2C1=>XLXN_1811,
                I2C2=>BRWD3,
                I2C3=>BRWD2,
                Y1=>RWD(4),
                Y2=>RWD(5));
   
   U174 : X74_153_MUSER_ppmmvsh
      port map (A=>NSD0,
                B=>NSD1,
                G1=>XLXN_1823,
                G2=>XLXN_1823,
                I1C0=>BRWD2,
                I1C1=>BRWD1,
                I1C2=>BRWD0,
                I1C3=>XLXN_1823,
                I2C0=>BRWD3,
                I2C1=>BRWD2,
                I2C2=>BRWD1,
                I2C3=>BRWD0,
                Y1=>RWD(2),
                Y2=>RWD(3));
   
   U175 : INV
      port map (I=>NSD1,
                O=>XLXN_1764);
   
   U176 : M2_1E_HXILINX_ppmmvsh
      port map (D0=>BRWD1,
                D1=>BRWD0,
                E=>XLXN_1764,
                S0=>NSD0,
                O=>RWD(1));
   
   U177 : AND3B2
      port map (I0=>NSD1,
                I1=>NSD0,
                I2=>BRWD0,
                O=>RWD(0));
   
   U178 : X74_157_MUSER_ppmmvsh
      port map (A0=>P1PT(4),
                A1=>P1PT(5),
                A2=>P1PT(6),
                A3=>P1PT(7),
                B0=>P2PT(4),
                B1=>P2PT(5),
                B2=>P2PT(6),
                B3=>P2PT(7),
                G=>XLXN_1785,
                S=>SELPLYR,
                Y0=>PT(4),
                Y1=>PT(5),
                Y2=>PT(6),
                Y3=>PT(7));
   
   U179 : X74_157_MUSER_ppmmvsh
      port map (A0=>P1PT(0),
                A1=>P1PT(1),
                A2=>P1PT(2),
                A3=>P1PT(3),
                B0=>P2PT(0),
                B1=>P2PT(1),
                B2=>P2PT(2),
                B3=>P2PT(3),
                G=>XLXN_1771,
                S=>SELPLYR,
                Y0=>PT(0),
                Y1=>PT(1),
                Y2=>PT(2),
                Y3=>PT(3));
   
   U180 : OR2
      port map (I0=>RWDCOT,
                I1=>XLXN_1802,
                O=>PTOVF);
   
   U181 : ADD8_HXILINX_ppmmvsh
      port map (A(7 downto 0)=>PT(7 downto 0),
                B(7 downto 0)=>TOTRWD(7 downto 0),
                CI=>XLXN_1801,
                CO=>XLXN_1802,
                OFL=>open,
                S(7 downto 0)=>NPT(7 downto 0));
   
   U182 : ADD8_HXILINX_ppmmvsh
      port map (A(7 downto 0)=>RWD(7 downto 0),
                B(7)=>CODERWD(7),
                B(6)=>CODERWD(6),
                B(5)=>CODERWD(5),
                B(4)=>CODERWD(4),
                B(3)=>CODERWD(3),
                B(2)=>CODERWD(2),
                B(1)=>CODERWD(1),
                B(0)=>CODERWD(0),
                CI=>XLXN_1809,
                CO=>RWDCOT,
                OFL=>open,
                S(7 downto 0)=>TOTRWD(7 downto 0));
   
   U183 : INV
      port map (I=>P1SEL0,
                O=>XLXN_11863);
   
   U184 : M8_1E_HXILINX_ppmmvsh
      port map (D0=>P1SEL0,
                D1=>XLXN_11863,
                D2=>XLXN_11863,
                D3=>XLXN_11864,
                D4=>XLXN_11863,
                D5=>XLXN_11864,
                D6=>XLXN_11864,
                D7=>XLXN_11864,
                E=>XLXN_11841,
                S0=>P1SEL1,
                S1=>P1SEL2,
                S2=>P1SEL3,
                O=>P2PLAYED);
   
   U293 : OR2
      port map (I0=>S4,
                I1=>S3P1PLAYSYNCHADJ,
                O=>CLEARP1FFS);
   
   U294 : OR2B1
      port map (I0=>LPTOVF,
                I1=>Q(8),
                O=>XLXN_210);
   
   U295 : D3_8E_HXILINX_ppmmvsh
      port map (A0=>MC0,
                A1=>MC1,
                A2=>MC2,
                E=>XLXN_210,
                D0=>DCDEN0,
                D1=>DCDEN1,
                D2=>DCDEN2,
                D3=>DCDEN3,
                D4=>DCDEN4,
                D5=>DCDEN5,
                D6=>DCDEN6,
                D7=>DCDEN7);
   
   U296 : M8_1E_HXILINX_ppmmvsh
      port map (D0=>DDISP1,
                D1=>DDISP5,
                D2=>DDISP9,
                D3=>DDISP13,
                D4=>DISP4INP1,
                D5=>DISP5INP1,
                D6=>DISP6INP1,
                D7=>DISP7INP1,
                E=>XLXN_11941,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(1));
   
   U297 : M8_1E_HXILINX_ppmmvsh
      port map (D0=>DDISP0,
                D1=>DDISP4,
                D2=>DDISP8,
                D3=>DDISP12,
                D4=>DISP4INP0,
                D5=>DISP5INP0,
                D6=>DISP6INP0,
                D7=>DISP7INP0,
                E=>XLXN_11981,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(0));
   
   U298 : M8_1E_HXILINX_ppmmvsh
      port map (D0=>DDISP3,
                D1=>DDISP7,
                D2=>DDISP11,
                D3=>DDISP15,
                D4=>DISP4INP3,
                D5=>DISP5INP3,
                D6=>DISP6INP3,
                D7=>DISP7INP3,
                E=>XLXN_11980,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(3));
   
   U299 : M8_1E_HXILINX_ppmmvsh
      port map (D0=>DDISP2,
                D1=>DDISP6,
                D2=>DDISP10,
                D3=>DDISP14,
                D4=>DISP4INP2,
                D5=>DISP5INP2,
                D6=>DISP6INP2,
                D7=>DISP7INP2,
                E=>XLXN_11982,
                S0=>MC0,
                S1=>MC1,
                S2=>MC2,
                O=>KSBUS(2));
   
   U315 : X74_157_MUSER_ppmmvsh
      port map (A0=>R0D0,
                A1=>R0D1,
                A2=>R0D2,
                A3=>R0D3,
                B0=>KEYPAD(0),
                B1=>KEYPAD(1),
                B2=>KEYPAD(2),
                B3=>KEYPAD(3),
                G=>XLXN_12761,
                S=>Testrd,
                Y0=>RD0,
                Y1=>RD1,
                Y2=>RD2,
                Y3=>RD3);
   
   XLXI_24 : VCC
      port map (P=>XLXN_1361);
   
   XLXI_25 : GND
      port map (G=>XLXN_1363);
   
   XLXI_27 : GND
      port map (G=>XLXN_88);
   
   XLXI_31 : GND
      port map (G=>XLXN_10400);
   
   XLXI_33 : GND
      port map (G=>XLXN_10403);
   
   XLXI_34 : GND
      port map (G=>XLXN_11263);
   
   XLXI_35 : GND
      port map (G=>XLXN_11259);
   
   XLXI_37 : GND
      port map (G=>XLXN_10405);
   
   XLXI_39 : GND
      port map (G=>XLXN_1635);
   
   XLXI_42 : GND
      port map (G=>XLXN_1623);
   
   XLXI_43 : GND
      port map (G=>XLXN_1615);
   
   XLXI_47 : VCC
      port map (P=>XLXN_1577);
   
   XLXI_49 : GND
      port map (G=>XLXN_1595);
   
   XLXI_54 : VCC
      port map (P=>XLXN_2372);
   
   XLXI_65 : VCC
      port map (P=>XLXN_11941);
   
   XLXI_66 : VCC
      port map (P=>XLXN_12238);
   
   XLXI_69 : GND
      port map (G=>RWD(7));
   
   XLXI_120 : GND
      port map (G=>XLXN_1771);
   
   XLXI_122 : GND
      port map (G=>XLXN_1785);
   
   XLXI_127 : GND
      port map (G=>XLXN_1801);
   
   XLXI_128 : GND
      port map (G=>XLXN_1809);
   
   XLXI_139 : GND
      port map (G=>XLXN_1738);
   
   XLXI_140 : GND
      port map (G=>XLXN_1811);
   
   XLXI_141 : GND
      port map (G=>XLXN_1823);
   
   XLXI_191 : VCC
      port map (P=>XLXN_12183);
   
   XLXI_193 : GND
      port map (G=>XLXN_12167);
   
   XLXI_245 : GND
      port map (G=>XLXN_10394);
   
   XLXI_459 : GND
      port map (G=>XLXN_11261);
   
   XLXI_462 : GND
      port map (G=>XLXN_11260);
   
   XLXI_541 : GND
      port map (G=>XLXN_1754);
   
   XLXI_687 : GND
      port map (G=>XLXN_4);
   
   XLXI_1050 : GND
      port map (G=>XLXN_10395);
   
   XLXI_1051 : GND
      port map (G=>XLXN_10402);
   
   XLXI_1052 : GND
      port map (G=>XLXN_10404);
   
   XLXI_1053 : GND
      port map (G=>XLXN_10406);
   
   XLXI_1061 : VCC
      port map (P=>XLXN_11841);
   
   XLXI_1062 : GND
      port map (G=>XLXN_11864);
   
   XLXI_1118 : GND
      port map (G=>P2CODE0);
   
   XLXI_1119 : GND
      port map (G=>P2CODE1);
   
   XLXI_1120 : GND
      port map (G=>P2CODE2);
   
   XLXI_1121 : GND
      port map (G=>P2CODE3);
   
   XLXI_1124 : GND
      port map (G=>P2CODE4);
   
   XLXI_1125 : GND
      port map (G=>P2CODE5);
   
   XLXI_1126 : GND
      port map (G=>P2CODE6);
   
   XLXI_1127 : GND
      port map (G=>P2CODE7);
   
   XLXI_1217 : GND
      port map (G=>XLXN_10993);
   
   XLXI_1231 : GND
      port map (G=>XLXN_10716);
   
   XLXI_1233 : VCC
      port map (P=>XLXN_1);
   
   XLXI_1240 : VCC
      port map (P=>XLXN_8);
   
   XLXI_1241 : GND
      port map (G=>XLXN_7);
   
   XLXI_1509 : OBUF
      port map (I=>XLXN_12049,
                O=>A4_NB2P);
   
   XLXI_1510 : OBUF
      port map (I=>XLXN_12041,
                O=>A5_NB2P);
   
   XLXI_1511 : OBUF
      port map (I=>XLXN_12042,
                O=>A6_NB2P);
   
   XLXI_1512 : OBUF
      port map (I=>XLXN_12043,
                O=>A7_NB2P);
   
   XLXI_1550 : VCC
      port map (P=>XLXN_11980);
   
   XLXI_1551 : VCC
      port map (P=>XLXN_11981);
   
   XLXI_1552 : VCC
      port map (P=>XLXN_11982);
   
   XLXI_1566 : INV
      port map (I=>DCDEN4,
                O=>XLXN_12049);
   
   XLXI_1570 : VCC
      port map (P=>XLXN_211);
   
   XLXI_1571 : GND
      port map (G=>XLXN_213);
   
   XLXI_1575 : INV
      port map (I=>DCDEN5,
                O=>XLXN_12041);
   
   XLXI_1576 : INV
      port map (I=>DCDEN6,
                O=>XLXN_12042);
   
   XLXI_1577 : INV
      port map (I=>DCDEN7,
                O=>XLXN_12043);
   
   XLXI_1814 : OBUF
      port map (I=>R2D3,
                O=>LED15);
   
   XLXI_1884 : OBUF
      port map (I=>R2D2,
                O=>LED14);
   
   XLXI_1885 : OBUF
      port map (I=>R2D1,
                O=>LED13);
   
   XLXI_1886 : OBUF
      port map (I=>R2D0,
                O=>LED12);
   
   XLXI_1887 : OBUF
      port map (I=>R1D3,
                O=>LED11);
   
   XLXI_1888 : OBUF
      port map (I=>R1D2,
                O=>LED10);
   
   XLXI_1889 : OBUF
      port map (I=>R1D1,
                O=>LED9);
   
   XLXI_1890 : OBUF
      port map (I=>R1D0,
                O=>LED8);
   
   XLXI_2080 : BUF
      port map (I=>P1PT(3),
                O=>DISP4INP3);
   
   XLXI_2081 : BUF
      port map (I=>P1PT(2),
                O=>DISP4INP2);
   
   XLXI_2082 : BUF
      port map (I=>P1PT(1),
                O=>DISP4INP1);
   
   XLXI_2083 : BUF
      port map (I=>P1PT(0),
                O=>DISP4INP0);
   
   XLXI_2094 : BUF
      port map (I=>P1PT(7),
                O=>DISP5INP3);
   
   XLXI_2095 : BUF
      port map (I=>P1PT(6),
                O=>DISP5INP2);
   
   XLXI_2096 : BUF
      port map (I=>P1PT(5),
                O=>DISP5INP1);
   
   XLXI_2097 : BUF
      port map (I=>P1PT(4),
                O=>DISP5INP0);
   
   XLXI_2117 : BUF
      port map (I=>P2PT(0),
                O=>DISP6INP0);
   
   XLXI_2118 : BUF
      port map (I=>P2PT(1),
                O=>DISP6INP1);
   
   XLXI_2119 : BUF
      port map (I=>P2PT(2),
                O=>DISP6INP2);
   
   XLXI_2120 : BUF
      port map (I=>P2PT(3),
                O=>DISP6INP3);
   
   XLXI_2139 : BUF
      port map (I=>P2PT(7),
                O=>DISP7INP3);
   
   XLXI_2140 : BUF
      port map (I=>P2PT(6),
                O=>DISP7INP2);
   
   XLXI_2141 : BUF
      port map (I=>P2PT(5),
                O=>DISP7INP1);
   
   XLXI_2142 : BUF
      port map (I=>P2PT(4),
                O=>DISP7INP0);
   
   XLXI_2144 : GND
      port map (G=>XLXN_102);
   
   XLXI_2189 : GND
      port map (G=>XLXN_12761);
   
   XLXI_2220 : X74_157_MUSER_ppmmvsh
      port map (A0=>KEYPAD(0),
                A1=>KEYPAD(1),
                A2=>KEYPAD(2),
                A3=>KEYPAD(3),
                B0=>CODEDIG0,
                B1=>CODEDIG1,
                B2=>CODEDIG2,
                B3=>CODEDIG3,
                G=>XLXN_12898,
                S=>CodeOrKeypad,
                Y0=>PMODDISP4,
                Y1=>PMODDISP5,
                Y2=>PMODDISP6,
                Y3=>PMODDISP7);
   
   XLXI_2224 : X74_157_MUSER_ppmmvsh
      port map (A0=>R2D0,
                A1=>R2D1,
                A2=>R2D2,
                A3=>R2D3,
                B0=>CODEDIG4,
                B1=>CODEDIG5,
                B2=>CODEDIG6,
                B3=>CODEDIG7,
                G=>XLXN_12899,
                S=>CodeOrKeypad,
                Y0=>PMODDISP0,
                Y1=>PMODDISP1,
                Y2=>PMODDISP2,
                Y3=>PMODDISP3);
   
   XLXI_2226 : GND
      port map (G=>XLXN_12898);
   
   XLXI_2227 : GND
      port map (G=>XLXN_12899);
   
   XLXI_2228 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>XLXN_12990,
                CLR=>RESET,
                D0=>DISP0,
                D1=>DISP1,
                D2=>DISP2,
                D3=>DISP3,
                Q0=>CODEDIG0,
                Q1=>CODEDIG1,
                Q2=>CODEDIG2,
                Q3=>CODEDIG3);
   
   XLXI_2229 : FD4CE_HXILINX_ppmmvsh
      port map (C=>SYSCLK,
                CE=>XLXN_12976,
                CLR=>RESET,
                D0=>DISP4,
                D1=>DISP5,
                D2=>DISP6,
                D3=>DISP7,
                Q0=>CODEDIG4,
                Q1=>CODEDIG5,
                Q2=>CODEDIG6,
                Q3=>CODEDIG7);
   
   XLXI_2236 : AND2
      port map (I0=>PSEL0,
                I1=>XLXN_13194,
                O=>XLXN_12990);
   
   XLXI_2249 : COMP4_HXILINX_ppmmvsh
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>CODEDIG0,
                B1=>CODEDIG1,
                B2=>CODEDIG2,
                B3=>CODEDIG3,
                EQ=>DIG_1);
   
   XLXI_2250 : COMP4_HXILINX_ppmmvsh
      port map (A0=>CODEDIG4,
                A1=>CODEDIG5,
                A2=>CODEDIG6,
                A3=>CODEDIG7,
                B0=>NPDISP4,
                B1=>NPDISP5,
                B2=>NPDISP6,
                B3=>NPDISP7,
                EQ=>DIG_4);
   
   XLXI_2252 : COMP4_HXILINX_ppmmvsh
      port map (A0=>CODEDIG0,
                A1=>CODEDIG1,
                A2=>CODEDIG2,
                A3=>CODEDIG3,
                B0=>NPDISP0,
                B1=>NPDISP1,
                B2=>NPDISP2,
                B3=>NPDISP3,
                EQ=>DIG_3);
   
   XLXI_2255 : COMP4_HXILINX_ppmmvsh
      port map (A0=>RD0,
                A1=>RD1,
                A2=>RD2,
                A3=>RD3,
                B0=>CODEDIG4,
                B1=>CODEDIG5,
                B2=>CODEDIG6,
                B3=>CODEDIG7,
                EQ=>DIG_2);
   
   XLXI_2262 : D2_4E_HXILINX_ppmmvsh
      port map (A0=>ADJPLAYPOS0,
                A1=>ADJPLAYPOS1,
                E=>XLXN_13064,
                D0=>P1SEL0,
                D1=>P1SEL1,
                D2=>P1SEL2,
                D3=>P1SEL3);
   
   XLXI_2268 : OR3
      port map (I0=>XLXN_13037,
                I1=>XLXN_13036,
                I2=>XLXN_13035,
                O=>ADJPLAYPOS0);
   
   XLXI_2270 : AND2B1
      port map (I0=>EQ1,
                I1=>EQ2,
                O=>XLXN_13036);
   
   XLXI_2271 : AND3B1
      port map (I0=>EQ3,
                I1=>EQ2,
                I2=>EQ0,
                O=>XLXN_13037);
   
   XLXI_2274 : AND3
      port map (I0=>EQ2,
                I1=>EQ1,
                I2=>EQ0,
                O=>XLXN_13047);
   
   XLXI_2275 : AND3B1
      port map (I0=>EQ3,
                I1=>EQ1,
                I2=>EQ0,
                O=>XLXN_13046);
   
   XLXI_2276 : AND3B1
      port map (I0=>EQ2,
                I1=>EQ3,
                I2=>EQ1,
                O=>XLXN_13048);
   
   XLXI_2277 : AND3B2
      port map (I0=>EQ2,
                I1=>EQ0,
                I2=>EQ3,
                O=>XLXN_13049);
   
   XLXI_2278 : OR4
      port map (I0=>XLXN_13049,
                I1=>XLXN_13048,
                I2=>XLXN_13047,
                I3=>XLXN_13046,
                O=>ADJPLAYPOS1);
   
   XLXI_2279 : VCC
      port map (P=>XLXN_13064);
   
   XLXI_2292 : OR4
      port map (I0=>CODEDIG3,
                I1=>CODEDIG2,
                I2=>CODEDIG1,
                I3=>CODEDIG0,
                O=>CODEDIG0FOUND);
   
   XLXI_2294 : OR4
      port map (I0=>CODEDIG7,
                I1=>CODEDIG6,
                I2=>CODEDIG5,
                I3=>CODEDIG4,
                O=>CODEDIG1FOUND);
   
   XLXI_2297 : OBUF
      port map (I=>CODEDIG0FOUND,
                O=>led16_g);
   
   XLXI_2299 : OBUF
      port map (I=>CODEDIG1FOUND,
                O=>led17_g);
   
   XLXI_2302 : INV
      port map (I=>CODEDIG0FOUND,
                O=>led16_r);
   
   XLXI_2304 : INV
      port map (I=>CODEDIG1FOUND,
                O=>led17_r);
   
   XLXI_2306 : FD
      port map (C=>SYSCLK,
                D=>ACDDIGFOUND,
                Q=>XLXN_13194);
   
   XLXI_2315 : AND2
      port map (I0=>PSEL1,
                I1=>XLXN_13219,
                O=>XLXN_12976);
   
   XLXI_2316 : FD
      port map (C=>SYSCLK,
                D=>ACDDIGFOUND,
                Q=>XLXN_13219);
   
   XLXI_2318 : OR5
      port map (I0=>CODERWD(7),
                I1=>CODERWD(6),
                I2=>CODERWD(5),
                I3=>CODERWD(4),
                I4=>CODERWD(3),
                O=>ACDDIGFOUND);
   
   XLXI_2326 : D4_16E_HXILINX_ppmmvsh
      port map (A0=>DISP0,
                A1=>DISP1,
                A2=>DISP2,
                A3=>DISP3,
                E=>XLXN_13307,
                D0=>XLXN_13536,
                D1=>XLXN_13537,
                D2=>XLXN_13538,
                D3=>XLXN_13539,
                D4=>XLXN_13532,
                D5=>XLXN_13533,
                D6=>XLXN_13534,
                D7=>XLXN_13535,
                D8=>XLXN_13528,
                D9=>XLXN_13529,
                D10=>XLXN_13530,
                D11=>XLXN_13531,
                D12=>XLXN_13524,
                D13=>XLXN_13525,
                D14=>XLXN_13526,
                D15=>XLXN_13527);
   
   XLXI_2329 : VCC
      port map (P=>XLXN_13307);
   
   XLXI_2336 : D4_16E_HXILINX_ppmmvsh
      port map (A0=>DISP4,
                A1=>DISP5,
                A2=>DISP6,
                A3=>DISP7,
                E=>XLXN_13307,
                D0=>XLXN_13600,
                D1=>XLXN_13601,
                D2=>XLXN_13602,
                D3=>XLXN_13603,
                D4=>XLXN_13596,
                D5=>XLXN_13597,
                D6=>XLXN_13598,
                D7=>XLXN_13599,
                D8=>XLXN_13592,
                D9=>XLXN_13593,
                D10=>XLXN_13594,
                D11=>XLXN_13595,
                D12=>XLXN_13588,
                D13=>XLXN_13589,
                D14=>XLXN_13590,
                D15=>XLXN_13591);
   
   XLXI_2338 : VCC
      port map (P=>XLXN_13307);
   
   XLXI_2339 : COMPM4_HXILINX_ppmmvsh
      port map (A0=>CODEDIG0,
                A1=>CODEDIG1,
                A2=>CODEDIG2,
                A3=>CODEDIG3,
                B0=>CODEDIG4,
                B1=>CODEDIG5,
                B2=>CODEDIG6,
                B3=>CODEDIG7,
                GT=>CODEPOS0GTCODEPOS1,
                LT=>open);
   
   XLXI_2376 : AND2B1
      port map (I0=>EQ1,
                I1=>EQ0,
                O=>XLXN_13035);
   
   XLXI_2381 : AND2
      port map (I0=>CODEDIG0FOUND,
                I1=>XLXN_13626,
                O=>CANPLAYCODEPOS0);
   
   XLXI_2383 : OR2
      port map (I0=>DIG_3,
                I1=>DIG_1,
                O=>XLXN_13626);
   
   XLXI_2387 : OR2
      port map (I0=>DIG_4,
                I1=>DIG_2,
                O=>XLXN_13640);
   
   XLXI_2388 : AND2
      port map (I0=>CODEDIG1FOUND,
                I1=>XLXN_13640,
                O=>CANPLAYCODEPOS1);
   
   XLXI_2402 : AND2
      port map (I0=>CODEPOS0GTCODEPOS1,
                I1=>CANPLAYCODEBOTH,
                O=>OPTCODEPLAY0);
   
   XLXI_2403 : AND2B1
      port map (I0=>CODEPOS0GTCODEPOS1,
                I1=>CANPLAYCODEBOTH,
                O=>OPTCODEPLAY1);
   
   XLXI_2430 : D2_4E_HXILINX_ppmmvsh
      port map (A0=>CANPLAYCODEPOS0,
                A1=>CANPLAYCODEPOS1,
                E=>XLXN_13763,
                D0=>XLXN_13764,
                D1=>OPTPOSS0,
                D2=>OPTPOSS1,
                D3=>CANPLAYCODEBOTH);
   
   XLXI_2431 : VCC
      port map (P=>XLXN_13763);
   
   XLXI_2432 : INV
      port map (I=>XLXN_13764,
                O=>POSSPLAY);
   
   XLXI_2439 : AND2
      port map (I0=>CODEPLAYPOS0,
                I1=>DIG_3,
                O=>XLXN_13830);
   
   XLXI_2440 : AND2
      port map (I0=>CODEPLAYPOS1,
                I1=>DIG_4,
                O=>XLXN_13831);
   
   XLXI_2447 : M2_1_HXILINX_ppmmvsh
      port map (D0=>OPTPOSS0,
                D1=>OPTCODEPLAY0,
                S0=>CANPLAYCODEBOTH,
                O=>CODEPLAYPOS0);
   
   XLXI_2448 : M2_1_HXILINX_ppmmvsh
      port map (D0=>OPTPOSS1,
                D1=>OPTCODEPLAY1,
                S0=>CANPLAYCODEBOTH,
                O=>CODEPLAYPOS1);
   
   XLXI_2453 : OR2
      port map (I0=>XLXN_13831,
                I1=>XLXN_13830,
                O=>CODEPLAYADD);
   
end BEHAVIORAL;


