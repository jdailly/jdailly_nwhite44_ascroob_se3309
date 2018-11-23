-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cellprovider
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `minevent`
--

DROP TABLE IF EXISTS `minevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `minevent` (
  `eventNo` int(10) unsigned NOT NULL,
  `numberMin` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eventNo`),
  CONSTRAINT `MinEvent_ibfk_1` FOREIGN KEY (`eventNo`) REFERENCES `phoneevent` (`eventno`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minevent`
--

LOCK TABLES `minevent` WRITE;
/*!40000 ALTER TABLE `minevent` DISABLE KEYS */;
INSERT INTO `minevent` VALUES (1001,551),(1002,409),(1003,976),(1004,331),(1005,597),(1006,520),(1007,276),(1008,538),(1009,308),(1010,462),(1011,462),(1012,799),(1013,535),(1014,222),(1015,909),(1016,7),(1017,530),(1018,156),(1019,13),(1020,44),(1021,426),(1022,811),(1023,229),(1024,314),(1025,907),(1026,790),(1027,675),(1028,245),(1029,970),(1030,573),(1031,867),(1032,194),(1033,886),(1034,581),(1035,157),(1036,584),(1037,379),(1038,783),(1039,361),(1040,48),(1041,179),(1042,4),(1043,817),(1044,574),(1045,31),(1046,266),(1047,901),(1048,415),(1049,302),(1050,206),(1051,99),(1052,667),(1053,362),(1054,857),(1055,183),(1056,915),(1057,518),(1058,323),(1059,940),(1060,275),(1061,858),(1062,350),(1063,305),(1064,85),(1065,636),(1066,622),(1067,807),(1068,461),(1069,920),(1070,661),(1071,504),(1072,792),(1073,480),(1074,60),(1075,29),(1076,393),(1077,77),(1078,173),(1079,27),(1080,874),(1081,289),(1082,926),(1083,206),(1084,511),(1085,925),(1086,483),(1087,785),(1088,420),(1089,8),(1090,548),(1091,744),(1092,457),(1093,489),(1094,744),(1095,74),(1096,729),(1097,802),(1098,825),(1099,524),(1100,284),(1101,262),(1102,281),(1103,424),(1104,948),(1105,29),(1106,530),(1107,994),(1108,534),(1109,536),(1110,842),(1111,212),(1112,310),(1113,95),(1114,593),(1115,78),(1116,616),(1117,704),(1118,123),(1119,156),(1120,987),(1121,816),(1122,82),(1123,754),(1124,683),(1125,711),(1126,289),(1127,411),(1128,261),(1129,777),(1130,521),(1131,639),(1132,367),(1133,555),(1134,429),(1135,917),(1136,442),(1137,305),(1138,711),(1139,250),(1140,860),(1141,632),(1142,646),(1143,510),(1144,864),(1145,151),(1146,250),(1147,868),(1148,429),(1149,143),(1150,45),(1151,727),(1152,521),(1153,86),(1154,997),(1155,131),(1156,793),(1157,767),(1158,643),(1159,811),(1160,439),(1161,98),(1162,622),(1163,279),(1164,808),(1165,233),(1166,676),(1167,522),(1168,217),(1169,871),(1170,50),(1171,317),(1172,1000),(1173,792),(1174,69),(1175,779),(1176,809),(1177,493),(1178,226),(1179,500),(1180,329),(1181,217),(1182,498),(1183,49),(1184,399),(1185,58),(1186,131),(1187,617),(1188,406),(1189,632),(1190,604),(1191,617),(1192,270),(1193,689),(1194,275),(1195,64),(1196,647),(1197,925),(1198,867),(1199,161),(1200,305),(1201,669),(1202,779),(1203,111),(1204,9),(1205,96),(1206,688),(1207,836),(1208,392),(1209,32),(1210,294),(1211,934),(1212,692),(1213,230),(1214,971),(1215,728),(1216,86),(1217,581),(1218,353),(1219,406),(1220,635),(1221,918),(1222,495),(1223,448),(1224,456),(1225,198),(1226,583),(1227,456),(1228,245),(1229,635),(1230,981),(1231,875),(1232,678),(1233,590),(1234,774),(1235,809),(1236,33),(1237,605),(1238,592),(1239,184),(1240,174),(1241,706),(1242,597),(1243,718),(1244,194),(1245,858),(1246,880),(1247,190),(1248,170),(1249,498),(1250,450),(1251,564),(1252,363),(1253,989),(1254,527),(1255,689),(1256,339),(1257,817),(1258,542),(1259,737),(1260,322),(1261,388),(1262,697),(1263,230),(1264,367),(1265,190),(1266,777),(1267,625),(1268,202),(1269,626),(1270,609),(1271,753),(1272,58),(1273,628),(1274,256),(1275,964),(1276,125),(1277,781),(1278,365),(1279,596),(1280,415),(1281,490),(1282,595),(1283,889),(1284,509),(1285,32),(1286,630),(1287,143),(1288,476),(1289,491),(1290,75),(1291,384),(1292,894),(1293,182),(1294,113),(1295,78),(1296,720),(1297,818),(1298,1000),(1299,445),(1300,35),(1301,506),(1302,420),(1303,281),(1304,487),(1305,978),(1306,266),(1307,139),(1308,983),(1309,668),(1310,313),(1311,714),(1312,7),(1313,817),(1314,695),(1315,531),(1316,597),(1317,458),(1318,721),(1319,11),(1320,806),(1321,848),(1322,653),(1323,169),(1324,292),(1325,460),(1326,382),(1327,137),(1328,92),(1329,34),(1330,89),(1331,95),(1332,268),(1333,75),(1334,149),(1335,237),(1336,833),(1337,329),(1338,918),(1339,988),(1340,975),(1341,752),(1342,407),(1343,224),(1344,231),(1345,489),(1346,852),(1347,247),(1348,377),(1349,333),(1350,515),(1351,981),(1352,469),(1353,48),(1354,397),(1355,264),(1356,550),(1357,3),(1358,163),(1359,321),(1360,430),(1361,238),(1362,314),(1363,984),(1364,314),(1365,540),(1366,603),(1367,548),(1368,836),(1369,612),(1370,686),(1371,149),(1372,812),(1373,269),(1374,754),(1375,637),(1376,85),(1377,320),(1378,455),(1379,120),(1380,523),(1381,756),(1382,113),(1383,237),(1384,861),(1385,64),(1386,670),(1387,897),(1388,670),(1389,419),(1390,975),(1391,215),(1392,342),(1393,594),(1394,541),(1395,269),(1396,589),(1397,142),(1398,678),(1399,174),(1400,221),(1401,997),(1402,660),(1403,870),(1404,502),(1405,349),(1406,39),(1407,618),(1408,273),(1409,26),(1410,719),(1411,418),(1412,967),(1413,446),(1414,602),(1415,91),(1416,540),(1417,931),(1418,210),(1419,111),(1420,616),(1421,169),(1422,816),(1423,746),(1424,30),(1425,728),(1426,789),(1427,710),(1428,837),(1429,585),(1430,983),(1431,570),(1432,336),(1433,181),(1434,23),(1435,131),(1436,541),(1437,154),(1438,222),(1439,605),(1440,415),(1441,823),(1442,436),(1443,454),(1444,246),(1445,951),(1446,875),(1447,862),(1448,788),(1449,346),(1450,169),(1451,687),(1452,335),(1453,639),(1454,734),(1455,324),(1456,740),(1457,825),(1458,238),(1459,668),(1460,718),(1461,45),(1462,241),(1463,923),(1464,301),(1465,500),(1466,124),(1467,109),(1468,85),(1469,709),(1470,54),(1471,427),(1472,358),(1473,756),(1474,917),(1475,793),(1476,994),(1477,89),(1478,885),(1479,273),(1480,439),(1481,619),(1482,214),(1483,698),(1484,237),(1485,470),(1486,783),(1487,982),(1488,155),(1489,965),(1490,54),(1491,922),(1492,789),(1493,979),(1494,567),(1495,882),(1496,529),(1497,110),(1498,58),(1499,396),(1500,152),(1501,836),(1502,360),(1503,187),(1504,465),(1505,307),(1506,199),(1507,456),(1508,9),(1509,410),(1510,558),(1511,713),(1512,434),(1513,94),(1514,91),(1515,1),(1516,903),(1517,509),(1518,346),(1519,282),(1520,195),(1521,506),(1522,694),(1523,713),(1524,482),(1525,504),(1526,666),(1527,991),(1528,699),(1529,377),(1530,718),(1531,919),(1532,568),(1533,942),(1534,24),(1535,110),(1536,187),(1537,351),(1538,54),(1539,479),(1540,219),(1541,710),(1542,840),(1543,470),(1544,24),(1545,825),(1546,172),(1547,343),(1548,581),(1549,728),(1550,364),(1551,37),(1552,62),(1553,423),(1554,162),(1555,829),(1556,992),(1557,918),(1558,230),(1559,603),(1560,836),(1561,321),(1562,823),(1563,469),(1564,906),(1565,483),(1566,407),(1567,768),(1568,414),(1569,515),(1570,381),(1571,977),(1572,868),(1573,166),(1574,309),(1575,526),(1576,445),(1577,286),(1578,857),(1579,306),(1580,302),(1581,619),(1582,22),(1583,439),(1584,649),(1585,173),(1586,628),(1587,229),(1588,909),(1589,328),(1590,117),(1591,825),(1592,960),(1593,738),(1594,726),(1595,440),(1596,668),(1597,699),(1598,937),(1599,505),(1600,611),(1601,603),(1602,961),(1603,234),(1604,715),(1605,177),(1606,275),(1607,697),(1608,282),(1609,920),(1610,399),(1611,976),(1612,814),(1613,566),(1614,665),(1615,104),(1616,853),(1617,518),(1618,764),(1619,789),(1620,349),(1621,96),(1622,353),(1623,929),(1624,365),(1625,922),(1626,991),(1627,359),(1628,199),(1629,831),(1630,971),(1631,531),(1632,904),(1633,926),(1634,781),(1635,183),(1636,320),(1637,179),(1638,817),(1639,272),(1640,774),(1641,346),(1642,12),(1643,182),(1644,98),(1645,815),(1646,538),(1647,452),(1648,214),(1649,260),(1650,735),(1651,697),(1652,64),(1653,583),(1654,146),(1655,401),(1656,967),(1657,827),(1658,375),(1659,835),(1660,455),(1661,252),(1662,569),(1663,789),(1664,969),(1665,128),(1666,633),(1667,963),(1668,207),(1669,894),(1670,870),(1671,996),(1672,493),(1673,60),(1674,507),(1675,681),(1676,326),(1677,720),(1678,689),(1679,451),(1680,77),(1681,902),(1682,521),(1683,210),(1684,944),(1685,372),(1686,822),(1687,489),(1688,373),(1689,708),(1690,586),(1691,852),(1692,148),(1693,147),(1694,769),(1695,184),(1696,74),(1697,573),(1698,963),(1699,40),(1700,670),(1701,774),(1702,830),(1703,872),(1704,855),(1705,640),(1706,592),(1707,970),(1708,346),(1709,337),(1710,174),(1711,369),(1712,402),(1713,496),(1714,60),(1715,837),(1716,145),(1717,402),(1718,868),(1719,417),(1720,295),(1721,943),(1722,303),(1723,278),(1724,597),(1725,161),(1726,264),(1727,191),(1728,194),(1729,575),(1730,795),(1731,106),(1732,720),(1733,152),(1734,580),(1735,955),(1736,440),(1737,980),(1738,838),(1739,581),(1740,779),(1741,230),(1742,114),(1743,465),(1744,849),(1745,101),(1746,926),(1747,147),(1748,984),(1749,508),(1750,798),(1751,916),(1752,132),(1753,621),(1754,929),(1755,573),(1756,262),(1757,48),(1758,168),(1759,688),(1760,892),(1761,5),(1762,915),(1763,480),(1764,8),(1765,326),(1766,831),(1767,137),(1768,349),(1769,526),(1770,472),(1771,461),(1772,740),(1773,996),(1774,372),(1775,202),(1776,234),(1777,929),(1778,111),(1779,247),(1780,112),(1781,932),(1782,593),(1783,490),(1784,136),(1785,816),(1786,134),(1787,438),(1788,687),(1789,699),(1790,655),(1791,435),(1792,15),(1793,542),(1794,829),(1795,507),(1796,385),(1797,984),(1798,437),(1799,537),(1800,380),(1801,787),(1802,411),(1803,599),(1804,942),(1805,66),(1806,80),(1807,340),(1808,664),(1809,293),(1810,75),(1811,896),(1812,714),(1813,938),(1814,500),(1815,109),(1816,236),(1817,545),(1818,778),(1819,660),(1820,45),(1821,469),(1822,748),(1823,288),(1824,708),(1825,922),(1826,937),(1827,740),(1828,591),(1829,13),(1830,938),(1831,925),(1832,152),(1833,21),(1834,89),(1835,971),(1836,284),(1837,961),(1838,570),(1839,648),(1840,296),(1841,688),(1842,336),(1843,364),(1844,289),(1845,204),(1846,479),(1847,772),(1848,241),(1849,79),(1850,332),(1851,557),(1852,323),(1853,491),(1854,106),(1855,397),(1856,933),(1857,883),(1858,899),(1859,910),(1860,908),(1861,190),(1862,986),(1863,418),(1864,818),(1865,945),(1866,720),(1867,828),(1868,224),(1869,500),(1870,659),(1871,609),(1872,542),(1873,633),(1874,90),(1875,236),(1876,753),(1877,469),(1878,464),(1879,553),(1880,590),(1881,470),(1882,953),(1883,934),(1884,976),(1885,297),(1886,856),(1887,30),(1888,64),(1889,974),(1890,547),(1891,980),(1892,249),(1893,239),(1894,127),(1895,261),(1896,743),(1897,432),(1898,55),(1899,136),(1900,963),(1901,502),(1902,124),(1903,559),(1904,422),(1905,602),(1906,772),(1907,154),(1908,850),(1909,378),(1910,534),(1911,97),(1912,683),(1913,379),(1914,326),(1915,941),(1916,65),(1917,459),(1918,738),(1919,72),(1920,659),(1921,365),(1922,561),(1923,415),(1924,757),(1925,608),(1926,215),(1927,49),(1928,578),(1929,287),(1930,348),(1931,617),(1932,883),(1933,920),(1934,924),(1935,877),(1936,863),(1937,649),(1938,107),(1939,555),(1940,83),(1941,564),(1942,712),(1943,958),(1944,417),(1945,634),(1946,748),(1947,994),(1948,595),(1949,503),(1950,742),(1951,739),(1952,313),(1953,944),(1954,243),(1955,123),(1956,859),(1957,104),(1958,449),(1959,522),(1960,497),(1961,67),(1962,302),(1963,718),(1964,294),(1965,614),(1966,491),(1967,19),(1968,45),(1969,344),(1970,76),(1971,450),(1972,257),(1973,632),(1974,860),(1975,864),(1976,347),(1977,667),(1978,219),(1979,733),(1980,225),(1981,886),(1982,306),(1983,365),(1984,48),(1985,971),(1986,12),(1987,805),(1988,144),(1989,190),(1990,336),(1991,124),(1992,288),(1993,771),(1994,48),(1995,45),(1996,244),(1997,114),(1998,890),(1999,92),(2000,956);
/*!40000 ALTER TABLE `minevent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-23 18:06:43