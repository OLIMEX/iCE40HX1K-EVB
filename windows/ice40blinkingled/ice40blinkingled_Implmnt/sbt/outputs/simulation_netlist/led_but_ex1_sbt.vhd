-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2015.08.27744

-- Build Date:         Oct 14 2015 00:55:27

-- File Generated:     Jul 18 2016 09:41:18

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "led_but_ex1" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of led_but_ex1
entity led_but_ex1 is
port (
    LED2 : out std_logic;
    CLK : in std_logic;
    BUT1 : in std_logic;
    LED1 : out std_logic;
    BUT2 : in std_logic);
end led_but_ex1;

-- Architecture of led_but_ex1
-- View name is \INTERFACE\
architecture \INTERFACE\ of led_but_ex1 is

signal \N__2577\ : std_logic;
signal \N__2576\ : std_logic;
signal \N__2575\ : std_logic;
signal \N__2566\ : std_logic;
signal \N__2565\ : std_logic;
signal \N__2564\ : std_logic;
signal \N__2557\ : std_logic;
signal \N__2556\ : std_logic;
signal \N__2555\ : std_logic;
signal \N__2548\ : std_logic;
signal \N__2547\ : std_logic;
signal \N__2546\ : std_logic;
signal \N__2539\ : std_logic;
signal \N__2538\ : std_logic;
signal \N__2537\ : std_logic;
signal \N__2520\ : std_logic;
signal \N__2519\ : std_logic;
signal \N__2516\ : std_logic;
signal \N__2513\ : std_logic;
signal \N__2510\ : std_logic;
signal \N__2505\ : std_logic;
signal \N__2502\ : std_logic;
signal \N__2501\ : std_logic;
signal \N__2498\ : std_logic;
signal \N__2495\ : std_logic;
signal \N__2492\ : std_logic;
signal \N__2487\ : std_logic;
signal \N__2484\ : std_logic;
signal \N__2483\ : std_logic;
signal \N__2480\ : std_logic;
signal \N__2477\ : std_logic;
signal \N__2474\ : std_logic;
signal \N__2469\ : std_logic;
signal \N__2466\ : std_logic;
signal \N__2465\ : std_logic;
signal \N__2462\ : std_logic;
signal \N__2459\ : std_logic;
signal \N__2456\ : std_logic;
signal \N__2451\ : std_logic;
signal \N__2448\ : std_logic;
signal \N__2447\ : std_logic;
signal \N__2444\ : std_logic;
signal \N__2441\ : std_logic;
signal \N__2438\ : std_logic;
signal \N__2433\ : std_logic;
signal \N__2430\ : std_logic;
signal \N__2427\ : std_logic;
signal \N__2426\ : std_logic;
signal \N__2423\ : std_logic;
signal \N__2420\ : std_logic;
signal \N__2415\ : std_logic;
signal \N__2412\ : std_logic;
signal \N__2409\ : std_logic;
signal \N__2406\ : std_logic;
signal \N__2403\ : std_logic;
signal \N__2400\ : std_logic;
signal \N__2397\ : std_logic;
signal \N__2396\ : std_logic;
signal \N__2393\ : std_logic;
signal \N__2390\ : std_logic;
signal \N__2387\ : std_logic;
signal \N__2382\ : std_logic;
signal \N__2381\ : std_logic;
signal \N__2380\ : std_logic;
signal \N__2379\ : std_logic;
signal \N__2378\ : std_logic;
signal \N__2377\ : std_logic;
signal \N__2376\ : std_logic;
signal \N__2375\ : std_logic;
signal \N__2374\ : std_logic;
signal \N__2373\ : std_logic;
signal \N__2372\ : std_logic;
signal \N__2371\ : std_logic;
signal \N__2370\ : std_logic;
signal \N__2369\ : std_logic;
signal \N__2368\ : std_logic;
signal \N__2337\ : std_logic;
signal \N__2334\ : std_logic;
signal \N__2331\ : std_logic;
signal \N__2330\ : std_logic;
signal \N__2329\ : std_logic;
signal \N__2328\ : std_logic;
signal \N__2327\ : std_logic;
signal \N__2326\ : std_logic;
signal \N__2325\ : std_logic;
signal \N__2324\ : std_logic;
signal \N__2323\ : std_logic;
signal \N__2322\ : std_logic;
signal \N__2321\ : std_logic;
signal \N__2320\ : std_logic;
signal \N__2319\ : std_logic;
signal \N__2318\ : std_logic;
signal \N__2317\ : std_logic;
signal \N__2316\ : std_logic;
signal \N__2315\ : std_logic;
signal \N__2314\ : std_logic;
signal \N__2305\ : std_logic;
signal \N__2298\ : std_logic;
signal \N__2289\ : std_logic;
signal \N__2282\ : std_logic;
signal \N__2277\ : std_logic;
signal \N__2272\ : std_logic;
signal \N__2271\ : std_logic;
signal \N__2270\ : std_logic;
signal \N__2269\ : std_logic;
signal \N__2268\ : std_logic;
signal \N__2267\ : std_logic;
signal \N__2266\ : std_logic;
signal \N__2263\ : std_logic;
signal \N__2260\ : std_logic;
signal \N__2257\ : std_logic;
signal \N__2254\ : std_logic;
signal \N__2251\ : std_logic;
signal \N__2248\ : std_logic;
signal \N__2223\ : std_logic;
signal \N__2220\ : std_logic;
signal \N__2217\ : std_logic;
signal \N__2214\ : std_logic;
signal \N__2211\ : std_logic;
signal \N__2210\ : std_logic;
signal \N__2207\ : std_logic;
signal \N__2204\ : std_logic;
signal \N__2201\ : std_logic;
signal \N__2196\ : std_logic;
signal \N__2193\ : std_logic;
signal \N__2192\ : std_logic;
signal \N__2189\ : std_logic;
signal \N__2186\ : std_logic;
signal \N__2181\ : std_logic;
signal \N__2178\ : std_logic;
signal \N__2175\ : std_logic;
signal \N__2172\ : std_logic;
signal \N__2169\ : std_logic;
signal \N__2166\ : std_logic;
signal \N__2163\ : std_logic;
signal \N__2160\ : std_logic;
signal \N__2157\ : std_logic;
signal \N__2154\ : std_logic;
signal \N__2151\ : std_logic;
signal \N__2148\ : std_logic;
signal \N__2147\ : std_logic;
signal \N__2144\ : std_logic;
signal \N__2141\ : std_logic;
signal \N__2138\ : std_logic;
signal \N__2133\ : std_logic;
signal \N__2132\ : std_logic;
signal \N__2131\ : std_logic;
signal \N__2128\ : std_logic;
signal \N__2125\ : std_logic;
signal \N__2122\ : std_logic;
signal \N__2115\ : std_logic;
signal \N__2114\ : std_logic;
signal \N__2113\ : std_logic;
signal \N__2112\ : std_logic;
signal \N__2109\ : std_logic;
signal \N__2106\ : std_logic;
signal \N__2101\ : std_logic;
signal \N__2098\ : std_logic;
signal \N__2095\ : std_logic;
signal \N__2088\ : std_logic;
signal \N__2087\ : std_logic;
signal \N__2084\ : std_logic;
signal \N__2081\ : std_logic;
signal \N__2078\ : std_logic;
signal \N__2073\ : std_logic;
signal \N__2070\ : std_logic;
signal \N__2069\ : std_logic;
signal \N__2066\ : std_logic;
signal \N__2063\ : std_logic;
signal \N__2060\ : std_logic;
signal \N__2055\ : std_logic;
signal \N__2052\ : std_logic;
signal \N__2051\ : std_logic;
signal \N__2048\ : std_logic;
signal \N__2045\ : std_logic;
signal \N__2042\ : std_logic;
signal \N__2037\ : std_logic;
signal \N__2034\ : std_logic;
signal \N__2031\ : std_logic;
signal \N__2028\ : std_logic;
signal \N__2025\ : std_logic;
signal \N__2024\ : std_logic;
signal \N__2021\ : std_logic;
signal \N__2018\ : std_logic;
signal \N__2013\ : std_logic;
signal \N__2010\ : std_logic;
signal \N__2009\ : std_logic;
signal \N__2008\ : std_logic;
signal \N__2005\ : std_logic;
signal \N__2000\ : std_logic;
signal \N__1995\ : std_logic;
signal \N__1992\ : std_logic;
signal \N__1989\ : std_logic;
signal \N__1986\ : std_logic;
signal \N__1983\ : std_logic;
signal \N__1982\ : std_logic;
signal \N__1981\ : std_logic;
signal \N__1980\ : std_logic;
signal \N__1977\ : std_logic;
signal \N__1974\ : std_logic;
signal \N__1971\ : std_logic;
signal \N__1968\ : std_logic;
signal \N__1959\ : std_logic;
signal \N__1956\ : std_logic;
signal \N__1955\ : std_logic;
signal \N__1952\ : std_logic;
signal \N__1949\ : std_logic;
signal \N__1944\ : std_logic;
signal \N__1941\ : std_logic;
signal \N__1938\ : std_logic;
signal \N__1935\ : std_logic;
signal \N__1932\ : std_logic;
signal \N__1929\ : std_logic;
signal \N__1928\ : std_logic;
signal \N__1923\ : std_logic;
signal \N__1920\ : std_logic;
signal \N__1917\ : std_logic;
signal \N__1916\ : std_logic;
signal \N__1913\ : std_logic;
signal \N__1910\ : std_logic;
signal \N__1905\ : std_logic;
signal \N__1902\ : std_logic;
signal \N__1901\ : std_logic;
signal \N__1898\ : std_logic;
signal \N__1895\ : std_logic;
signal \N__1890\ : std_logic;
signal \N__1887\ : std_logic;
signal \N__1884\ : std_logic;
signal \N__1881\ : std_logic;
signal \N__1878\ : std_logic;
signal \N__1875\ : std_logic;
signal \N__1872\ : std_logic;
signal \N__1869\ : std_logic;
signal \N__1866\ : std_logic;
signal \N__1863\ : std_logic;
signal \N__1860\ : std_logic;
signal \N__1857\ : std_logic;
signal \N__1854\ : std_logic;
signal \N__1851\ : std_logic;
signal \N__1848\ : std_logic;
signal \N__1845\ : std_logic;
signal \N__1842\ : std_logic;
signal \N__1839\ : std_logic;
signal \N__1836\ : std_logic;
signal \N__1833\ : std_logic;
signal \N__1830\ : std_logic;
signal \N__1827\ : std_logic;
signal \N__1824\ : std_logic;
signal \N__1821\ : std_logic;
signal \N__1818\ : std_logic;
signal \N__1815\ : std_logic;
signal \N__1812\ : std_logic;
signal \N__1809\ : std_logic;
signal \N__1806\ : std_logic;
signal \N__1803\ : std_logic;
signal \N__1800\ : std_logic;
signal \N__1797\ : std_logic;
signal \N__1796\ : std_logic;
signal \N__1793\ : std_logic;
signal \N__1790\ : std_logic;
signal \N__1789\ : std_logic;
signal \N__1784\ : std_logic;
signal \N__1781\ : std_logic;
signal \N__1778\ : std_logic;
signal \N__1773\ : std_logic;
signal \N__1770\ : std_logic;
signal \N__1767\ : std_logic;
signal \N__1766\ : std_logic;
signal \N__1765\ : std_logic;
signal \N__1762\ : std_logic;
signal \N__1759\ : std_logic;
signal \N__1756\ : std_logic;
signal \N__1749\ : std_logic;
signal \N__1748\ : std_logic;
signal \N__1745\ : std_logic;
signal \N__1744\ : std_logic;
signal \N__1743\ : std_logic;
signal \N__1742\ : std_logic;
signal \N__1741\ : std_logic;
signal \N__1738\ : std_logic;
signal \N__1737\ : std_logic;
signal \N__1736\ : std_logic;
signal \N__1735\ : std_logic;
signal \N__1734\ : std_logic;
signal \N__1733\ : std_logic;
signal \N__1730\ : std_logic;
signal \N__1725\ : std_logic;
signal \N__1722\ : std_logic;
signal \N__1719\ : std_logic;
signal \N__1714\ : std_logic;
signal \N__1709\ : std_logic;
signal \N__1704\ : std_logic;
signal \N__1697\ : std_logic;
signal \N__1694\ : std_logic;
signal \N__1683\ : std_logic;
signal \N__1680\ : std_logic;
signal \N__1677\ : std_logic;
signal \N__1676\ : std_logic;
signal \N__1675\ : std_logic;
signal \N__1672\ : std_logic;
signal \N__1671\ : std_logic;
signal \N__1668\ : std_logic;
signal \N__1665\ : std_logic;
signal \N__1664\ : std_logic;
signal \N__1663\ : std_logic;
signal \N__1662\ : std_logic;
signal \N__1655\ : std_logic;
signal \N__1652\ : std_logic;
signal \N__1649\ : std_logic;
signal \N__1646\ : std_logic;
signal \N__1645\ : std_logic;
signal \N__1642\ : std_logic;
signal \N__1641\ : std_logic;
signal \N__1636\ : std_logic;
signal \N__1627\ : std_logic;
signal \N__1624\ : std_logic;
signal \N__1621\ : std_logic;
signal \N__1614\ : std_logic;
signal \N__1611\ : std_logic;
signal \N__1610\ : std_logic;
signal \N__1609\ : std_logic;
signal \N__1608\ : std_logic;
signal \N__1607\ : std_logic;
signal \N__1606\ : std_logic;
signal \N__1605\ : std_logic;
signal \N__1604\ : std_logic;
signal \N__1603\ : std_logic;
signal \N__1600\ : std_logic;
signal \N__1593\ : std_logic;
signal \N__1584\ : std_logic;
signal \N__1581\ : std_logic;
signal \N__1572\ : std_logic;
signal \N__1571\ : std_logic;
signal \N__1570\ : std_logic;
signal \N__1567\ : std_logic;
signal \N__1562\ : std_logic;
signal \N__1557\ : std_logic;
signal \N__1556\ : std_logic;
signal \N__1553\ : std_logic;
signal \N__1550\ : std_logic;
signal \N__1547\ : std_logic;
signal \N__1542\ : std_logic;
signal \N__1539\ : std_logic;
signal \N__1536\ : std_logic;
signal \N__1533\ : std_logic;
signal \N__1530\ : std_logic;
signal \N__1527\ : std_logic;
signal \N__1524\ : std_logic;
signal \N__1521\ : std_logic;
signal \N__1518\ : std_logic;
signal \N__1515\ : std_logic;
signal \N__1512\ : std_logic;
signal \N__1509\ : std_logic;
signal \N__1506\ : std_logic;
signal \N__1503\ : std_logic;
signal \N__1500\ : std_logic;
signal \N__1497\ : std_logic;
signal \N__1496\ : std_logic;
signal \N__1495\ : std_logic;
signal \N__1492\ : std_logic;
signal \N__1487\ : std_logic;
signal \N__1482\ : std_logic;
signal \N__1479\ : std_logic;
signal \N__1476\ : std_logic;
signal \N__1473\ : std_logic;
signal \N__1470\ : std_logic;
signal \N__1467\ : std_logic;
signal \N__1464\ : std_logic;
signal \N__1461\ : std_logic;
signal \N__1460\ : std_logic;
signal \N__1457\ : std_logic;
signal \N__1454\ : std_logic;
signal \N__1451\ : std_logic;
signal \N__1446\ : std_logic;
signal \N__1445\ : std_logic;
signal \N__1442\ : std_logic;
signal \N__1439\ : std_logic;
signal \N__1436\ : std_logic;
signal \N__1431\ : std_logic;
signal \N__1430\ : std_logic;
signal \N__1427\ : std_logic;
signal \N__1424\ : std_logic;
signal \N__1419\ : std_logic;
signal \N__1418\ : std_logic;
signal \N__1417\ : std_logic;
signal \N__1414\ : std_logic;
signal \N__1409\ : std_logic;
signal \N__1404\ : std_logic;
signal \N__1403\ : std_logic;
signal \N__1402\ : std_logic;
signal \N__1401\ : std_logic;
signal \N__1398\ : std_logic;
signal \N__1395\ : std_logic;
signal \N__1390\ : std_logic;
signal \N__1383\ : std_logic;
signal \N__1382\ : std_logic;
signal \N__1379\ : std_logic;
signal \N__1378\ : std_logic;
signal \N__1377\ : std_logic;
signal \N__1372\ : std_logic;
signal \N__1369\ : std_logic;
signal \N__1366\ : std_logic;
signal \N__1363\ : std_logic;
signal \N__1356\ : std_logic;
signal \N__1355\ : std_logic;
signal \N__1354\ : std_logic;
signal \N__1351\ : std_logic;
signal \N__1346\ : std_logic;
signal \N__1341\ : std_logic;
signal \N__1338\ : std_logic;
signal \N__1335\ : std_logic;
signal \N__1332\ : std_logic;
signal \N__1329\ : std_logic;
signal \N__1328\ : std_logic;
signal \N__1327\ : std_logic;
signal \N__1324\ : std_logic;
signal \N__1319\ : std_logic;
signal \N__1314\ : std_logic;
signal \N__1313\ : std_logic;
signal \N__1312\ : std_logic;
signal \N__1311\ : std_logic;
signal \N__1306\ : std_logic;
signal \N__1303\ : std_logic;
signal \N__1300\ : std_logic;
signal \N__1293\ : std_logic;
signal \N__1292\ : std_logic;
signal \N__1289\ : std_logic;
signal \N__1288\ : std_logic;
signal \N__1285\ : std_logic;
signal \N__1282\ : std_logic;
signal \N__1279\ : std_logic;
signal \N__1272\ : std_logic;
signal \N__1269\ : std_logic;
signal \N__1266\ : std_logic;
signal \N__1263\ : std_logic;
signal \N__1260\ : std_logic;
signal \N__1257\ : std_logic;
signal \N__1256\ : std_logic;
signal \N__1251\ : std_logic;
signal \N__1248\ : std_logic;
signal \N__1245\ : std_logic;
signal \N__1242\ : std_logic;
signal \N__1239\ : std_logic;
signal \N__1236\ : std_logic;
signal \N__1233\ : std_logic;
signal \N__1230\ : std_logic;
signal \N__1227\ : std_logic;
signal \N__1224\ : std_logic;
signal \N__1221\ : std_logic;
signal \N__1218\ : std_logic;
signal \N__1215\ : std_logic;
signal \N__1212\ : std_logic;
signal \N__1209\ : std_logic;
signal \N__1206\ : std_logic;
signal \N__1203\ : std_logic;
signal \N__1200\ : std_logic;
signal \N__1197\ : std_logic;
signal \N__1194\ : std_logic;
signal \N__1191\ : std_logic;
signal \N__1188\ : std_logic;
signal \VCCG0\ : std_logic;
signal \bfn_1_4_0_\ : std_logic;
signal cntr_1_cry_1 : std_logic;
signal cntr_1_cry_2 : std_logic;
signal cntr_1_cry_3 : std_logic;
signal cntr_1_5 : std_logic;
signal cntr_1_cry_4 : std_logic;
signal cntr_1_6 : std_logic;
signal cntr_1_cry_5 : std_logic;
signal cntr_1_cry_6 : std_logic;
signal cntr_1_8 : std_logic;
signal cntr_1_cry_7 : std_logic;
signal cntr_1_cry_8 : std_logic;
signal \bfn_1_5_0_\ : std_logic;
signal cntr_1_cry_9 : std_logic;
signal cntr_1_cry_10 : std_logic;
signal cntr_1_cry_11 : std_logic;
signal cntr_1_cry_12 : std_logic;
signal cntr_1_cry_13 : std_logic;
signal \clk_div_RNIM1KP1Z0Z_11\ : std_logic;
signal \BUT1_r_RNIKV9MZ0Z2_cascade_\ : std_logic;
signal \cntr_RNITQ4V2Z0Z_14\ : std_logic;
signal \LED1_m1_r_cnv_7_cascade_\ : std_logic;
signal \cntr_RNIV9NN2Z0Z_4\ : std_logic;
signal \cntr7lto7_0_4_cascade_\ : std_logic;
signal \cntrZ0Z_8\ : std_logic;
signal \LED1_m1_r_cnv_5\ : std_logic;
signal \LED1_m1_r_cnv_6\ : std_logic;
signal cntr7lto7_0_2 : std_logic;
signal \cntrZ0Z_2\ : std_logic;
signal \cntrZ0Z_3\ : std_logic;
signal cntr7lt5_3 : std_logic;
signal \cntrZ0Z_6\ : std_logic;
signal \cntrZ0Z_5\ : std_logic;
signal \cntrZ0Z_7\ : std_logic;
signal \cntrZ0Z_4\ : std_logic;
signal cntr7lto7_c : std_logic;
signal cntr_1_10 : std_logic;
signal \cntrZ0Z_10\ : std_logic;
signal \cntrZ0Z_0\ : std_logic;
signal \cntrZ0Z_1\ : std_logic;
signal cntr_1_9 : std_logic;
signal \cntrZ0Z_9\ : std_logic;
signal cntr_1_11 : std_logic;
signal \cntrZ0Z_11\ : std_logic;
signal \cntrZ0Z_13\ : std_logic;
signal cntr_1_12 : std_logic;
signal \cntrZ0Z_14\ : std_logic;
signal cntr7lt13 : std_logic;
signal \cntrZ0Z_12\ : std_logic;
signal rst_cnt_i_14 : std_logic;
signal \rst_cntZ0Z_0\ : std_logic;
signal \bfn_2_7_0_\ : std_logic;
signal \rst_cntZ0Z_1\ : std_logic;
signal un1_rst_cnt_1_cry_0 : std_logic;
signal \rst_cntZ0Z_2\ : std_logic;
signal un1_rst_cnt_1_cry_1 : std_logic;
signal \rst_cntZ0Z_3\ : std_logic;
signal un1_rst_cnt_1_cry_2 : std_logic;
signal \rst_cntZ0Z_4\ : std_logic;
signal un1_rst_cnt_1_cry_3 : std_logic;
signal \rst_cntZ0Z_5\ : std_logic;
signal un1_rst_cnt_1_cry_4 : std_logic;
signal \rst_cntZ0Z_6\ : std_logic;
signal un1_rst_cnt_1_cry_5 : std_logic;
signal \rst_cntZ0Z_7\ : std_logic;
signal un1_rst_cnt_1_cry_6 : std_logic;
signal un1_rst_cnt_1_cry_7 : std_logic;
signal \rst_cntZ0Z_8\ : std_logic;
signal \bfn_2_8_0_\ : std_logic;
signal \rst_cntZ0Z_9\ : std_logic;
signal un1_rst_cnt_1_cry_8 : std_logic;
signal \rst_cntZ0Z_10\ : std_logic;
signal un1_rst_cnt_1_cry_9 : std_logic;
signal \rst_cntZ0Z_11\ : std_logic;
signal un1_rst_cnt_1_cry_10 : std_logic;
signal \rst_cntZ0Z_12\ : std_logic;
signal un1_rst_cnt_1_cry_11 : std_logic;
signal \rst_cntZ0Z_13\ : std_logic;
signal un1_rst_cnt_1_cry_12 : std_logic;
signal un1_rst_cnt_1_cry_13 : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \GNDG0\ : std_logic;
signal \un1_rst_cnt_1_cry_13_THRU_CRY_0_THRU_CO\ : std_logic;
signal \un1_rst_cnt_1_cry_13_THRU_CRY_1_THRU_CO\ : std_logic;
signal \bfn_2_9_0_\ : std_logic;
signal \rst_cntZ0Z_14\ : std_logic;
signal \N_16_0\ : std_logic;
signal \BUT1_r_RNIKV9MZ0Z2\ : std_logic;
signal \LED2_m1_rZ0\ : std_logic;
signal \LED2_c\ : std_logic;
signal \modeZ0\ : std_logic;
signal \LED1_m1_rZ0\ : std_logic;
signal \LED1_c\ : std_logic;
signal \bfn_4_7_0_\ : std_logic;
signal clk_div_2_cry_1 : std_logic;
signal clk_div_2_cry_2 : std_logic;
signal clk_div_2_cry_3 : std_logic;
signal clk_div_2_cry_4 : std_logic;
signal clk_div_2_cry_5 : std_logic;
signal clk_div_2_cry_6 : std_logic;
signal clk_div_2_cry_7 : std_logic;
signal clk_div_2_cry_8 : std_logic;
signal \bfn_4_8_0_\ : std_logic;
signal clk_div_2_cry_9 : std_logic;
signal clk_div_2_cry_10 : std_logic;
signal \clk_div_RNI06L91Z0Z_11\ : std_logic;
signal clk_div_i_11 : std_logic;
signal \LED1_m0_rZ0\ : std_logic;
signal \LED2_m0_rZ0\ : std_logic;
signal \BUT2_c\ : std_logic;
signal \BUT2_rZ0\ : std_logic;
signal \clk_divZ0Z_1\ : std_logic;
signal \clk_divZ0Z_0\ : std_logic;
signal \bfn_5_7_0_\ : std_logic;
signal \clk_divZ0Z_2\ : std_logic;
signal clk_div_1_cry_1 : std_logic;
signal \clk_divZ0Z_3\ : std_logic;
signal clk_div_1_cry_2 : std_logic;
signal \clk_divZ0Z_4\ : std_logic;
signal clk_div_1_cry_3 : std_logic;
signal \clk_divZ0Z_5\ : std_logic;
signal clk_div_1_cry_4 : std_logic;
signal \clk_divZ0Z_6\ : std_logic;
signal clk_div_1_cry_5 : std_logic;
signal \clk_divZ0Z_7\ : std_logic;
signal clk_div_1_cry_6 : std_logic;
signal \clk_divZ0Z_8\ : std_logic;
signal clk_div_1_cry_7 : std_logic;
signal clk_div_1_cry_8 : std_logic;
signal \clk_divZ0Z_9\ : std_logic;
signal \bfn_5_8_0_\ : std_logic;
signal clk_div_1_cry_9 : std_logic;
signal \clk_divZ0Z_10\ : std_logic;
signal \BUT1_c\ : std_logic;
signal \BUT1_rZ0\ : std_logic;
signal \CLK_c_g\ : std_logic;
signal \N_16_g\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \CLK_wire\ : std_logic;
signal \BUT2_wire\ : std_logic;
signal \BUT1_wire\ : std_logic;
signal \LED1_wire\ : std_logic;
signal \LED2_wire\ : std_logic;

begin
    \CLK_wire\ <= CLK;
    \BUT2_wire\ <= BUT2;
    \BUT1_wire\ <= BUT1;
    LED1 <= \LED1_wire\;
    LED2 <= \LED2_wire\;

    \CLK_ibuf_gb_io_preiogbuf\ : PRE_IO_GBUF
    port map (
            PADSIGNALTOGLOBALBUFFER => \N__2575\,
            GLOBALBUFFEROUTPUT => \CLK_c_g\
        );

    \CLK_ibuf_gb_io_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2577\,
            DIN => \N__2576\,
            DOUT => \N__2575\,
            PACKAGEPIN => \CLK_wire\
        );

    \CLK_ibuf_gb_io_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__2577\,
            PADOUT => \N__2576\,
            PADIN => \N__2575\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \BUT2_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2566\,
            DIN => \N__2565\,
            DOUT => \N__2564\,
            PACKAGEPIN => \BUT2_wire\
        );

    \BUT2_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__2566\,
            PADOUT => \N__2565\,
            PADIN => \N__2564\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \BUT2_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \BUT1_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2557\,
            DIN => \N__2556\,
            DOUT => \N__2555\,
            PACKAGEPIN => \BUT1_wire\
        );

    \BUT1_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__2557\,
            PADOUT => \N__2556\,
            PADIN => \N__2555\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \BUT1_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \LED1_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2548\,
            DIN => \N__2547\,
            DOUT => \N__2546\,
            PACKAGEPIN => \LED1_wire\
        );

    \LED1_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__2548\,
            PADOUT => \N__2547\,
            PADIN => \N__2546\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__1890\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \LED2_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2539\,
            DIN => \N__2538\,
            DOUT => \N__2537\,
            PACKAGEPIN => \LED2_wire\
        );

    \LED2_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__2539\,
            PADOUT => \N__2538\,
            PADIN => \N__2537\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__1944\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__550\ : CascadeMux
    port map (
            O => \N__2520\,
            I => \N__2516\
        );

    \I__549\ : InMux
    port map (
            O => \N__2519\,
            I => \N__2513\
        );

    \I__548\ : InMux
    port map (
            O => \N__2516\,
            I => \N__2510\
        );

    \I__547\ : LocalMux
    port map (
            O => \N__2513\,
            I => \clk_divZ0Z_5\
        );

    \I__546\ : LocalMux
    port map (
            O => \N__2510\,
            I => \clk_divZ0Z_5\
        );

    \I__545\ : InMux
    port map (
            O => \N__2505\,
            I => clk_div_1_cry_4
        );

    \I__544\ : CascadeMux
    port map (
            O => \N__2502\,
            I => \N__2498\
        );

    \I__543\ : InMux
    port map (
            O => \N__2501\,
            I => \N__2495\
        );

    \I__542\ : InMux
    port map (
            O => \N__2498\,
            I => \N__2492\
        );

    \I__541\ : LocalMux
    port map (
            O => \N__2495\,
            I => \clk_divZ0Z_6\
        );

    \I__540\ : LocalMux
    port map (
            O => \N__2492\,
            I => \clk_divZ0Z_6\
        );

    \I__539\ : InMux
    port map (
            O => \N__2487\,
            I => clk_div_1_cry_5
        );

    \I__538\ : CascadeMux
    port map (
            O => \N__2484\,
            I => \N__2480\
        );

    \I__537\ : InMux
    port map (
            O => \N__2483\,
            I => \N__2477\
        );

    \I__536\ : InMux
    port map (
            O => \N__2480\,
            I => \N__2474\
        );

    \I__535\ : LocalMux
    port map (
            O => \N__2477\,
            I => \clk_divZ0Z_7\
        );

    \I__534\ : LocalMux
    port map (
            O => \N__2474\,
            I => \clk_divZ0Z_7\
        );

    \I__533\ : InMux
    port map (
            O => \N__2469\,
            I => clk_div_1_cry_6
        );

    \I__532\ : CascadeMux
    port map (
            O => \N__2466\,
            I => \N__2462\
        );

    \I__531\ : InMux
    port map (
            O => \N__2465\,
            I => \N__2459\
        );

    \I__530\ : InMux
    port map (
            O => \N__2462\,
            I => \N__2456\
        );

    \I__529\ : LocalMux
    port map (
            O => \N__2459\,
            I => \clk_divZ0Z_8\
        );

    \I__528\ : LocalMux
    port map (
            O => \N__2456\,
            I => \clk_divZ0Z_8\
        );

    \I__527\ : InMux
    port map (
            O => \N__2451\,
            I => clk_div_1_cry_7
        );

    \I__526\ : CascadeMux
    port map (
            O => \N__2448\,
            I => \N__2444\
        );

    \I__525\ : InMux
    port map (
            O => \N__2447\,
            I => \N__2441\
        );

    \I__524\ : InMux
    port map (
            O => \N__2444\,
            I => \N__2438\
        );

    \I__523\ : LocalMux
    port map (
            O => \N__2441\,
            I => \clk_divZ0Z_9\
        );

    \I__522\ : LocalMux
    port map (
            O => \N__2438\,
            I => \clk_divZ0Z_9\
        );

    \I__521\ : InMux
    port map (
            O => \N__2433\,
            I => \bfn_5_8_0_\
        );

    \I__520\ : InMux
    port map (
            O => \N__2430\,
            I => clk_div_1_cry_9
        );

    \I__519\ : InMux
    port map (
            O => \N__2427\,
            I => \N__2423\
        );

    \I__518\ : InMux
    port map (
            O => \N__2426\,
            I => \N__2420\
        );

    \I__517\ : LocalMux
    port map (
            O => \N__2423\,
            I => \clk_divZ0Z_10\
        );

    \I__516\ : LocalMux
    port map (
            O => \N__2420\,
            I => \clk_divZ0Z_10\
        );

    \I__515\ : InMux
    port map (
            O => \N__2415\,
            I => \N__2412\
        );

    \I__514\ : LocalMux
    port map (
            O => \N__2412\,
            I => \N__2409\
        );

    \I__513\ : Span4Mux_h
    port map (
            O => \N__2409\,
            I => \N__2406\
        );

    \I__512\ : Odrv4
    port map (
            O => \N__2406\,
            I => \BUT1_c\
        );

    \I__511\ : InMux
    port map (
            O => \N__2403\,
            I => \N__2400\
        );

    \I__510\ : LocalMux
    port map (
            O => \N__2400\,
            I => \N__2397\
        );

    \I__509\ : Span4Mux_v
    port map (
            O => \N__2397\,
            I => \N__2393\
        );

    \I__508\ : InMux
    port map (
            O => \N__2396\,
            I => \N__2390\
        );

    \I__507\ : Span4Mux_h
    port map (
            O => \N__2393\,
            I => \N__2387\
        );

    \I__506\ : LocalMux
    port map (
            O => \N__2390\,
            I => \BUT1_rZ0\
        );

    \I__505\ : Odrv4
    port map (
            O => \N__2387\,
            I => \BUT1_rZ0\
        );

    \I__504\ : ClkMux
    port map (
            O => \N__2382\,
            I => \N__2337\
        );

    \I__503\ : ClkMux
    port map (
            O => \N__2381\,
            I => \N__2337\
        );

    \I__502\ : ClkMux
    port map (
            O => \N__2380\,
            I => \N__2337\
        );

    \I__501\ : ClkMux
    port map (
            O => \N__2379\,
            I => \N__2337\
        );

    \I__500\ : ClkMux
    port map (
            O => \N__2378\,
            I => \N__2337\
        );

    \I__499\ : ClkMux
    port map (
            O => \N__2377\,
            I => \N__2337\
        );

    \I__498\ : ClkMux
    port map (
            O => \N__2376\,
            I => \N__2337\
        );

    \I__497\ : ClkMux
    port map (
            O => \N__2375\,
            I => \N__2337\
        );

    \I__496\ : ClkMux
    port map (
            O => \N__2374\,
            I => \N__2337\
        );

    \I__495\ : ClkMux
    port map (
            O => \N__2373\,
            I => \N__2337\
        );

    \I__494\ : ClkMux
    port map (
            O => \N__2372\,
            I => \N__2337\
        );

    \I__493\ : ClkMux
    port map (
            O => \N__2371\,
            I => \N__2337\
        );

    \I__492\ : ClkMux
    port map (
            O => \N__2370\,
            I => \N__2337\
        );

    \I__491\ : ClkMux
    port map (
            O => \N__2369\,
            I => \N__2337\
        );

    \I__490\ : ClkMux
    port map (
            O => \N__2368\,
            I => \N__2337\
        );

    \I__489\ : GlobalMux
    port map (
            O => \N__2337\,
            I => \N__2334\
        );

    \I__488\ : gio2CtrlBuf
    port map (
            O => \N__2334\,
            I => \CLK_c_g\
        );

    \I__487\ : InMux
    port map (
            O => \N__2331\,
            I => \N__2305\
        );

    \I__486\ : InMux
    port map (
            O => \N__2330\,
            I => \N__2305\
        );

    \I__485\ : InMux
    port map (
            O => \N__2329\,
            I => \N__2305\
        );

    \I__484\ : InMux
    port map (
            O => \N__2328\,
            I => \N__2305\
        );

    \I__483\ : InMux
    port map (
            O => \N__2327\,
            I => \N__2298\
        );

    \I__482\ : InMux
    port map (
            O => \N__2326\,
            I => \N__2298\
        );

    \I__481\ : InMux
    port map (
            O => \N__2325\,
            I => \N__2298\
        );

    \I__480\ : InMux
    port map (
            O => \N__2324\,
            I => \N__2289\
        );

    \I__479\ : InMux
    port map (
            O => \N__2323\,
            I => \N__2289\
        );

    \I__478\ : InMux
    port map (
            O => \N__2322\,
            I => \N__2289\
        );

    \I__477\ : InMux
    port map (
            O => \N__2321\,
            I => \N__2289\
        );

    \I__476\ : InMux
    port map (
            O => \N__2320\,
            I => \N__2282\
        );

    \I__475\ : InMux
    port map (
            O => \N__2319\,
            I => \N__2282\
        );

    \I__474\ : InMux
    port map (
            O => \N__2318\,
            I => \N__2282\
        );

    \I__473\ : InMux
    port map (
            O => \N__2317\,
            I => \N__2277\
        );

    \I__472\ : InMux
    port map (
            O => \N__2316\,
            I => \N__2277\
        );

    \I__471\ : InMux
    port map (
            O => \N__2315\,
            I => \N__2272\
        );

    \I__470\ : InMux
    port map (
            O => \N__2314\,
            I => \N__2272\
        );

    \I__469\ : LocalMux
    port map (
            O => \N__2305\,
            I => \N__2263\
        );

    \I__468\ : LocalMux
    port map (
            O => \N__2298\,
            I => \N__2260\
        );

    \I__467\ : LocalMux
    port map (
            O => \N__2289\,
            I => \N__2257\
        );

    \I__466\ : LocalMux
    port map (
            O => \N__2282\,
            I => \N__2254\
        );

    \I__465\ : LocalMux
    port map (
            O => \N__2277\,
            I => \N__2251\
        );

    \I__464\ : LocalMux
    port map (
            O => \N__2272\,
            I => \N__2248\
        );

    \I__463\ : CEMux
    port map (
            O => \N__2271\,
            I => \N__2223\
        );

    \I__462\ : CEMux
    port map (
            O => \N__2270\,
            I => \N__2223\
        );

    \I__461\ : CEMux
    port map (
            O => \N__2269\,
            I => \N__2223\
        );

    \I__460\ : CEMux
    port map (
            O => \N__2268\,
            I => \N__2223\
        );

    \I__459\ : CEMux
    port map (
            O => \N__2267\,
            I => \N__2223\
        );

    \I__458\ : CEMux
    port map (
            O => \N__2266\,
            I => \N__2223\
        );

    \I__457\ : Glb2LocalMux
    port map (
            O => \N__2263\,
            I => \N__2223\
        );

    \I__456\ : Glb2LocalMux
    port map (
            O => \N__2260\,
            I => \N__2223\
        );

    \I__455\ : Glb2LocalMux
    port map (
            O => \N__2257\,
            I => \N__2223\
        );

    \I__454\ : Glb2LocalMux
    port map (
            O => \N__2254\,
            I => \N__2223\
        );

    \I__453\ : Glb2LocalMux
    port map (
            O => \N__2251\,
            I => \N__2223\
        );

    \I__452\ : Glb2LocalMux
    port map (
            O => \N__2248\,
            I => \N__2223\
        );

    \I__451\ : GlobalMux
    port map (
            O => \N__2223\,
            I => \N__2220\
        );

    \I__450\ : gio2CtrlBuf
    port map (
            O => \N__2220\,
            I => \N_16_g\
        );

    \I__449\ : InMux
    port map (
            O => \N__2217\,
            I => clk_div_2_cry_10
        );

    \I__448\ : CascadeMux
    port map (
            O => \N__2214\,
            I => \N__2211\
        );

    \I__447\ : InMux
    port map (
            O => \N__2211\,
            I => \N__2207\
        );

    \I__446\ : InMux
    port map (
            O => \N__2210\,
            I => \N__2204\
        );

    \I__445\ : LocalMux
    port map (
            O => \N__2207\,
            I => \N__2201\
        );

    \I__444\ : LocalMux
    port map (
            O => \N__2204\,
            I => \clk_div_RNI06L91Z0Z_11\
        );

    \I__443\ : Odrv4
    port map (
            O => \N__2201\,
            I => \clk_div_RNI06L91Z0Z_11\
        );

    \I__442\ : InMux
    port map (
            O => \N__2196\,
            I => \N__2193\
        );

    \I__441\ : LocalMux
    port map (
            O => \N__2193\,
            I => \N__2189\
        );

    \I__440\ : InMux
    port map (
            O => \N__2192\,
            I => \N__2186\
        );

    \I__439\ : Odrv4
    port map (
            O => \N__2189\,
            I => clk_div_i_11
        );

    \I__438\ : LocalMux
    port map (
            O => \N__2186\,
            I => clk_div_i_11
        );

    \I__437\ : InMux
    port map (
            O => \N__2181\,
            I => \N__2178\
        );

    \I__436\ : LocalMux
    port map (
            O => \N__2178\,
            I => \LED1_m0_rZ0\
        );

    \I__435\ : InMux
    port map (
            O => \N__2175\,
            I => \N__2172\
        );

    \I__434\ : LocalMux
    port map (
            O => \N__2172\,
            I => \LED2_m0_rZ0\
        );

    \I__433\ : InMux
    port map (
            O => \N__2169\,
            I => \N__2166\
        );

    \I__432\ : LocalMux
    port map (
            O => \N__2166\,
            I => \N__2163\
        );

    \I__431\ : IoSpan4Mux
    port map (
            O => \N__2163\,
            I => \N__2160\
        );

    \I__430\ : IoSpan4Mux
    port map (
            O => \N__2160\,
            I => \N__2157\
        );

    \I__429\ : Odrv4
    port map (
            O => \N__2157\,
            I => \BUT2_c\
        );

    \I__428\ : CascadeMux
    port map (
            O => \N__2154\,
            I => \N__2151\
        );

    \I__427\ : InMux
    port map (
            O => \N__2151\,
            I => \N__2148\
        );

    \I__426\ : LocalMux
    port map (
            O => \N__2148\,
            I => \N__2144\
        );

    \I__425\ : InMux
    port map (
            O => \N__2147\,
            I => \N__2141\
        );

    \I__424\ : Span12Mux_s4_h
    port map (
            O => \N__2144\,
            I => \N__2138\
        );

    \I__423\ : LocalMux
    port map (
            O => \N__2141\,
            I => \BUT2_rZ0\
        );

    \I__422\ : Odrv12
    port map (
            O => \N__2138\,
            I => \BUT2_rZ0\
        );

    \I__421\ : InMux
    port map (
            O => \N__2133\,
            I => \N__2128\
        );

    \I__420\ : InMux
    port map (
            O => \N__2132\,
            I => \N__2125\
        );

    \I__419\ : InMux
    port map (
            O => \N__2131\,
            I => \N__2122\
        );

    \I__418\ : LocalMux
    port map (
            O => \N__2128\,
            I => \clk_divZ0Z_1\
        );

    \I__417\ : LocalMux
    port map (
            O => \N__2125\,
            I => \clk_divZ0Z_1\
        );

    \I__416\ : LocalMux
    port map (
            O => \N__2122\,
            I => \clk_divZ0Z_1\
        );

    \I__415\ : CascadeMux
    port map (
            O => \N__2115\,
            I => \N__2109\
        );

    \I__414\ : CascadeMux
    port map (
            O => \N__2114\,
            I => \N__2106\
        );

    \I__413\ : InMux
    port map (
            O => \N__2113\,
            I => \N__2101\
        );

    \I__412\ : InMux
    port map (
            O => \N__2112\,
            I => \N__2101\
        );

    \I__411\ : InMux
    port map (
            O => \N__2109\,
            I => \N__2098\
        );

    \I__410\ : InMux
    port map (
            O => \N__2106\,
            I => \N__2095\
        );

    \I__409\ : LocalMux
    port map (
            O => \N__2101\,
            I => \clk_divZ0Z_0\
        );

    \I__408\ : LocalMux
    port map (
            O => \N__2098\,
            I => \clk_divZ0Z_0\
        );

    \I__407\ : LocalMux
    port map (
            O => \N__2095\,
            I => \clk_divZ0Z_0\
        );

    \I__406\ : CascadeMux
    port map (
            O => \N__2088\,
            I => \N__2084\
        );

    \I__405\ : InMux
    port map (
            O => \N__2087\,
            I => \N__2081\
        );

    \I__404\ : InMux
    port map (
            O => \N__2084\,
            I => \N__2078\
        );

    \I__403\ : LocalMux
    port map (
            O => \N__2081\,
            I => \clk_divZ0Z_2\
        );

    \I__402\ : LocalMux
    port map (
            O => \N__2078\,
            I => \clk_divZ0Z_2\
        );

    \I__401\ : InMux
    port map (
            O => \N__2073\,
            I => clk_div_1_cry_1
        );

    \I__400\ : CascadeMux
    port map (
            O => \N__2070\,
            I => \N__2066\
        );

    \I__399\ : InMux
    port map (
            O => \N__2069\,
            I => \N__2063\
        );

    \I__398\ : InMux
    port map (
            O => \N__2066\,
            I => \N__2060\
        );

    \I__397\ : LocalMux
    port map (
            O => \N__2063\,
            I => \clk_divZ0Z_3\
        );

    \I__396\ : LocalMux
    port map (
            O => \N__2060\,
            I => \clk_divZ0Z_3\
        );

    \I__395\ : InMux
    port map (
            O => \N__2055\,
            I => clk_div_1_cry_2
        );

    \I__394\ : CascadeMux
    port map (
            O => \N__2052\,
            I => \N__2048\
        );

    \I__393\ : InMux
    port map (
            O => \N__2051\,
            I => \N__2045\
        );

    \I__392\ : InMux
    port map (
            O => \N__2048\,
            I => \N__2042\
        );

    \I__391\ : LocalMux
    port map (
            O => \N__2045\,
            I => \clk_divZ0Z_4\
        );

    \I__390\ : LocalMux
    port map (
            O => \N__2042\,
            I => \clk_divZ0Z_4\
        );

    \I__389\ : InMux
    port map (
            O => \N__2037\,
            I => clk_div_1_cry_3
        );

    \I__388\ : InMux
    port map (
            O => \N__2034\,
            I => \N__2031\
        );

    \I__387\ : LocalMux
    port map (
            O => \N__2031\,
            I => \rst_cntZ0Z_13\
        );

    \I__386\ : InMux
    port map (
            O => \N__2028\,
            I => un1_rst_cnt_1_cry_12
        );

    \I__385\ : InMux
    port map (
            O => \N__2025\,
            I => \N__2021\
        );

    \I__384\ : InMux
    port map (
            O => \N__2024\,
            I => \N__2018\
        );

    \I__383\ : LocalMux
    port map (
            O => \N__2021\,
            I => \CONSTANT_ONE_NET\
        );

    \I__382\ : LocalMux
    port map (
            O => \N__2018\,
            I => \CONSTANT_ONE_NET\
        );

    \I__381\ : InMux
    port map (
            O => \N__2013\,
            I => \bfn_2_9_0_\
        );

    \I__380\ : InMux
    port map (
            O => \N__2010\,
            I => \N__2005\
        );

    \I__379\ : InMux
    port map (
            O => \N__2009\,
            I => \N__2000\
        );

    \I__378\ : InMux
    port map (
            O => \N__2008\,
            I => \N__2000\
        );

    \I__377\ : LocalMux
    port map (
            O => \N__2005\,
            I => \rst_cntZ0Z_14\
        );

    \I__376\ : LocalMux
    port map (
            O => \N__2000\,
            I => \rst_cntZ0Z_14\
        );

    \I__375\ : CEMux
    port map (
            O => \N__1995\,
            I => \N__1992\
        );

    \I__374\ : LocalMux
    port map (
            O => \N__1992\,
            I => \N__1989\
        );

    \I__373\ : Span4Mux_h
    port map (
            O => \N__1989\,
            I => \N__1986\
        );

    \I__372\ : Odrv4
    port map (
            O => \N__1986\,
            I => \N_16_0\
        );

    \I__371\ : SRMux
    port map (
            O => \N__1983\,
            I => \N__1977\
        );

    \I__370\ : SRMux
    port map (
            O => \N__1982\,
            I => \N__1974\
        );

    \I__369\ : SRMux
    port map (
            O => \N__1981\,
            I => \N__1971\
        );

    \I__368\ : InMux
    port map (
            O => \N__1980\,
            I => \N__1968\
        );

    \I__367\ : LocalMux
    port map (
            O => \N__1977\,
            I => \BUT1_r_RNIKV9MZ0Z2\
        );

    \I__366\ : LocalMux
    port map (
            O => \N__1974\,
            I => \BUT1_r_RNIKV9MZ0Z2\
        );

    \I__365\ : LocalMux
    port map (
            O => \N__1971\,
            I => \BUT1_r_RNIKV9MZ0Z2\
        );

    \I__364\ : LocalMux
    port map (
            O => \N__1968\,
            I => \BUT1_r_RNIKV9MZ0Z2\
        );

    \I__363\ : InMux
    port map (
            O => \N__1959\,
            I => \N__1956\
        );

    \I__362\ : LocalMux
    port map (
            O => \N__1956\,
            I => \N__1952\
        );

    \I__361\ : InMux
    port map (
            O => \N__1955\,
            I => \N__1949\
        );

    \I__360\ : Odrv12
    port map (
            O => \N__1952\,
            I => \LED2_m1_rZ0\
        );

    \I__359\ : LocalMux
    port map (
            O => \N__1949\,
            I => \LED2_m1_rZ0\
        );

    \I__358\ : IoInMux
    port map (
            O => \N__1944\,
            I => \N__1941\
        );

    \I__357\ : LocalMux
    port map (
            O => \N__1941\,
            I => \N__1938\
        );

    \I__356\ : Span4Mux_s3_h
    port map (
            O => \N__1938\,
            I => \N__1935\
        );

    \I__355\ : Span4Mux_h
    port map (
            O => \N__1935\,
            I => \N__1932\
        );

    \I__354\ : Odrv4
    port map (
            O => \N__1932\,
            I => \LED2_c\
        );

    \I__353\ : InMux
    port map (
            O => \N__1929\,
            I => \N__1923\
        );

    \I__352\ : InMux
    port map (
            O => \N__1928\,
            I => \N__1923\
        );

    \I__351\ : LocalMux
    port map (
            O => \N__1923\,
            I => \N__1920\
        );

    \I__350\ : Span4Mux_h
    port map (
            O => \N__1920\,
            I => \N__1917\
        );

    \I__349\ : Span4Mux_v
    port map (
            O => \N__1917\,
            I => \N__1913\
        );

    \I__348\ : InMux
    port map (
            O => \N__1916\,
            I => \N__1910\
        );

    \I__347\ : Odrv4
    port map (
            O => \N__1913\,
            I => \modeZ0\
        );

    \I__346\ : LocalMux
    port map (
            O => \N__1910\,
            I => \modeZ0\
        );

    \I__345\ : InMux
    port map (
            O => \N__1905\,
            I => \N__1902\
        );

    \I__344\ : LocalMux
    port map (
            O => \N__1902\,
            I => \N__1898\
        );

    \I__343\ : InMux
    port map (
            O => \N__1901\,
            I => \N__1895\
        );

    \I__342\ : Odrv4
    port map (
            O => \N__1898\,
            I => \LED1_m1_rZ0\
        );

    \I__341\ : LocalMux
    port map (
            O => \N__1895\,
            I => \LED1_m1_rZ0\
        );

    \I__340\ : IoInMux
    port map (
            O => \N__1890\,
            I => \N__1887\
        );

    \I__339\ : LocalMux
    port map (
            O => \N__1887\,
            I => \N__1884\
        );

    \I__338\ : IoSpan4Mux
    port map (
            O => \N__1884\,
            I => \N__1881\
        );

    \I__337\ : Span4Mux_s1_v
    port map (
            O => \N__1881\,
            I => \N__1878\
        );

    \I__336\ : Odrv4
    port map (
            O => \N__1878\,
            I => \LED1_c\
        );

    \I__335\ : InMux
    port map (
            O => \N__1875\,
            I => \N__1872\
        );

    \I__334\ : LocalMux
    port map (
            O => \N__1872\,
            I => \rst_cntZ0Z_5\
        );

    \I__333\ : InMux
    port map (
            O => \N__1869\,
            I => un1_rst_cnt_1_cry_4
        );

    \I__332\ : InMux
    port map (
            O => \N__1866\,
            I => \N__1863\
        );

    \I__331\ : LocalMux
    port map (
            O => \N__1863\,
            I => \rst_cntZ0Z_6\
        );

    \I__330\ : InMux
    port map (
            O => \N__1860\,
            I => un1_rst_cnt_1_cry_5
        );

    \I__329\ : InMux
    port map (
            O => \N__1857\,
            I => \N__1854\
        );

    \I__328\ : LocalMux
    port map (
            O => \N__1854\,
            I => \rst_cntZ0Z_7\
        );

    \I__327\ : InMux
    port map (
            O => \N__1851\,
            I => un1_rst_cnt_1_cry_6
        );

    \I__326\ : InMux
    port map (
            O => \N__1848\,
            I => \N__1845\
        );

    \I__325\ : LocalMux
    port map (
            O => \N__1845\,
            I => \rst_cntZ0Z_8\
        );

    \I__324\ : InMux
    port map (
            O => \N__1842\,
            I => \bfn_2_8_0_\
        );

    \I__323\ : InMux
    port map (
            O => \N__1839\,
            I => \N__1836\
        );

    \I__322\ : LocalMux
    port map (
            O => \N__1836\,
            I => \rst_cntZ0Z_9\
        );

    \I__321\ : InMux
    port map (
            O => \N__1833\,
            I => un1_rst_cnt_1_cry_8
        );

    \I__320\ : InMux
    port map (
            O => \N__1830\,
            I => \N__1827\
        );

    \I__319\ : LocalMux
    port map (
            O => \N__1827\,
            I => \rst_cntZ0Z_10\
        );

    \I__318\ : InMux
    port map (
            O => \N__1824\,
            I => un1_rst_cnt_1_cry_9
        );

    \I__317\ : InMux
    port map (
            O => \N__1821\,
            I => \N__1818\
        );

    \I__316\ : LocalMux
    port map (
            O => \N__1818\,
            I => \rst_cntZ0Z_11\
        );

    \I__315\ : InMux
    port map (
            O => \N__1815\,
            I => un1_rst_cnt_1_cry_10
        );

    \I__314\ : InMux
    port map (
            O => \N__1812\,
            I => \N__1809\
        );

    \I__313\ : LocalMux
    port map (
            O => \N__1809\,
            I => \rst_cntZ0Z_12\
        );

    \I__312\ : InMux
    port map (
            O => \N__1806\,
            I => un1_rst_cnt_1_cry_11
        );

    \I__311\ : InMux
    port map (
            O => \N__1803\,
            I => \N__1800\
        );

    \I__310\ : LocalMux
    port map (
            O => \N__1800\,
            I => cntr_1_9
        );

    \I__309\ : CascadeMux
    port map (
            O => \N__1797\,
            I => \N__1793\
        );

    \I__308\ : CascadeMux
    port map (
            O => \N__1796\,
            I => \N__1790\
        );

    \I__307\ : InMux
    port map (
            O => \N__1793\,
            I => \N__1784\
        );

    \I__306\ : InMux
    port map (
            O => \N__1790\,
            I => \N__1784\
        );

    \I__305\ : InMux
    port map (
            O => \N__1789\,
            I => \N__1781\
        );

    \I__304\ : LocalMux
    port map (
            O => \N__1784\,
            I => \N__1778\
        );

    \I__303\ : LocalMux
    port map (
            O => \N__1781\,
            I => \cntrZ0Z_9\
        );

    \I__302\ : Odrv4
    port map (
            O => \N__1778\,
            I => \cntrZ0Z_9\
        );

    \I__301\ : InMux
    port map (
            O => \N__1773\,
            I => \N__1770\
        );

    \I__300\ : LocalMux
    port map (
            O => \N__1770\,
            I => cntr_1_11
        );

    \I__299\ : InMux
    port map (
            O => \N__1767\,
            I => \N__1762\
        );

    \I__298\ : InMux
    port map (
            O => \N__1766\,
            I => \N__1759\
        );

    \I__297\ : InMux
    port map (
            O => \N__1765\,
            I => \N__1756\
        );

    \I__296\ : LocalMux
    port map (
            O => \N__1762\,
            I => \cntrZ0Z_11\
        );

    \I__295\ : LocalMux
    port map (
            O => \N__1759\,
            I => \cntrZ0Z_11\
        );

    \I__294\ : LocalMux
    port map (
            O => \N__1756\,
            I => \cntrZ0Z_11\
        );

    \I__293\ : CascadeMux
    port map (
            O => \N__1749\,
            I => \N__1745\
        );

    \I__292\ : CascadeMux
    port map (
            O => \N__1748\,
            I => \N__1738\
        );

    \I__291\ : InMux
    port map (
            O => \N__1745\,
            I => \N__1730\
        );

    \I__290\ : InMux
    port map (
            O => \N__1744\,
            I => \N__1725\
        );

    \I__289\ : InMux
    port map (
            O => \N__1743\,
            I => \N__1725\
        );

    \I__288\ : InMux
    port map (
            O => \N__1742\,
            I => \N__1722\
        );

    \I__287\ : CascadeMux
    port map (
            O => \N__1741\,
            I => \N__1719\
        );

    \I__286\ : InMux
    port map (
            O => \N__1738\,
            I => \N__1714\
        );

    \I__285\ : InMux
    port map (
            O => \N__1737\,
            I => \N__1714\
        );

    \I__284\ : InMux
    port map (
            O => \N__1736\,
            I => \N__1709\
        );

    \I__283\ : InMux
    port map (
            O => \N__1735\,
            I => \N__1709\
        );

    \I__282\ : InMux
    port map (
            O => \N__1734\,
            I => \N__1704\
        );

    \I__281\ : InMux
    port map (
            O => \N__1733\,
            I => \N__1704\
        );

    \I__280\ : LocalMux
    port map (
            O => \N__1730\,
            I => \N__1697\
        );

    \I__279\ : LocalMux
    port map (
            O => \N__1725\,
            I => \N__1697\
        );

    \I__278\ : LocalMux
    port map (
            O => \N__1722\,
            I => \N__1697\
        );

    \I__277\ : InMux
    port map (
            O => \N__1719\,
            I => \N__1694\
        );

    \I__276\ : LocalMux
    port map (
            O => \N__1714\,
            I => \cntrZ0Z_13\
        );

    \I__275\ : LocalMux
    port map (
            O => \N__1709\,
            I => \cntrZ0Z_13\
        );

    \I__274\ : LocalMux
    port map (
            O => \N__1704\,
            I => \cntrZ0Z_13\
        );

    \I__273\ : Odrv4
    port map (
            O => \N__1697\,
            I => \cntrZ0Z_13\
        );

    \I__272\ : LocalMux
    port map (
            O => \N__1694\,
            I => \cntrZ0Z_13\
        );

    \I__271\ : InMux
    port map (
            O => \N__1683\,
            I => \N__1680\
        );

    \I__270\ : LocalMux
    port map (
            O => \N__1680\,
            I => cntr_1_12
        );

    \I__269\ : CascadeMux
    port map (
            O => \N__1677\,
            I => \N__1672\
        );

    \I__268\ : CascadeMux
    port map (
            O => \N__1676\,
            I => \N__1668\
        );

    \I__267\ : CascadeMux
    port map (
            O => \N__1675\,
            I => \N__1665\
        );

    \I__266\ : InMux
    port map (
            O => \N__1672\,
            I => \N__1655\
        );

    \I__265\ : InMux
    port map (
            O => \N__1671\,
            I => \N__1655\
        );

    \I__264\ : InMux
    port map (
            O => \N__1668\,
            I => \N__1655\
        );

    \I__263\ : InMux
    port map (
            O => \N__1665\,
            I => \N__1652\
        );

    \I__262\ : CascadeMux
    port map (
            O => \N__1664\,
            I => \N__1649\
        );

    \I__261\ : CascadeMux
    port map (
            O => \N__1663\,
            I => \N__1646\
        );

    \I__260\ : CascadeMux
    port map (
            O => \N__1662\,
            I => \N__1642\
        );

    \I__259\ : LocalMux
    port map (
            O => \N__1655\,
            I => \N__1636\
        );

    \I__258\ : LocalMux
    port map (
            O => \N__1652\,
            I => \N__1636\
        );

    \I__257\ : InMux
    port map (
            O => \N__1649\,
            I => \N__1627\
        );

    \I__256\ : InMux
    port map (
            O => \N__1646\,
            I => \N__1627\
        );

    \I__255\ : InMux
    port map (
            O => \N__1645\,
            I => \N__1627\
        );

    \I__254\ : InMux
    port map (
            O => \N__1642\,
            I => \N__1627\
        );

    \I__253\ : InMux
    port map (
            O => \N__1641\,
            I => \N__1624\
        );

    \I__252\ : Span4Mux_s2_v
    port map (
            O => \N__1636\,
            I => \N__1621\
        );

    \I__251\ : LocalMux
    port map (
            O => \N__1627\,
            I => \cntrZ0Z_14\
        );

    \I__250\ : LocalMux
    port map (
            O => \N__1624\,
            I => \cntrZ0Z_14\
        );

    \I__249\ : Odrv4
    port map (
            O => \N__1621\,
            I => \cntrZ0Z_14\
        );

    \I__248\ : CascadeMux
    port map (
            O => \N__1614\,
            I => \N__1611\
        );

    \I__247\ : InMux
    port map (
            O => \N__1611\,
            I => \N__1600\
        );

    \I__246\ : InMux
    port map (
            O => \N__1610\,
            I => \N__1593\
        );

    \I__245\ : InMux
    port map (
            O => \N__1609\,
            I => \N__1593\
        );

    \I__244\ : InMux
    port map (
            O => \N__1608\,
            I => \N__1593\
        );

    \I__243\ : InMux
    port map (
            O => \N__1607\,
            I => \N__1584\
        );

    \I__242\ : InMux
    port map (
            O => \N__1606\,
            I => \N__1584\
        );

    \I__241\ : InMux
    port map (
            O => \N__1605\,
            I => \N__1584\
        );

    \I__240\ : InMux
    port map (
            O => \N__1604\,
            I => \N__1584\
        );

    \I__239\ : InMux
    port map (
            O => \N__1603\,
            I => \N__1581\
        );

    \I__238\ : LocalMux
    port map (
            O => \N__1600\,
            I => cntr7lt13
        );

    \I__237\ : LocalMux
    port map (
            O => \N__1593\,
            I => cntr7lt13
        );

    \I__236\ : LocalMux
    port map (
            O => \N__1584\,
            I => cntr7lt13
        );

    \I__235\ : LocalMux
    port map (
            O => \N__1581\,
            I => cntr7lt13
        );

    \I__234\ : InMux
    port map (
            O => \N__1572\,
            I => \N__1567\
        );

    \I__233\ : InMux
    port map (
            O => \N__1571\,
            I => \N__1562\
        );

    \I__232\ : InMux
    port map (
            O => \N__1570\,
            I => \N__1562\
        );

    \I__231\ : LocalMux
    port map (
            O => \N__1567\,
            I => \cntrZ0Z_12\
        );

    \I__230\ : LocalMux
    port map (
            O => \N__1562\,
            I => \cntrZ0Z_12\
        );

    \I__229\ : CascadeMux
    port map (
            O => \N__1557\,
            I => \N__1553\
        );

    \I__228\ : InMux
    port map (
            O => \N__1556\,
            I => \N__1550\
        );

    \I__227\ : InMux
    port map (
            O => \N__1553\,
            I => \N__1547\
        );

    \I__226\ : LocalMux
    port map (
            O => \N__1550\,
            I => rst_cnt_i_14
        );

    \I__225\ : LocalMux
    port map (
            O => \N__1547\,
            I => rst_cnt_i_14
        );

    \I__224\ : InMux
    port map (
            O => \N__1542\,
            I => \N__1539\
        );

    \I__223\ : LocalMux
    port map (
            O => \N__1539\,
            I => \rst_cntZ0Z_0\
        );

    \I__222\ : InMux
    port map (
            O => \N__1536\,
            I => \N__1533\
        );

    \I__221\ : LocalMux
    port map (
            O => \N__1533\,
            I => \rst_cntZ0Z_1\
        );

    \I__220\ : InMux
    port map (
            O => \N__1530\,
            I => un1_rst_cnt_1_cry_0
        );

    \I__219\ : InMux
    port map (
            O => \N__1527\,
            I => \N__1524\
        );

    \I__218\ : LocalMux
    port map (
            O => \N__1524\,
            I => \rst_cntZ0Z_2\
        );

    \I__217\ : InMux
    port map (
            O => \N__1521\,
            I => un1_rst_cnt_1_cry_1
        );

    \I__216\ : InMux
    port map (
            O => \N__1518\,
            I => \N__1515\
        );

    \I__215\ : LocalMux
    port map (
            O => \N__1515\,
            I => \rst_cntZ0Z_3\
        );

    \I__214\ : InMux
    port map (
            O => \N__1512\,
            I => un1_rst_cnt_1_cry_2
        );

    \I__213\ : InMux
    port map (
            O => \N__1509\,
            I => \N__1506\
        );

    \I__212\ : LocalMux
    port map (
            O => \N__1506\,
            I => \rst_cntZ0Z_4\
        );

    \I__211\ : InMux
    port map (
            O => \N__1503\,
            I => un1_rst_cnt_1_cry_3
        );

    \I__210\ : CascadeMux
    port map (
            O => \N__1500\,
            I => \cntr7lto7_0_4_cascade_\
        );

    \I__209\ : InMux
    port map (
            O => \N__1497\,
            I => \N__1492\
        );

    \I__208\ : InMux
    port map (
            O => \N__1496\,
            I => \N__1487\
        );

    \I__207\ : InMux
    port map (
            O => \N__1495\,
            I => \N__1487\
        );

    \I__206\ : LocalMux
    port map (
            O => \N__1492\,
            I => \cntrZ0Z_8\
        );

    \I__205\ : LocalMux
    port map (
            O => \N__1487\,
            I => \cntrZ0Z_8\
        );

    \I__204\ : InMux
    port map (
            O => \N__1482\,
            I => \N__1479\
        );

    \I__203\ : LocalMux
    port map (
            O => \N__1479\,
            I => \LED1_m1_r_cnv_5\
        );

    \I__202\ : InMux
    port map (
            O => \N__1476\,
            I => \N__1473\
        );

    \I__201\ : LocalMux
    port map (
            O => \N__1473\,
            I => \N__1470\
        );

    \I__200\ : Odrv4
    port map (
            O => \N__1470\,
            I => \LED1_m1_r_cnv_6\
        );

    \I__199\ : InMux
    port map (
            O => \N__1467\,
            I => \N__1464\
        );

    \I__198\ : LocalMux
    port map (
            O => \N__1464\,
            I => cntr7lto7_0_2
        );

    \I__197\ : InMux
    port map (
            O => \N__1461\,
            I => \N__1457\
        );

    \I__196\ : InMux
    port map (
            O => \N__1460\,
            I => \N__1454\
        );

    \I__195\ : LocalMux
    port map (
            O => \N__1457\,
            I => \N__1451\
        );

    \I__194\ : LocalMux
    port map (
            O => \N__1454\,
            I => \cntrZ0Z_2\
        );

    \I__193\ : Odrv4
    port map (
            O => \N__1451\,
            I => \cntrZ0Z_2\
        );

    \I__192\ : CascadeMux
    port map (
            O => \N__1446\,
            I => \N__1442\
        );

    \I__191\ : InMux
    port map (
            O => \N__1445\,
            I => \N__1439\
        );

    \I__190\ : InMux
    port map (
            O => \N__1442\,
            I => \N__1436\
        );

    \I__189\ : LocalMux
    port map (
            O => \N__1439\,
            I => \cntrZ0Z_3\
        );

    \I__188\ : LocalMux
    port map (
            O => \N__1436\,
            I => \cntrZ0Z_3\
        );

    \I__187\ : InMux
    port map (
            O => \N__1431\,
            I => \N__1427\
        );

    \I__186\ : InMux
    port map (
            O => \N__1430\,
            I => \N__1424\
        );

    \I__185\ : LocalMux
    port map (
            O => \N__1427\,
            I => cntr7lt5_3
        );

    \I__184\ : LocalMux
    port map (
            O => \N__1424\,
            I => cntr7lt5_3
        );

    \I__183\ : InMux
    port map (
            O => \N__1419\,
            I => \N__1414\
        );

    \I__182\ : InMux
    port map (
            O => \N__1418\,
            I => \N__1409\
        );

    \I__181\ : InMux
    port map (
            O => \N__1417\,
            I => \N__1409\
        );

    \I__180\ : LocalMux
    port map (
            O => \N__1414\,
            I => \cntrZ0Z_6\
        );

    \I__179\ : LocalMux
    port map (
            O => \N__1409\,
            I => \cntrZ0Z_6\
        );

    \I__178\ : InMux
    port map (
            O => \N__1404\,
            I => \N__1398\
        );

    \I__177\ : InMux
    port map (
            O => \N__1403\,
            I => \N__1395\
        );

    \I__176\ : InMux
    port map (
            O => \N__1402\,
            I => \N__1390\
        );

    \I__175\ : InMux
    port map (
            O => \N__1401\,
            I => \N__1390\
        );

    \I__174\ : LocalMux
    port map (
            O => \N__1398\,
            I => \cntrZ0Z_5\
        );

    \I__173\ : LocalMux
    port map (
            O => \N__1395\,
            I => \cntrZ0Z_5\
        );

    \I__172\ : LocalMux
    port map (
            O => \N__1390\,
            I => \cntrZ0Z_5\
        );

    \I__171\ : CascadeMux
    port map (
            O => \N__1383\,
            I => \N__1379\
        );

    \I__170\ : InMux
    port map (
            O => \N__1382\,
            I => \N__1372\
        );

    \I__169\ : InMux
    port map (
            O => \N__1379\,
            I => \N__1372\
        );

    \I__168\ : InMux
    port map (
            O => \N__1378\,
            I => \N__1369\
        );

    \I__167\ : InMux
    port map (
            O => \N__1377\,
            I => \N__1366\
        );

    \I__166\ : LocalMux
    port map (
            O => \N__1372\,
            I => \N__1363\
        );

    \I__165\ : LocalMux
    port map (
            O => \N__1369\,
            I => \cntrZ0Z_7\
        );

    \I__164\ : LocalMux
    port map (
            O => \N__1366\,
            I => \cntrZ0Z_7\
        );

    \I__163\ : Odrv4
    port map (
            O => \N__1363\,
            I => \cntrZ0Z_7\
        );

    \I__162\ : InMux
    port map (
            O => \N__1356\,
            I => \N__1351\
        );

    \I__161\ : InMux
    port map (
            O => \N__1355\,
            I => \N__1346\
        );

    \I__160\ : InMux
    port map (
            O => \N__1354\,
            I => \N__1346\
        );

    \I__159\ : LocalMux
    port map (
            O => \N__1351\,
            I => \cntrZ0Z_4\
        );

    \I__158\ : LocalMux
    port map (
            O => \N__1346\,
            I => \cntrZ0Z_4\
        );

    \I__157\ : InMux
    port map (
            O => \N__1341\,
            I => \N__1338\
        );

    \I__156\ : LocalMux
    port map (
            O => \N__1338\,
            I => cntr7lto7_c
        );

    \I__155\ : InMux
    port map (
            O => \N__1335\,
            I => \N__1332\
        );

    \I__154\ : LocalMux
    port map (
            O => \N__1332\,
            I => cntr_1_10
        );

    \I__153\ : InMux
    port map (
            O => \N__1329\,
            I => \N__1324\
        );

    \I__152\ : InMux
    port map (
            O => \N__1328\,
            I => \N__1319\
        );

    \I__151\ : InMux
    port map (
            O => \N__1327\,
            I => \N__1319\
        );

    \I__150\ : LocalMux
    port map (
            O => \N__1324\,
            I => \cntrZ0Z_10\
        );

    \I__149\ : LocalMux
    port map (
            O => \N__1319\,
            I => \cntrZ0Z_10\
        );

    \I__148\ : InMux
    port map (
            O => \N__1314\,
            I => \N__1306\
        );

    \I__147\ : InMux
    port map (
            O => \N__1313\,
            I => \N__1306\
        );

    \I__146\ : InMux
    port map (
            O => \N__1312\,
            I => \N__1303\
        );

    \I__145\ : InMux
    port map (
            O => \N__1311\,
            I => \N__1300\
        );

    \I__144\ : LocalMux
    port map (
            O => \N__1306\,
            I => \cntrZ0Z_0\
        );

    \I__143\ : LocalMux
    port map (
            O => \N__1303\,
            I => \cntrZ0Z_0\
        );

    \I__142\ : LocalMux
    port map (
            O => \N__1300\,
            I => \cntrZ0Z_0\
        );

    \I__141\ : CascadeMux
    port map (
            O => \N__1293\,
            I => \N__1289\
        );

    \I__140\ : InMux
    port map (
            O => \N__1292\,
            I => \N__1285\
        );

    \I__139\ : InMux
    port map (
            O => \N__1289\,
            I => \N__1282\
        );

    \I__138\ : InMux
    port map (
            O => \N__1288\,
            I => \N__1279\
        );

    \I__137\ : LocalMux
    port map (
            O => \N__1285\,
            I => \cntrZ0Z_1\
        );

    \I__136\ : LocalMux
    port map (
            O => \N__1282\,
            I => \cntrZ0Z_1\
        );

    \I__135\ : LocalMux
    port map (
            O => \N__1279\,
            I => \cntrZ0Z_1\
        );

    \I__134\ : CascadeMux
    port map (
            O => \N__1272\,
            I => \BUT1_r_RNIKV9MZ0Z2_cascade_\
        );

    \I__133\ : SRMux
    port map (
            O => \N__1269\,
            I => \N__1266\
        );

    \I__132\ : LocalMux
    port map (
            O => \N__1266\,
            I => \N__1263\
        );

    \I__131\ : Odrv12
    port map (
            O => \N__1263\,
            I => \cntr_RNITQ4V2Z0Z_14\
        );

    \I__130\ : CascadeMux
    port map (
            O => \N__1260\,
            I => \LED1_m1_r_cnv_7_cascade_\
        );

    \I__129\ : InMux
    port map (
            O => \N__1257\,
            I => \N__1251\
        );

    \I__128\ : InMux
    port map (
            O => \N__1256\,
            I => \N__1251\
        );

    \I__127\ : LocalMux
    port map (
            O => \N__1251\,
            I => \cntr_RNIV9NN2Z0Z_4\
        );

    \I__126\ : InMux
    port map (
            O => \N__1248\,
            I => \bfn_1_5_0_\
        );

    \I__125\ : InMux
    port map (
            O => \N__1245\,
            I => cntr_1_cry_9
        );

    \I__124\ : InMux
    port map (
            O => \N__1242\,
            I => cntr_1_cry_10
        );

    \I__123\ : InMux
    port map (
            O => \N__1239\,
            I => cntr_1_cry_11
        );

    \I__122\ : InMux
    port map (
            O => \N__1236\,
            I => cntr_1_cry_12
        );

    \I__121\ : InMux
    port map (
            O => \N__1233\,
            I => cntr_1_cry_13
        );

    \I__120\ : IoInMux
    port map (
            O => \N__1230\,
            I => \N__1227\
        );

    \I__119\ : LocalMux
    port map (
            O => \N__1227\,
            I => \clk_div_RNIM1KP1Z0Z_11\
        );

    \I__118\ : InMux
    port map (
            O => \N__1224\,
            I => cntr_1_cry_1
        );

    \I__117\ : InMux
    port map (
            O => \N__1221\,
            I => cntr_1_cry_2
        );

    \I__116\ : InMux
    port map (
            O => \N__1218\,
            I => cntr_1_cry_3
        );

    \I__115\ : InMux
    port map (
            O => \N__1215\,
            I => \N__1212\
        );

    \I__114\ : LocalMux
    port map (
            O => \N__1212\,
            I => cntr_1_5
        );

    \I__113\ : InMux
    port map (
            O => \N__1209\,
            I => cntr_1_cry_4
        );

    \I__112\ : InMux
    port map (
            O => \N__1206\,
            I => \N__1203\
        );

    \I__111\ : LocalMux
    port map (
            O => \N__1203\,
            I => cntr_1_6
        );

    \I__110\ : InMux
    port map (
            O => \N__1200\,
            I => cntr_1_cry_5
        );

    \I__109\ : InMux
    port map (
            O => \N__1197\,
            I => cntr_1_cry_6
        );

    \I__108\ : InMux
    port map (
            O => \N__1194\,
            I => \N__1191\
        );

    \I__107\ : LocalMux
    port map (
            O => \N__1191\,
            I => cntr_1_8
        );

    \I__106\ : InMux
    port map (
            O => \N__1188\,
            I => cntr_1_cry_7
        );

    \IN_MUX_bfv_1_4_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "00"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_1_4_0_\
        );

    \IN_MUX_bfv_1_5_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => cntr_1_cry_8,
            carryinitout => \bfn_1_5_0_\
        );

    \IN_MUX_bfv_4_7_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "00"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_4_7_0_\
        );

    \IN_MUX_bfv_4_8_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => clk_div_2_cry_8,
            carryinitout => \bfn_4_8_0_\
        );

    \IN_MUX_bfv_5_7_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "00"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_5_7_0_\
        );

    \IN_MUX_bfv_5_8_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => clk_div_1_cry_8,
            carryinitout => \bfn_5_8_0_\
        );

    \IN_MUX_bfv_2_7_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "00"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_2_7_0_\
        );

    \IN_MUX_bfv_2_8_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => un1_rst_cnt_1_cry_7,
            carryinitout => \bfn_2_8_0_\
        );

    \IN_MUX_bfv_2_9_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => \un1_rst_cnt_1_cry_13_THRU_CRY_1_THRU_CO\,
            carryinitout => \bfn_2_9_0_\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \clk_div_RNIM1KP1_0_11\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__1230\,
            GLOBALBUFFEROUTPUT => \N_16_g\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \cntr_5_LC_1_3_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000110001001100"
        )
    port map (
            in0 => \N__1743\,
            in1 => \N__1215\,
            in2 => \N__1676\,
            in3 => \N__1609\,
            lcout => \cntrZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2377\,
            ce => \N__2269\,
            sr => \_gnd_net_\
        );

    \cntr_6_LC_1_3_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011011100000000"
        )
    port map (
            in0 => \N__1608\,
            in1 => \N__1671\,
            in2 => \N__1749\,
            in3 => \N__1206\,
            lcout => \cntrZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2377\,
            ce => \N__2269\,
            sr => \_gnd_net_\
        );

    \cntr_8_LC_1_3_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000110001001100"
        )
    port map (
            in0 => \N__1744\,
            in1 => \N__1194\,
            in2 => \N__1677\,
            in3 => \N__1610\,
            lcout => \cntrZ0Z_8\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2377\,
            ce => \N__2269\,
            sr => \_gnd_net_\
        );

    \cntr_1_cry_1_c_LC_1_4_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1312\,
            in2 => \N__1293\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_1_4_0_\,
            carryout => cntr_1_cry_1,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_2_LC_1_4_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1460\,
            in2 => \_gnd_net_\,
            in3 => \N__1224\,
            lcout => \cntrZ0Z_2\,
            ltout => OPEN,
            carryin => cntr_1_cry_1,
            carryout => cntr_1_cry_2,
            clk => \N__2375\,
            ce => \N__2267\,
            sr => \_gnd_net_\
        );

    \cntr_3_LC_1_4_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1445\,
            in2 => \_gnd_net_\,
            in3 => \N__1221\,
            lcout => \cntrZ0Z_3\,
            ltout => OPEN,
            carryin => cntr_1_cry_2,
            carryout => cntr_1_cry_3,
            clk => \N__2375\,
            ce => \N__2267\,
            sr => \_gnd_net_\
        );

    \cntr_4_LC_1_4_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1356\,
            in2 => \_gnd_net_\,
            in3 => \N__1218\,
            lcout => \cntrZ0Z_4\,
            ltout => OPEN,
            carryin => cntr_1_cry_3,
            carryout => cntr_1_cry_4,
            clk => \N__2375\,
            ce => \N__2267\,
            sr => \_gnd_net_\
        );

    \cntr_RNO_0_5_LC_1_4_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1403\,
            in2 => \_gnd_net_\,
            in3 => \N__1209\,
            lcout => cntr_1_5,
            ltout => OPEN,
            carryin => cntr_1_cry_4,
            carryout => cntr_1_cry_5,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNO_0_6_LC_1_4_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1419\,
            in2 => \_gnd_net_\,
            in3 => \N__1200\,
            lcout => cntr_1_6,
            ltout => OPEN,
            carryin => cntr_1_cry_5,
            carryout => cntr_1_cry_6,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_7_LC_1_4_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1377\,
            in2 => \_gnd_net_\,
            in3 => \N__1197\,
            lcout => \cntrZ0Z_7\,
            ltout => OPEN,
            carryin => cntr_1_cry_6,
            carryout => cntr_1_cry_7,
            clk => \N__2375\,
            ce => \N__2267\,
            sr => \_gnd_net_\
        );

    \cntr_RNO_0_8_LC_1_4_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1497\,
            in2 => \_gnd_net_\,
            in3 => \N__1188\,
            lcout => cntr_1_8,
            ltout => OPEN,
            carryin => cntr_1_cry_7,
            carryout => cntr_1_cry_8,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNO_0_9_LC_1_5_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1789\,
            in2 => \_gnd_net_\,
            in3 => \N__1248\,
            lcout => cntr_1_9,
            ltout => OPEN,
            carryin => \bfn_1_5_0_\,
            carryout => cntr_1_cry_9,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNO_0_10_LC_1_5_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1329\,
            in2 => \_gnd_net_\,
            in3 => \N__1245\,
            lcout => cntr_1_10,
            ltout => OPEN,
            carryin => cntr_1_cry_9,
            carryout => cntr_1_cry_10,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNO_0_11_LC_1_5_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1767\,
            in2 => \_gnd_net_\,
            in3 => \N__1242\,
            lcout => cntr_1_11,
            ltout => OPEN,
            carryin => cntr_1_cry_10,
            carryout => cntr_1_cry_11,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNO_0_12_LC_1_5_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1572\,
            in2 => \_gnd_net_\,
            in3 => \N__1239\,
            lcout => cntr_1_12,
            ltout => OPEN,
            carryin => cntr_1_cry_11,
            carryout => cntr_1_cry_12,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_13_LC_1_5_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1733\,
            in2 => \_gnd_net_\,
            in3 => \N__1236\,
            lcout => \cntrZ0Z_13\,
            ltout => OPEN,
            carryin => cntr_1_cry_12,
            carryout => cntr_1_cry_13,
            clk => \N__2373\,
            ce => \N__2266\,
            sr => \_gnd_net_\
        );

    \cntr_14_LC_1_5_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001100000100"
        )
    port map (
            in0 => \N__1734\,
            in1 => \N__1641\,
            in2 => \N__1614\,
            in3 => \N__1233\,
            lcout => \cntrZ0Z_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2373\,
            ce => \N__2266\,
            sr => \_gnd_net_\
        );

    \mode_LC_1_7_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1916\,
            in2 => \_gnd_net_\,
            in3 => \N__1980\,
            lcout => \modeZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2369\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \CONSTANT_ONE_LUT4_LC_1_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \CONSTANT_ONE_NET\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNIM1KP1_11_LC_1_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2214\,
            in3 => \N__2196\,
            lcout => \clk_div_RNIM1KP1Z0Z_11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \rst_cnt_esr_RNI37G6_14_LC_1_8_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2008\,
            lcout => rst_cnt_i_14,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \BUT1_r_RNIKV9M2_LC_1_8_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000010000000000"
        )
    port map (
            in0 => \N__2403\,
            in1 => \N__2009\,
            in2 => \N__2154\,
            in3 => \N__2314\,
            lcout => \BUT1_r_RNIKV9MZ0Z2\,
            ltout => \BUT1_r_RNIKV9MZ0Z2_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \rst_cnt_esr_RNO_0_14_LC_1_8_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101011111010"
        )
    port map (
            in0 => \N__2315\,
            in1 => \_gnd_net_\,
            in2 => \N__1272\,
            in3 => \_gnd_net_\,
            lcout => \N_16_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \LED1_m1_r_LC_2_2_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1001",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1901\,
            in2 => \_gnd_net_\,
            in3 => \N__1256\,
            lcout => \LED1_m1_rZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2380\,
            ce => 'H',
            sr => \N__1269\
        );

    \LED2_m1_r_LC_2_2_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111110101010"
        )
    port map (
            in0 => \N__1955\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1257\,
            lcout => \LED2_m1_rZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2380\,
            ce => 'H',
            sr => \N__1269\
        );

    \cntr_RNITQ4V2_14_LC_2_3_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110000000000000"
        )
    port map (
            in0 => \N__1742\,
            in1 => \N__1603\,
            in2 => \N__1675\,
            in3 => \N__2316\,
            lcout => \cntr_RNITQ4V2Z0Z_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNIGH28_5_LC_2_3_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000100000000000"
        )
    port map (
            in0 => \N__1482\,
            in1 => \N__1378\,
            in2 => \_gnd_net_\,
            in3 => \N__1404\,
            lcout => OPEN,
            ltout => \LED1_m1_r_cnv_7_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNIV9NN2_4_LC_2_3_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__1476\,
            in1 => \N__1431\,
            in2 => \N__1260\,
            in3 => \N__2317\,
            lcout => \cntr_RNIV9NN2Z0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNIKC8M_8_LC_2_4_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__1496\,
            in1 => \N__1341\,
            in2 => \N__1797\,
            in3 => \N__1467\,
            lcout => OPEN,
            ltout => \cntr7lto7_0_4_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNI0LHN_5_LC_2_4_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111000011100000"
        )
    port map (
            in0 => \N__1382\,
            in1 => \N__1430\,
            in2 => \N__1500\,
            in3 => \N__1402\,
            lcout => cntr7lt13,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNI6JK7_6_LC_2_4_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000100000"
        )
    port map (
            in0 => \N__1495\,
            in1 => \N__1418\,
            in2 => \N__1796\,
            in3 => \N__1571\,
            lcout => \LED1_m1_r_cnv_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNINC5L_4_LC_2_4_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0010000000000000"
        )
    port map (
            in0 => \N__1766\,
            in1 => \N__1355\,
            in2 => \N__1741\,
            in3 => \N__1328\,
            lcout => \LED1_m1_r_cnv_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNIJEUK_10_LC_2_4_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000100000000000"
        )
    port map (
            in0 => \N__1570\,
            in1 => \N__1765\,
            in2 => \_gnd_net_\,
            in3 => \N__1327\,
            lcout => cntr7lto7_0_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNI2AR_1_LC_2_4_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__1461\,
            in1 => \N__1288\,
            in2 => \N__1446\,
            in3 => \N__1311\,
            lcout => cntr7lt5_3,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_RNIIQR_4_LC_2_4_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101011111000"
        )
    port map (
            in0 => \N__1417\,
            in1 => \N__1401\,
            in2 => \N__1383\,
            in3 => \N__1354\,
            lcout => cntr7lto7_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \cntr_0_LC_2_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1313\,
            lcout => \cntrZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => \N__2268\,
            sr => \_gnd_net_\
        );

    \cntr_10_LC_2_5_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000101000101010"
        )
    port map (
            in0 => \N__1335\,
            in1 => \N__1737\,
            in2 => \N__1662\,
            in3 => \N__1605\,
            lcout => \cntrZ0Z_10\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => \N__2268\,
            sr => \_gnd_net_\
        );

    \cntr_1_LC_2_5_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1292\,
            in2 => \_gnd_net_\,
            in3 => \N__1314\,
            lcout => \cntrZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => \N__2268\,
            sr => \_gnd_net_\
        );

    \cntr_9_LC_2_5_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000110001001100"
        )
    port map (
            in0 => \N__1736\,
            in1 => \N__1803\,
            in2 => \N__1664\,
            in3 => \N__1607\,
            lcout => \cntrZ0Z_9\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => \N__2268\,
            sr => \_gnd_net_\
        );

    \cntr_11_LC_2_5_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011011100000000"
        )
    port map (
            in0 => \N__1604\,
            in1 => \N__1645\,
            in2 => \N__1748\,
            in3 => \N__1773\,
            lcout => \cntrZ0Z_11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => \N__2268\,
            sr => \_gnd_net_\
        );

    \cntr_12_LC_2_5_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000110001001100"
        )
    port map (
            in0 => \N__1735\,
            in1 => \N__1683\,
            in2 => \N__1663\,
            in3 => \N__1606\,
            lcout => \cntrZ0Z_12\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => \N__2268\,
            sr => \_gnd_net_\
        );

    \rst_cnt_0_LC_2_7_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2328\,
            in1 => \N__1542\,
            in2 => \N__1557\,
            in3 => \N__1556\,
            lcout => \rst_cntZ0Z_0\,
            ltout => OPEN,
            carryin => \bfn_2_7_0_\,
            carryout => un1_rst_cnt_1_cry_0,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_1_LC_2_7_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2321\,
            in1 => \N__1536\,
            in2 => \_gnd_net_\,
            in3 => \N__1530\,
            lcout => \rst_cntZ0Z_1\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_0,
            carryout => un1_rst_cnt_1_cry_1,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_2_LC_2_7_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2329\,
            in1 => \N__1527\,
            in2 => \_gnd_net_\,
            in3 => \N__1521\,
            lcout => \rst_cntZ0Z_2\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_1,
            carryout => un1_rst_cnt_1_cry_2,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_3_LC_2_7_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2322\,
            in1 => \N__1518\,
            in2 => \_gnd_net_\,
            in3 => \N__1512\,
            lcout => \rst_cntZ0Z_3\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_2,
            carryout => un1_rst_cnt_1_cry_3,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_4_LC_2_7_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2330\,
            in1 => \N__1509\,
            in2 => \_gnd_net_\,
            in3 => \N__1503\,
            lcout => \rst_cntZ0Z_4\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_3,
            carryout => un1_rst_cnt_1_cry_4,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_5_LC_2_7_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2323\,
            in1 => \N__1875\,
            in2 => \_gnd_net_\,
            in3 => \N__1869\,
            lcout => \rst_cntZ0Z_5\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_4,
            carryout => un1_rst_cnt_1_cry_5,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_6_LC_2_7_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2331\,
            in1 => \N__1866\,
            in2 => \_gnd_net_\,
            in3 => \N__1860\,
            lcout => \rst_cntZ0Z_6\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_5,
            carryout => un1_rst_cnt_1_cry_6,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_7_LC_2_7_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2324\,
            in1 => \N__1857\,
            in2 => \_gnd_net_\,
            in3 => \N__1851\,
            lcout => \rst_cntZ0Z_7\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_6,
            carryout => un1_rst_cnt_1_cry_7,
            clk => \N__2370\,
            ce => 'H',
            sr => \N__1982\
        );

    \rst_cnt_8_LC_2_8_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2327\,
            in1 => \N__1848\,
            in2 => \_gnd_net_\,
            in3 => \N__1842\,
            lcout => \rst_cntZ0Z_8\,
            ltout => OPEN,
            carryin => \bfn_2_8_0_\,
            carryout => un1_rst_cnt_1_cry_8,
            clk => \N__2368\,
            ce => 'H',
            sr => \N__1981\
        );

    \rst_cnt_9_LC_2_8_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2320\,
            in1 => \N__1839\,
            in2 => \_gnd_net_\,
            in3 => \N__1833\,
            lcout => \rst_cntZ0Z_9\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_8,
            carryout => un1_rst_cnt_1_cry_9,
            clk => \N__2368\,
            ce => 'H',
            sr => \N__1981\
        );

    \rst_cnt_10_LC_2_8_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2325\,
            in1 => \N__1830\,
            in2 => \_gnd_net_\,
            in3 => \N__1824\,
            lcout => \rst_cntZ0Z_10\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_9,
            carryout => un1_rst_cnt_1_cry_10,
            clk => \N__2368\,
            ce => 'H',
            sr => \N__1981\
        );

    \rst_cnt_11_LC_2_8_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2318\,
            in1 => \N__1821\,
            in2 => \_gnd_net_\,
            in3 => \N__1815\,
            lcout => \rst_cntZ0Z_11\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_10,
            carryout => un1_rst_cnt_1_cry_11,
            clk => \N__2368\,
            ce => 'H',
            sr => \N__1981\
        );

    \rst_cnt_12_LC_2_8_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2326\,
            in1 => \N__1812\,
            in2 => \_gnd_net_\,
            in3 => \N__1806\,
            lcout => \rst_cntZ0Z_12\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_11,
            carryout => un1_rst_cnt_1_cry_12,
            clk => \N__2368\,
            ce => 'H',
            sr => \N__1981\
        );

    \rst_cnt_13_LC_2_8_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "0110011011001100"
        )
    port map (
            in0 => \N__2319\,
            in1 => \N__2034\,
            in2 => \_gnd_net_\,
            in3 => \N__2028\,
            lcout => \rst_cntZ0Z_13\,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_12,
            carryout => un1_rst_cnt_1_cry_13,
            clk => \N__2368\,
            ce => 'H',
            sr => \N__1981\
        );

    \un1_rst_cnt_1_cry_13_c_THRU_CRY_0_LC_2_8_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2024\,
            in2 => \GNDG0\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => un1_rst_cnt_1_cry_13,
            carryout => \un1_rst_cnt_1_cry_13_THRU_CRY_0_THRU_CO\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \un1_rst_cnt_1_cry_13_c_THRU_CRY_1_LC_2_8_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2025\,
            in2 => \GNDG0\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \un1_rst_cnt_1_cry_13_THRU_CRY_0_THRU_CO\,
            carryout => \un1_rst_cnt_1_cry_13_THRU_CRY_1_THRU_CO\,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \rst_cnt_esr_14_LC_2_9_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2010\,
            in2 => \_gnd_net_\,
            in3 => \N__2013\,
            lcout => \rst_cntZ0Z_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2371\,
            ce => \N__1995\,
            sr => \N__1983\
        );

    \LED2_obuf_RNO_LC_4_2_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1011101110001000"
        )
    port map (
            in0 => \N__2175\,
            in1 => \N__1929\,
            in2 => \_gnd_net_\,
            in3 => \N__1959\,
            lcout => \LED2_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \LED1_obuf_RNO_LC_4_2_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__1928\,
            in1 => \N__2181\,
            in2 => \_gnd_net_\,
            in3 => \N__1905\,
            lcout => \LED1_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_1_LC_4_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010010101011010"
        )
    port map (
            in0 => \N__2113\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2133\,
            lcout => \clk_divZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2378\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_0_LC_4_6_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2112\,
            lcout => \clk_divZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2378\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNI91U1_1_LC_4_7_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2131\,
            in2 => \N__2114\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_4_7_0_\,
            carryout => clk_div_2_cry_1,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNIF3T2_2_LC_4_7_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2088\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_1,
            carryout => clk_div_2_cry_2,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNIM6S3_3_LC_4_7_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2070\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_2,
            carryout => clk_div_2_cry_3,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNIUAR4_4_LC_4_7_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2052\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_3,
            carryout => clk_div_2_cry_4,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNI7GQ5_5_LC_4_7_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2520\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_4,
            carryout => clk_div_2_cry_5,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNIHMP6_6_LC_4_7_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2502\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_5,
            carryout => clk_div_2_cry_6,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNISTO7_7_LC_4_7_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2484\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_6,
            carryout => clk_div_2_cry_7,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNI86O8_8_LC_4_7_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2466\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_7,
            carryout => clk_div_2_cry_8,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNILFN9_9_LC_4_8_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__2448\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_4_8_0_\,
            carryout => clk_div_2_cry_9,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNIAAMP_10_LC_4_8_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2426\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => clk_div_2_cry_9,
            carryout => clk_div_2_cry_10,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_RNI06L91_11_LC_4_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2192\,
            in2 => \_gnd_net_\,
            in3 => \N__2217\,
            lcout => \clk_div_RNI06L91Z0Z_11\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_11_LC_4_8_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2210\,
            lcout => clk_div_i_11,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2372\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \LED1_m0_r_LC_5_2_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2396\,
            lcout => \LED1_m0_rZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2381\,
            ce => \N__2270\,
            sr => \_gnd_net_\
        );

    \LED2_m0_r_LC_5_2_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2147\,
            lcout => \LED2_m0_rZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2381\,
            ce => \N__2270\,
            sr => \_gnd_net_\
        );

    \BUT2_r_LC_5_2_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__2169\,
            lcout => \BUT2_rZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2381\,
            ce => \N__2270\,
            sr => \_gnd_net_\
        );

    \clk_div_1_cry_1_c_LC_5_7_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2132\,
            in2 => \N__2115\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_5_7_0_\,
            carryout => clk_div_1_cry_1,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_2_LC_5_7_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2087\,
            in2 => \_gnd_net_\,
            in3 => \N__2073\,
            lcout => \clk_divZ0Z_2\,
            ltout => OPEN,
            carryin => clk_div_1_cry_1,
            carryout => clk_div_1_cry_2,
            clk => \N__2379\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_3_LC_5_7_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2069\,
            in2 => \_gnd_net_\,
            in3 => \N__2055\,
            lcout => \clk_divZ0Z_3\,
            ltout => OPEN,
            carryin => clk_div_1_cry_2,
            carryout => clk_div_1_cry_3,
            clk => \N__2379\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_4_LC_5_7_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2051\,
            in2 => \_gnd_net_\,
            in3 => \N__2037\,
            lcout => \clk_divZ0Z_4\,
            ltout => OPEN,
            carryin => clk_div_1_cry_3,
            carryout => clk_div_1_cry_4,
            clk => \N__2379\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_5_LC_5_7_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2519\,
            in2 => \_gnd_net_\,
            in3 => \N__2505\,
            lcout => \clk_divZ0Z_5\,
            ltout => OPEN,
            carryin => clk_div_1_cry_4,
            carryout => clk_div_1_cry_5,
            clk => \N__2379\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_6_LC_5_7_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2501\,
            in2 => \_gnd_net_\,
            in3 => \N__2487\,
            lcout => \clk_divZ0Z_6\,
            ltout => OPEN,
            carryin => clk_div_1_cry_5,
            carryout => clk_div_1_cry_6,
            clk => \N__2379\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_7_LC_5_7_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2483\,
            in2 => \_gnd_net_\,
            in3 => \N__2469\,
            lcout => \clk_divZ0Z_7\,
            ltout => OPEN,
            carryin => clk_div_1_cry_6,
            carryout => clk_div_1_cry_7,
            clk => \N__2379\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_8_LC_5_7_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2465\,
            in2 => \_gnd_net_\,
            in3 => \N__2451\,
            lcout => \clk_divZ0Z_8\,
            ltout => OPEN,
            carryin => clk_div_1_cry_7,
            carryout => clk_div_1_cry_8,
            clk => \N__2379\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_9_LC_5_8_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2447\,
            in2 => \_gnd_net_\,
            in3 => \N__2433\,
            lcout => \clk_divZ0Z_9\,
            ltout => OPEN,
            carryin => \bfn_5_8_0_\,
            carryout => clk_div_1_cry_9,
            clk => \N__2374\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \clk_div_10_LC_5_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2427\,
            in2 => \_gnd_net_\,
            in3 => \N__2430\,
            lcout => \clk_divZ0Z_10\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2374\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \BUT1_r_LC_6_2_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__2415\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \BUT1_rZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2382\,
            ce => \N__2271\,
            sr => \_gnd_net_\
        );
end \INTERFACE\;
