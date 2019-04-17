-- ==============================================================
-- File generated on Wed Apr 17 12:02:50 EDT 2019
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity PLRUCache_mux_83_24_2_1 is
generic (
    ID            :integer := 0;
    NUM_STAGE     :integer := 1;
    din0_WIDTH       :integer := 32;
    din1_WIDTH       :integer := 32;
    din2_WIDTH       :integer := 32;
    din3_WIDTH       :integer := 32;
    din4_WIDTH       :integer := 32;
    din5_WIDTH       :integer := 32;
    din6_WIDTH       :integer := 32;
    din7_WIDTH       :integer := 32;
    din8_WIDTH       :integer := 32;
    dout_WIDTH        :integer := 32);
port (
    clk    :in  std_logic;
    reset  :in  std_logic;
    ce     :in  std_logic;
    din0   :in  std_logic_vector(23 downto 0);
    din1   :in  std_logic_vector(23 downto 0);
    din2   :in  std_logic_vector(23 downto 0);
    din3   :in  std_logic_vector(23 downto 0);
    din4   :in  std_logic_vector(23 downto 0);
    din5   :in  std_logic_vector(23 downto 0);
    din6   :in  std_logic_vector(23 downto 0);
    din7   :in  std_logic_vector(23 downto 0);
    din8   :in  std_logic_vector(2 downto 0);
    dout     :out std_logic_vector(23 downto 0));
end entity;

architecture rtl of PLRUCache_mux_83_24_2_1 is
    -- puts internal signals
    signal sel    : std_logic_vector(2 downto 0);
    -- level 1 signals
    signal mux_1_0    : std_logic_vector(23 downto 0);
    signal mux_1_1    : std_logic_vector(23 downto 0);
    signal mux_1_2    : std_logic_vector(23 downto 0);
    signal mux_1_3    : std_logic_vector(23 downto 0);
    -- level 2 signals
    signal mux_2_0_reg    : std_logic_vector(23 downto 0);
    signal mux_2_1_reg    : std_logic_vector(23 downto 0);
    signal sel2   : std_logic_vector(2 downto 2);
    -- level 3 signals
    signal mux_3_0    : std_logic_vector(23 downto 0);
begin

sel <= din8;

-- Generate level 1 logic
mux_1_0 <= din0 when sel(0) = '0' else din1;
mux_1_1 <= din2 when sel(0) = '0' else din3;
mux_1_2 <= din4 when sel(0) = '0' else din5;
mux_1_3 <= din6 when sel(0) = '0' else din7;

-- Generate level 2 logic
process (clk)
begin
    if (clk'event and clk='1') then
        if (reset = '1') then
            sel2 <= (others => '0');
        elsif (ce = '1') then
            sel2 <= sel(2 downto 2);
        end if;
    end if;
end process;

process (clk)
begin
    if (clk'event and clk='1') then
        if (reset = '1') then
            mux_2_0_reg <= (others => '0');
        elsif (ce = '1') then
            if (sel(1) = '0') then
                mux_2_0_reg <= mux_1_0;
            else
                mux_2_0_reg <= mux_1_1;
            end if;
        end if;
    end if;
end process;

process (clk)
begin
    if (clk'event and clk='1') then
        if (reset = '1') then
            mux_2_1_reg <= (others => '0');
        elsif (ce = '1') then
            if (sel(1) = '0') then
                mux_2_1_reg <= mux_1_2;
            else
                mux_2_1_reg <= mux_1_3;
            end if;
        end if;
    end if;
end process;


-- Generate level 3 logic
mux_3_0 <= mux_2_0_reg when sel2(2) = '0' else mux_2_1_reg;

-- output logic
dout <= mux_3_0;

end architecture;
