--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : clockblock.vhf
-- /___/   /\     Timestamp : 10/16/2016 18:39:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl D:/work/academic/cs2204/fall2016/labs/ppmmvsm/clockblock.vhf -w D:/work/academic/cs2204/fall2016/labs/ppmmvsm/clockblock.sch
--Design Name: clockblock
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_clockblock -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_clockblock is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_clockblock;

architecture OR6_HXILINX_clockblock_V of OR6_HXILINX_clockblock is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_clockblock_V;
----- CELL OR7_HXILINX_clockblock -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR7_HXILINX_clockblock is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic
  );
end OR7_HXILINX_clockblock;

architecture OR7_HXILINX_clockblock_V of OR7_HXILINX_clockblock is
begin
  O <= (I0 or I1 or I2 or I3 or I4 or I5 or I6);
end OR7_HXILINX_clockblock_V;
----- CELL CD4CE_HXILINX_clockblock -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_clockblock is
  
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
end CD4CE_HXILINX_clockblock;

architecture Behavioral of CD4CE_HXILINX_clockblock is

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

----- CELL FD4CE_HXILINX_clockblock -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_clockblock is
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
end FD4CE_HXILINX_clockblock;

architecture Behavioral of FD4CE_HXILINX_clockblock is

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

----- CELL D3_8E_HXILINX_clockblock -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_clockblock is
  
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
end D3_8E_HXILINX_clockblock;

architecture D3_8E_HXILINX_clockblock_V of D3_8E_HXILINX_clockblock is
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

end D3_8E_HXILINX_clockblock_V;
----- CELL CD4CLE_HXILINX_clockblock -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CLE_HXILINX_clockblock is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC;
    D0   : in STD_LOGIC;
    D1   : in STD_LOGIC;
    D2   : in STD_LOGIC;
    D3   : in STD_LOGIC;
    L    : in STD_LOGIC
    );
end CD4CLE_HXILINX_clockblock;

architecture Behavioral of CD4CLE_HXILINX_clockblock is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := "1001";
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (L ='1') then
      COUNT <= D3&D2&D1&D0; 
    elsif (CE='1') then 

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

TC   <= '0' when (CLR='1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3   <= COUNT(3);
Q2   <= COUNT(2);
Q1   <= COUNT(1);
Q0   <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clockblock is
   port ( CLOCKINP   : in    std_logic; 
          PAUSE      : in    std_logic; 
          RST        : in    std_logic; 
          SETHR      : in    std_logic; 
          SETMIN     : in    std_logic; 
          SETSEC     : in    std_logic; 
          SET0       : in    std_logic; 
          SET1       : in    std_logic; 
          SET2       : in    std_logic; 
          SET3       : in    std_logic; 
          SET4       : in    std_logic; 
          SET5       : in    std_logic; 
          SET6       : in    std_logic; 
          SET7       : in    std_logic; 
          SHOWTIME   : in    std_logic; 
          TIMER      : in    std_logic; 
          TIMERVALUE : in    std_logic; 
          CEN        : out   std_logic_vector (7 downto 0); 
          HL         : out   std_logic_vector (7 downto 0); 
          ML         : out   std_logic_vector (7 downto 0); 
          MODECLK    : out   std_logic; 
          MODETIME   : out   std_logic; 
          ONEHERTZ   : out   std_logic; 
          SETHOURS   : out   std_logic; 
          SETMINUTES : out   std_logic; 
          SETSECONDS : out   std_logic; 
          SHOWTIMER  : out   std_logic; 
          SL         : out   std_logic_vector (7 downto 0); 
          STR0       : out   std_logic; 
          STR1       : out   std_logic; 
          STR2       : out   std_logic; 
          TIMERCEN   : out   std_logic_vector (7 downto 0); 
          TIMERHL    : out   std_logic_vector (7 downto 0); 
          TIMERML    : out   std_logic_vector (7 downto 0); 
          TIMERSL    : out   std_logic_vector (7 downto 0));
end clockblock;

architecture BEHAVIORAL of clockblock is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal CENNINE            : std_logic;
   signal CENNINETYNINE      : std_logic;
   signal CLKEN              : std_logic;
   signal CLKENCEN0          : std_logic;
   signal CLKENCEN1          : std_logic;
   signal CLKENHR0           : std_logic;
   signal CLKENHR1           : std_logic;
   signal CLKENMIN0          : std_logic;
   signal CLKENMIN1          : std_logic;
   signal CLKENSEC0          : std_logic;
   signal CLKENSEC1          : std_logic;
   signal CLKENTIMERCEN0     : std_logic;
   signal CLKENTIMERCEN1     : std_logic;
   signal CLKENTIMERHR0      : std_logic;
   signal CLKENTIMERHR1      : std_logic;
   signal CLKENTIMERMIN0     : std_logic;
   signal CLKENTIMERMIN1     : std_logic;
   signal CLKENTIMERSEC0     : std_logic;
   signal CLKENTIMERSEC1     : std_logic;
   signal FOURHERTZ          : std_logic;
   signal HOURSSET           : std_logic;
   signal HRNINE             : std_logic;
   signal HRTHREE            : std_logic;
   signal HRTWENTYTHREE      : std_logic;
   signal LDHR               : std_logic;
   signal LDMIN              : std_logic;
   signal LDSEC              : std_logic;
   signal LDTIMERMIN         : std_logic;
   signal LDTIMERSEC         : std_logic;
   signal MINFIFTYNINE       : std_logic;
   signal MINNINE            : std_logic;
   signal MINUTESSET         : std_logic;
   signal ONEHUNDREDHERTZ    : std_logic;
   signal PAUSETIME          : std_logic;
   signal RESET              : std_logic;
   signal RESETTIMER         : std_logic;
   signal SECFIFTYNINE       : std_logic;
   signal SECNINE            : std_logic;
   signal SECONDSSET         : std_logic;
   signal SET                : std_logic;
   signal S0                 : std_logic;
   signal S1                 : std_logic;
   signal S2                 : std_logic;
   signal S3                 : std_logic;
   signal S4                 : std_logic;
   signal S5                 : std_logic;
   signal S6                 : std_logic;
   signal S7                 : std_logic;
   signal TIME               : std_logic;
   signal TIMERCENNINE       : std_logic;
   signal TIMERCENNINETYNINE : std_logic;
   signal TIMERHRNINE        : std_logic;
   signal TIMERMINFIFTYNINE  : std_logic;
   signal TIMERMINNINE       : std_logic;
   signal TIMERSECFIFTYNINE  : std_logic;
   signal TIMERSECNINE       : std_logic;
   signal TIMERVAL           : std_logic;
   signal TIMESHOWN          : std_logic;
   signal XLXN_12167         : std_logic;
   signal XLXN_12183         : std_logic;
   signal XLXN_13329         : std_logic;
   signal XLXN_13330         : std_logic;
   signal XLXN_13331         : std_logic;
   signal XLXN_13332         : std_logic;
   signal XLXN_13353         : std_logic;
   signal XLXN_13354         : std_logic;
   signal XLXN_13355         : std_logic;
   signal XLXN_13356         : std_logic;
   signal XLXN_13446         : std_logic;
   signal XLXN_13447         : std_logic;
   signal XLXN_13450         : std_logic;
   signal XLXN_13451         : std_logic;
   signal XLXN_13600         : std_logic;
   signal XLXN_13601         : std_logic;
   signal XLXN_13602         : std_logic;
   signal XLXN_13669         : std_logic;
   signal XLXN_13671         : std_logic;
   signal XLXN_13672         : std_logic;
   signal XLXN_14325         : std_logic;
   signal XLXN_15410         : std_logic;
   signal XLXN_17314         : std_logic;
   signal XLXN_17406         : std_logic;
   signal XLXN_18079         : std_logic;
   signal XLXN_18080         : std_logic;
   signal XLXN_18102         : std_logic;
   signal XLXN_18105         : std_logic;
   signal XLXN_18201         : std_logic;
   signal XLXN_18385         : std_logic;
   signal XLXN_19485         : std_logic;
   signal XLXN_19489         : std_logic;
   signal XLXN_20635         : std_logic;
   signal XLXN_20683         : std_logic;
   signal XLXN_21780         : std_logic;
   signal XLXN_21821         : std_logic;
   signal XLXN_21833         : std_logic;
   signal XLXN_21851         : std_logic;
   signal XLXN_21870         : std_logic;
   signal XLXN_21876         : std_logic;
   signal XLXN_22645         : std_logic;
   signal XLXN_22646         : std_logic;
   signal XLXN_22647         : std_logic;
   signal XLXN_22648         : std_logic;
   signal XLXN_22654         : std_logic;
   signal XLXN_22655         : std_logic;
   signal XLXN_22656         : std_logic;
   signal XLXN_22657         : std_logic;
   signal XLXN_22677         : std_logic;
   signal XLXN_22678         : std_logic;
   signal XLXN_22679         : std_logic;
   signal XLXN_22680         : std_logic;
   signal XLXN_22707         : std_logic;
   signal XLXN_22708         : std_logic;
   signal XLXN_22709         : std_logic;
   signal XLXN_22710         : std_logic;
   signal ZEROMIN            : std_logic;
   signal ZEROSEC            : std_logic;
   signal STR0_DUMMY         : std_logic;
   signal STR1_DUMMY         : std_logic;
   signal STR2_DUMMY         : std_logic;
   signal SETHOURS_DUMMY     : std_logic;
   signal TIMERML_DUMMY      : std_logic_vector (7 downto 0);
   signal TIMERSL_DUMMY      : std_logic_vector (7 downto 0);
   signal SETMINUTES_DUMMY   : std_logic;
   signal TIMERHL_DUMMY      : std_logic_vector (7 downto 0);
   signal CEN_DUMMY          : std_logic_vector (7 downto 0);
   signal SETSECONDS_DUMMY   : std_logic;
   signal ML_DUMMY           : std_logic_vector (7 downto 0);
   signal SL_DUMMY           : std_logic_vector (7 downto 0);
   signal MODETIME_DUMMY     : std_logic;
   signal HL_DUMMY           : std_logic_vector (7 downto 0);
   signal TIMERCEN_DUMMY     : std_logic_vector (7 downto 0);
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CD4CLE_HXILINX_clockblock
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
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component FD4CE_HXILINX_clockblock
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component CD4CE_HXILINX_clockblock
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
   
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR7_HXILINX_clockblock
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR6_HXILINX_clockblock
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component FREQDIV
      port ( ONEHUNDREDMEGAHERTZ : in    std_logic; 
             RESET               : in    std_logic; 
             ONEHERTZ            : out   std_logic; 
             ONEHUNDREDHERTZ     : out   std_logic; 
             FOURHERTZ           : out   std_logic);
   end component;
   
   component D3_8E_HXILINX_clockblock
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
   
   attribute HU_SET of XLXI_2464 : label is "XLXI_2464_14";
   attribute HU_SET of XLXI_3779 : label is "XLXI_3779_2";
   attribute HU_SET of XLXI_4254 : label is "XLXI_4254_0";
   attribute HU_SET of XLXI_4256 : label is "XLXI_4256_1";
   attribute HU_SET of XLXI_4854 : label is "XLXI_4854_3";
   attribute HU_SET of XLXI_4855 : label is "XLXI_4855_4";
   attribute HU_SET of XLXI_4946 : label is "XLXI_4946_5";
   attribute HU_SET of XLXI_5177 : label is "XLXI_5177_6";
   attribute HU_SET of XLXI_5182 : label is "XLXI_5182_7";
   attribute HU_SET of XLXI_5187 : label is "XLXI_5187_8";
   attribute HU_SET of XLXI_5202 : label is "XLXI_5202_9";
   attribute HU_SET of XLXI_5227 : label is "XLXI_5227_11";
   attribute HU_SET of XLXI_5228 : label is "XLXI_5228_10";
   attribute HU_SET of XLXI_5255 : label is "XLXI_5255_12";
   attribute HU_SET of XLXI_5430 : label is "XLXI_5430_13";
   attribute HU_SET of XLXI_5434 : label is "XLXI_5434_15";
   attribute HU_SET of XLXI_5435 : label is "XLXI_5435_16";
   attribute HU_SET of XLXI_5436 : label is "XLXI_5436_17";
   attribute HU_SET of XLXI_5437 : label is "XLXI_5437_18";
   attribute HU_SET of XLXI_5438 : label is "XLXI_5438_19";
begin
   CEN(7 downto 0) <= CEN_DUMMY(7 downto 0);
   HL(7 downto 0) <= HL_DUMMY(7 downto 0);
   ML(7 downto 0) <= ML_DUMMY(7 downto 0);
   MODETIME <= MODETIME_DUMMY;
   SETHOURS <= SETHOURS_DUMMY;
   SETMINUTES <= SETMINUTES_DUMMY;
   SETSECONDS <= SETSECONDS_DUMMY;
   SL(7 downto 0) <= SL_DUMMY(7 downto 0);
   STR0 <= STR0_DUMMY;
   STR1 <= STR1_DUMMY;
   STR2 <= STR2_DUMMY;
   TIMERCEN(7 downto 0) <= TIMERCEN_DUMMY(7 downto 0);
   TIMERHL(7 downto 0) <= TIMERHL_DUMMY(7 downto 0);
   TIMERML(7 downto 0) <= TIMERML_DUMMY(7 downto 0);
   TIMERSL(7 downto 0) <= TIMERSL_DUMMY(7 downto 0);
   XLXI_191 : VCC
      port map (P=>XLXN_12183);
   
   XLXI_2464 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENMIN1,
                CLR=>RESET,
                D0=>XLXN_13353,
                D1=>XLXN_13354,
                D2=>XLXN_13355,
                D3=>XLXN_13356,
                L=>LDMIN,
                CEO=>open,
                Q0=>ML_DUMMY(4),
                Q1=>ML_DUMMY(5),
                Q2=>ML_DUMMY(6),
                Q3=>ML_DUMMY(7),
                TC=>open);
   
   XLXI_2760 : AND4B1
      port map (I0=>SL_DUMMY(5),
                I1=>SL_DUMMY(6),
                I2=>SL_DUMMY(4),
                I3=>SECNINE,
                O=>SECFIFTYNINE);
   
   XLXI_2790 : AND4B1
      port map (I0=>ML_DUMMY(5),
                I1=>ML_DUMMY(6),
                I2=>ML_DUMMY(4),
                I3=>MINNINE,
                O=>MINFIFTYNINE);
   
   XLXI_2804 : AND3B1
      port map (I0=>HL_DUMMY(4),
                I1=>HL_DUMMY(5),
                I2=>HRTHREE,
                O=>HRTWENTYTHREE);
   
   XLXI_2828 : AND4B2
      port map (I0=>HL_DUMMY(3),
                I1=>HL_DUMMY(2),
                I2=>HL_DUMMY(1),
                I3=>HL_DUMMY(0),
                O=>HRTHREE);
   
   XLXI_2924 : AND2
      port map (I0=>SET0,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_13600);
   
   XLXI_2925 : AND2
      port map (I0=>SET1,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_13601);
   
   XLXI_2926 : AND2
      port map (I0=>SET2,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_13602);
   
   XLXI_2936 : AND2
      port map (I0=>SET3,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_14325);
   
   XLXI_2937 : AND2
      port map (I0=>SET4,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_13329);
   
   XLXI_2938 : AND4B2
      port map (I0=>SL_DUMMY(2),
                I1=>SL_DUMMY(1),
                I2=>SL_DUMMY(3),
                I3=>SL_DUMMY(0),
                O=>SECNINE);
   
   XLXI_3034 : AND2
      port map (I0=>SET5,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_13330);
   
   XLXI_3037 : AND2
      port map (I0=>SET6,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_13331);
   
   XLXI_3038 : AND2
      port map (I0=>SET7,
                I1=>SETSECONDS_DUMMY,
                O=>XLXN_13332);
   
   XLXI_3239 : AND4B2
      port map (I0=>ML_DUMMY(2),
                I1=>ML_DUMMY(1),
                I2=>ML_DUMMY(3),
                I3=>ML_DUMMY(0),
                O=>MINNINE);
   
   XLXI_3285 : AND2
      port map (I0=>SET0,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_13672);
   
   XLXI_3287 : AND2
      port map (I0=>SET3,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_13669);
   
   XLXI_3298 : AND2
      port map (I0=>SET6,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_13355);
   
   XLXI_3299 : AND2
      port map (I0=>SET5,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_13354);
   
   XLXI_3300 : AND2
      port map (I0=>SET4,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_13353);
   
   XLXI_3301 : AND2
      port map (I0=>SET7,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_13356);
   
   XLXI_3779 : FD4CE_HXILINX_clockblock
      port map (C=>FOURHERTZ,
                CE=>CLKEN,
                CLR=>RST,
                D0=>XLXN_18201,
                D1=>XLXN_17314,
                D2=>XLXN_20683,
                D3=>XLXN_12167,
                Q0=>STR0_DUMMY,
                Q1=>STR1_DUMMY,
                Q2=>STR2_DUMMY,
                Q3=>open);
   
   XLXI_3780 : GND
      port map (G=>XLXN_12167);
   
   XLXI_3781 : AND2
      port map (I0=>XLXN_21780,
                I1=>SHOWTIME,
                O=>TIMESHOWN);
   
   XLXI_3785 : AND2
      port map (I0=>XLXN_21821,
                I1=>TIMER,
                O=>TIME);
   
   XLXI_3786 : AND2
      port map (I0=>XLXN_21833,
                I1=>PAUSE,
                O=>PAUSETIME);
   
   XLXI_3787 : AND2
      port map (I0=>XLXN_21851,
                I1=>TIMERVALUE,
                O=>TIMERVAL);
   
   XLXI_3802 : BUF
      port map (I=>S1,
                O=>SETSECONDS_DUMMY);
   
   XLXI_3803 : BUF
      port map (I=>S2,
                O=>SETMINUTES_DUMMY);
   
   XLXI_3804 : BUF
      port map (I=>S3,
                O=>SETHOURS_DUMMY);
   
   XLXI_3805 : OR3
      port map (I0=>S3,
                I1=>S2,
                I2=>S1,
                O=>SET);
   
   XLXI_3809 : OR2
      port map (I0=>ZEROSEC,
                I1=>S1,
                O=>LDSEC);
   
   XLXI_3811 : INV
      port map (I=>SET,
                O=>CLKENCEN0);
   
   XLXI_3812 : AND2B1
      port map (I0=>SET,
                I1=>CENNINETYNINE,
                O=>CLKENSEC0);
   
   XLXI_3813 : OR2
      port map (I0=>ZEROMIN,
                I1=>S2,
                O=>LDMIN);
   
   XLXI_3818 : OR2
      port map (I0=>XLXN_17406,
                I1=>S3,
                O=>LDHR);
   
   XLXI_3967 : AND4B2
      port map (I0=>HL_DUMMY(1),
                I1=>HL_DUMMY(2),
                I2=>HL_DUMMY(3),
                I3=>HL_DUMMY(0),
                O=>HRNINE);
   
   XLXI_3995 : AND2
      port map (I0=>SET3,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_13446);
   
   XLXI_3996 : AND2
      port map (I0=>SET2,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_18079);
   
   XLXI_3997 : AND2
      port map (I0=>SET1,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_18080);
   
   XLXI_3998 : AND2
      port map (I0=>SET0,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_13451);
   
   XLXI_4003 : AND2
      port map (I0=>SET7,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_13450);
   
   XLXI_4004 : AND2
      port map (I0=>SET6,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_18102);
   
   XLXI_4005 : AND2
      port map (I0=>SET5,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_18105);
   
   XLXI_4006 : AND2
      port map (I0=>SET4,
                I1=>SETHOURS_DUMMY,
                O=>XLXN_13447);
   
   XLXI_4031 : BUF
      port map (I=>S0,
                O=>RESET);
   
   XLXI_4083 : OR2
      port map (I0=>S4,
                I1=>S0,
                O=>XLXN_21821);
   
   XLXI_4088 : OR2
      port map (I0=>S6,
                I1=>S4,
                O=>XLXN_21851);
   
   XLXI_4108 : AND2
      port map (I0=>XLXN_18385,
                I1=>SETMIN,
                O=>MINUTESSET);
   
   XLXI_4248 : AND4B2
      port map (I0=>CEN_DUMMY(2),
                I1=>CEN_DUMMY(1),
                I2=>CEN_DUMMY(3),
                I3=>CEN_DUMMY(0),
                O=>CENNINE);
   
   XLXI_4254 : CD4CE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENCEN0,
                CLR=>XLXN_19489,
                CEO=>open,
                Q0=>CEN_DUMMY(0),
                Q1=>CEN_DUMMY(1),
                Q2=>CEN_DUMMY(2),
                Q3=>CEN_DUMMY(3),
                TC=>open);
   
   XLXI_4256 : CD4CE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENCEN1,
                CLR=>XLXN_19485,
                CEO=>open,
                Q0=>CEN_DUMMY(4),
                Q1=>CEN_DUMMY(5),
                Q2=>CEN_DUMMY(6),
                Q3=>CEN_DUMMY(7),
                TC=>open);
   
   XLXI_4258 : AND5B2
      port map (I0=>CEN_DUMMY(6),
                I1=>CEN_DUMMY(5),
                I2=>CEN_DUMMY(7),
                I3=>CEN_DUMMY(4),
                I4=>CENNINE,
                O=>CENNINETYNINE);
   
   XLXI_4311 : AND2B1
      port map (I0=>SET,
                I1=>CENNINE,
                O=>CLKENCEN1);
   
   XLXI_4339 : AND3B1
      port map (I0=>SET,
                I1=>SECFIFTYNINE,
                I2=>CENNINETYNINE,
                O=>ZEROSEC);
   
   XLXI_4359 : OR2
      port map (I0=>RESET,
                I1=>SET,
                O=>XLXN_19489);
   
   XLXI_4360 : OR2
      port map (I0=>RESET,
                I1=>SET,
                O=>XLXN_19485);
   
   XLXI_4639 : OR2
      port map (I0=>RESET,
                I1=>XLXN_20635,
                O=>RESETTIMER);
   
   XLXI_4640 : AND2
      port map (I0=>S4,
                I1=>TIMER,
                O=>XLXN_20635);
   
   XLXI_4655 : OR4
      port map (I0=>TIMERVAL,
                I1=>PAUSETIME,
                I2=>HOURSSET,
                I3=>MINUTESSET,
                O=>XLXN_17314);
   
   XLXI_4690 : AND2
      port map (I0=>XLXN_21870,
                I1=>SETHR,
                O=>HOURSSET);
   
   XLXI_4691 : AND2
      port map (I0=>XLXN_21876,
                I1=>SETSEC,
                O=>SECONDSSET);
   
   XLXI_4851 : AND4B2
      port map (I0=>TIMERHL_DUMMY(2),
                I1=>TIMERHL_DUMMY(1),
                I2=>TIMERHL_DUMMY(3),
                I3=>TIMERHL_DUMMY(0),
                O=>TIMERHRNINE);
   
   XLXI_4852 : AND4B2
      port map (I0=>TIMERCEN_DUMMY(2),
                I1=>TIMERCEN_DUMMY(1),
                I2=>TIMERCEN_DUMMY(3),
                I3=>TIMERCEN_DUMMY(0),
                O=>TIMERCENNINE);
   
   XLXI_4853 : AND5B2
      port map (I0=>TIMERCEN_DUMMY(6),
                I1=>TIMERCEN_DUMMY(5),
                I2=>TIMERCEN_DUMMY(7),
                I3=>TIMERCEN_DUMMY(4),
                I4=>TIMERCENNINE,
                O=>TIMERCENNINETYNINE);
   
   XLXI_4854 : CD4CE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERCEN0,
                CLR=>RESETTIMER,
                CEO=>open,
                Q0=>TIMERCEN_DUMMY(0),
                Q1=>TIMERCEN_DUMMY(1),
                Q2=>TIMERCEN_DUMMY(2),
                Q3=>TIMERCEN_DUMMY(3),
                TC=>open);
   
   XLXI_4855 : CD4CE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERCEN1,
                CLR=>RESETTIMER,
                CEO=>open,
                Q0=>TIMERCEN_DUMMY(4),
                Q1=>TIMERCEN_DUMMY(5),
                Q2=>TIMERCEN_DUMMY(6),
                Q3=>TIMERCEN_DUMMY(7),
                TC=>open);
   
   XLXI_4867 : AND4B1
      port map (I0=>TIMERSL_DUMMY(5),
                I1=>TIMERSL_DUMMY(6),
                I2=>TIMERSL_DUMMY(4),
                I3=>TIMERSECNINE,
                O=>TIMERSECFIFTYNINE);
   
   XLXI_4868 : AND4B2
      port map (I0=>TIMERSL_DUMMY(2),
                I1=>TIMERSL_DUMMY(1),
                I2=>TIMERSL_DUMMY(3),
                I3=>TIMERSL_DUMMY(0),
                O=>TIMERSECNINE);
   
   XLXI_4880 : AND4B2
      port map (I0=>TIMERML_DUMMY(2),
                I1=>TIMERML_DUMMY(1),
                I2=>TIMERML_DUMMY(3),
                I3=>TIMERML_DUMMY(0),
                O=>TIMERMINNINE);
   
   XLXI_4881 : AND4B1
      port map (I0=>TIMERML_DUMMY(5),
                I1=>TIMERML_DUMMY(6),
                I2=>TIMERML_DUMMY(4),
                I3=>TIMERMINNINE,
                O=>TIMERMINFIFTYNINE);
   
   XLXI_4941 : OR3
      port map (I0=>S4,
                I1=>S5,
                I2=>S7,
                O=>XLXN_21833);
   
   XLXI_4942 : OR2
      port map (I0=>S1,
                I1=>S4,
                O=>XLXN_18385);
   
   XLXI_4943 : OR2
      port map (I0=>S2,
                I1=>S4,
                O=>XLXN_21870);
   
   XLXI_4945 : OR2
      port map (I0=>S0,
                I1=>S4,
                O=>XLXN_21876);
   
   XLXI_4946 : OR7_HXILINX_clockblock
      port map (I0=>TIMESHOWN,
                I1=>TIME,
                I2=>PAUSETIME,
                I3=>TIMERVAL,
                I4=>MINUTESSET,
                I5=>HOURSSET,
                I6=>SECONDSSET,
                O=>CLKEN);
   
   XLXI_4962 : OR4
      port map (I0=>TIMERVAL,
                I1=>TIME,
                I2=>HOURSSET,
                I3=>SECONDSSET,
                O=>XLXN_18201);
   
   XLXI_4963 : OR4
      port map (I0=>TIMERVAL,
                I1=>PAUSETIME,
                I2=>TIME,
                I3=>TIMESHOWN,
                O=>XLXN_20683);
   
   XLXI_4964 : OR3
      port map (I0=>S7,
                I1=>S6,
                I2=>S5,
                O=>SHOWTIMER);
   
   XLXI_5052 : OR5
      port map (I0=>S4,
                I1=>S3,
                I2=>S2,
                I3=>S1,
                I4=>S0,
                O=>MODECLK);
   
   XLXI_5053 : OR3
      port map (I0=>S7,
                I1=>S6,
                I2=>S5,
                O=>MODETIME_DUMMY);
   
   XLXI_5057 : BUF
      port map (I=>ZEROSEC,
                O=>CLKENMIN0);
   
   XLXI_5058 : BUF
      port map (I=>ZEROMIN,
                O=>CLKENHR0);
   
   XLXI_5121 : AND2B1
      port map (I0=>S6,
                I1=>MODETIME_DUMMY,
                O=>CLKENTIMERCEN0);
   
   XLXI_5122 : AND2
      port map (I0=>TIMERCENNINE,
                I1=>CLKENTIMERCEN0,
                O=>CLKENTIMERCEN1);
   
   XLXI_5123 : AND2
      port map (I0=>TIMERCENNINETYNINE,
                I1=>CLKENTIMERCEN0,
                O=>CLKENTIMERSEC0);
   
   XLXI_5130 : BUF
      port map (I=>LDTIMERSEC,
                O=>CLKENTIMERMIN0);
   
   XLXI_5149 : BUF
      port map (I=>LDTIMERMIN,
                O=>CLKENTIMERHR0);
   
   XLXI_5150 : AND2
      port map (I0=>CLKENTIMERHR0,
                I1=>TIMERHRNINE,
                O=>CLKENTIMERHR1);
   
   XLXI_5151 : AND2
      port map (I0=>TIMERSECNINE,
                I1=>CLKENTIMERSEC0,
                O=>CLKENTIMERSEC1);
   
   XLXI_5152 : AND2
      port map (I0=>TIMERSECFIFTYNINE,
                I1=>CLKENTIMERSEC0,
                O=>LDTIMERSEC);
   
   XLXI_5166 : AND2
      port map (I0=>TIMERMINNINE,
                I1=>CLKENTIMERMIN0,
                O=>CLKENTIMERMIN1);
   
   XLXI_5167 : AND2
      port map (I0=>TIMERMINFIFTYNINE,
                I1=>LDTIMERSEC,
                O=>LDTIMERMIN);
   
   XLXI_5171 : AND2
      port map (I0=>SECNINE,
                I1=>CLKENSEC0,
                O=>CLKENSEC1);
   
   XLXI_5172 : AND2
      port map (I0=>MINFIFTYNINE,
                I1=>ZEROSEC,
                O=>ZEROMIN);
   
   XLXI_5173 : AND2
      port map (I0=>MINNINE,
                I1=>CLKENMIN0,
                O=>CLKENMIN1);
   
   XLXI_5175 : AND2
      port map (I0=>HRTWENTYTHREE,
                I1=>ZEROMIN,
                O=>XLXN_17406);
   
   XLXI_5176 : AND2
      port map (I0=>HRNINE,
                I1=>CLKENHR0,
                O=>CLKENHR1);
   
   XLXI_5177 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERSEC0,
                CLR=>RESETTIMER,
                D0=>XLXN_22645,
                D1=>XLXN_22646,
                D2=>XLXN_22647,
                D3=>XLXN_22648,
                L=>LDTIMERSEC,
                CEO=>open,
                Q0=>TIMERSL_DUMMY(0),
                Q1=>TIMERSL_DUMMY(1),
                Q2=>TIMERSL_DUMMY(2),
                Q3=>TIMERSL_DUMMY(3),
                TC=>open);
   
   XLXI_5178 : GND
      port map (G=>XLXN_22645);
   
   XLXI_5179 : GND
      port map (G=>XLXN_22646);
   
   XLXI_5180 : GND
      port map (G=>XLXN_22647);
   
   XLXI_5181 : GND
      port map (G=>XLXN_22648);
   
   XLXI_5182 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERSEC1,
                CLR=>RESETTIMER,
                D0=>XLXN_22654,
                D1=>XLXN_22655,
                D2=>XLXN_22656,
                D3=>XLXN_22657,
                L=>LDTIMERSEC,
                CEO=>open,
                Q0=>TIMERSL_DUMMY(4),
                Q1=>TIMERSL_DUMMY(5),
                Q2=>TIMERSL_DUMMY(6),
                Q3=>TIMERSL_DUMMY(7),
                TC=>open);
   
   XLXI_5183 : GND
      port map (G=>XLXN_22654);
   
   XLXI_5184 : GND
      port map (G=>XLXN_22655);
   
   XLXI_5185 : GND
      port map (G=>XLXN_22656);
   
   XLXI_5186 : GND
      port map (G=>XLXN_22657);
   
   XLXI_5187 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERMIN0,
                CLR=>RESETTIMER,
                D0=>XLXN_22677,
                D1=>XLXN_22678,
                D2=>XLXN_22679,
                D3=>XLXN_22680,
                L=>LDTIMERMIN,
                CEO=>open,
                Q0=>TIMERML_DUMMY(0),
                Q1=>TIMERML_DUMMY(1),
                Q2=>TIMERML_DUMMY(2),
                Q3=>TIMERML_DUMMY(3),
                TC=>open);
   
   XLXI_5188 : GND
      port map (G=>XLXN_22677);
   
   XLXI_5189 : GND
      port map (G=>XLXN_22678);
   
   XLXI_5190 : GND
      port map (G=>XLXN_22679);
   
   XLXI_5191 : GND
      port map (G=>XLXN_22680);
   
   XLXI_5202 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERMIN1,
                CLR=>RESETTIMER,
                D0=>XLXN_22707,
                D1=>XLXN_22708,
                D2=>XLXN_22709,
                D3=>XLXN_22710,
                L=>LDTIMERMIN,
                CEO=>open,
                Q0=>TIMERML_DUMMY(4),
                Q1=>TIMERML_DUMMY(5),
                Q2=>TIMERML_DUMMY(6),
                Q3=>TIMERML_DUMMY(7),
                TC=>open);
   
   XLXI_5203 : GND
      port map (G=>XLXN_22707);
   
   XLXI_5204 : GND
      port map (G=>XLXN_22708);
   
   XLXI_5205 : GND
      port map (G=>XLXN_22709);
   
   XLXI_5206 : GND
      port map (G=>XLXN_22710);
   
   XLXI_5227 : CD4CE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERHR0,
                CLR=>RESETTIMER,
                CEO=>open,
                Q0=>TIMERHL_DUMMY(0),
                Q1=>TIMERHL_DUMMY(1),
                Q2=>TIMERHL_DUMMY(2),
                Q3=>TIMERHL_DUMMY(3),
                TC=>open);
   
   XLXI_5228 : CD4CE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENTIMERHR1,
                CLR=>RESETTIMER,
                CEO=>open,
                Q0=>TIMERHL_DUMMY(4),
                Q1=>TIMERHL_DUMMY(5),
                Q2=>TIMERHL_DUMMY(6),
                Q3=>TIMERHL_DUMMY(7),
                TC=>open);
   
   XLXI_5255 : OR6_HXILINX_clockblock
      port map (I0=>S1,
                I1=>S2,
                I2=>S3,
                I3=>S5,
                I4=>S6,
                I5=>S7,
                O=>XLXN_21780);
   
   XLXI_5429 : FREQDIV
      port map (ONEHUNDREDMEGAHERTZ=>CLOCKINP,
                RESET=>RST,
                FOURHERTZ=>FOURHERTZ,
                ONEHERTZ=>ONEHERTZ,
                ONEHUNDREDHERTZ=>ONEHUNDREDHERTZ);
   
   XLXI_5430 : D3_8E_HXILINX_clockblock
      port map (A0=>STR0_DUMMY,
                A1=>STR1_DUMMY,
                A2=>STR2_DUMMY,
                E=>XLXN_12183,
                D0=>S0,
                D1=>S1,
                D2=>S2,
                D3=>S3,
                D4=>S4,
                D5=>S5,
                D6=>S6,
                D7=>S7);
   
   XLXI_5432 : AND2
      port map (I0=>SET1,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_13671);
   
   XLXI_5433 : AND2
      port map (I0=>SET2,
                I1=>SETMINUTES_DUMMY,
                O=>XLXN_15410);
   
   XLXI_5434 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENMIN0,
                CLR=>RESET,
                D0=>XLXN_13672,
                D1=>XLXN_13671,
                D2=>XLXN_15410,
                D3=>XLXN_13669,
                L=>LDMIN,
                CEO=>open,
                Q0=>ML_DUMMY(0),
                Q1=>ML_DUMMY(1),
                Q2=>ML_DUMMY(2),
                Q3=>ML_DUMMY(3),
                TC=>open);
   
   XLXI_5435 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENHR0,
                CLR=>RESET,
                D0=>XLXN_13451,
                D1=>XLXN_18080,
                D2=>XLXN_18079,
                D3=>XLXN_13446,
                L=>LDHR,
                CEO=>open,
                Q0=>HL_DUMMY(0),
                Q1=>HL_DUMMY(1),
                Q2=>HL_DUMMY(2),
                Q3=>HL_DUMMY(3),
                TC=>open);
   
   XLXI_5436 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENSEC0,
                CLR=>RESET,
                D0=>XLXN_13600,
                D1=>XLXN_13601,
                D2=>XLXN_13602,
                D3=>XLXN_14325,
                L=>LDSEC,
                CEO=>open,
                Q0=>SL_DUMMY(0),
                Q1=>SL_DUMMY(1),
                Q2=>SL_DUMMY(2),
                Q3=>SL_DUMMY(3),
                TC=>open);
   
   XLXI_5437 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENSEC1,
                CLR=>RESET,
                D0=>XLXN_13329,
                D1=>XLXN_13330,
                D2=>XLXN_13331,
                D3=>XLXN_13332,
                L=>LDSEC,
                CEO=>open,
                Q0=>SL_DUMMY(4),
                Q1=>SL_DUMMY(5),
                Q2=>SL_DUMMY(6),
                Q3=>SL_DUMMY(7),
                TC=>open);
   
   XLXI_5438 : CD4CLE_HXILINX_clockblock
      port map (C=>ONEHUNDREDHERTZ,
                CE=>CLKENHR1,
                CLR=>RESET,
                D0=>XLXN_13447,
                D1=>XLXN_18105,
                D2=>XLXN_18102,
                D3=>XLXN_13450,
                L=>LDHR,
                CEO=>open,
                Q0=>HL_DUMMY(4),
                Q1=>HL_DUMMY(5),
                Q2=>HL_DUMMY(6),
                Q3=>HL_DUMMY(7),
                TC=>open);
   
end BEHAVIORAL;


