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
-- Temporary view structure for view `provider1customer`
--

DROP TABLE IF EXISTS `provider1customer`;
/*!50001 DROP VIEW IF EXISTS `provider1customer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `provider1customer` AS SELECT 
 1 AS `idNo`,
 1 AS `clientName`,
 1 AS `clientAddress`,
 1 AS `clientEmail`,
 1 AS `birthDate`,
 1 AS `dateJoined`,
 1 AS `serviceProviderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `provider2customer`
--

DROP TABLE IF EXISTS `provider2customer`;
/*!50001 DROP VIEW IF EXISTS `provider2customer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `provider2customer` AS SELECT 
 1 AS `idNo`,
 1 AS `clientName`,
 1 AS `clientAddress`,
 1 AS `clientEmail`,
 1 AS `birthDate`,
 1 AS `dateJoined`,
 1 AS `serviceProviderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customerviewcontract`
--

DROP TABLE IF EXISTS `customerviewcontract`;
/*!50001 DROP VIEW IF EXISTS `customerviewcontract`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `customerviewcontract` AS SELECT 
 1 AS `idNo`,
 1 AS `clientName`,
 1 AS `contractID`,
 1 AS `contractLength`,
 1 AS `serviceProviderID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customermonthlystatement`
--

DROP TABLE IF EXISTS `customermonthlystatement`;
/*!50001 DROP VIEW IF EXISTS `customermonthlystatement`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `customermonthlystatement` AS SELECT 
 1 AS `idNo`,
 1 AS `startDate`,
 1 AS `endDate`,
 1 AS `monthlyFee`,
 1 AS `overChargeFee`,
 1 AS `transAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customerpayment`
--

DROP TABLE IF EXISTS `customerpayment`;
/*!50001 DROP VIEW IF EXISTS `customerpayment`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `customerpayment` AS SELECT 
 1 AS `methodID`,
 1 AS `idNo`,
 1 AS `cardNo`,
 1 AS `expiryDate`,
 1 AS `paid`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `provider1customer`
--

/*!50001 DROP VIEW IF EXISTS `provider1customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `provider1customer` AS select `customer`.`idNo` AS `idNo`,`customer`.`clientName` AS `clientName`,`customer`.`clientAddress` AS `clientAddress`,`customer`.`clientEmail` AS `clientEmail`,`customer`.`birthDate` AS `birthDate`,`customer`.`dateJoined` AS `dateJoined`,`customer`.`serviceProviderID` AS `serviceProviderID` from `customer` where (`customer`.`serviceProviderID` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `provider2customer`
--

/*!50001 DROP VIEW IF EXISTS `provider2customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `provider2customer` AS select `customer`.`idNo` AS `idNo`,`customer`.`clientName` AS `clientName`,`customer`.`clientAddress` AS `clientAddress`,`customer`.`clientEmail` AS `clientEmail`,`customer`.`birthDate` AS `birthDate`,`customer`.`dateJoined` AS `dateJoined`,`customer`.`serviceProviderID` AS `serviceProviderID` from `customer` where (`customer`.`serviceProviderID` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerviewcontract`
--

/*!50001 DROP VIEW IF EXISTS `customerviewcontract`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerviewcontract` AS select `cu`.`idNo` AS `idNo`,`cu`.`clientName` AS `clientName`,`co`.`contractID` AS `contractID`,`co`.`contractLength` AS `contractLength`,`cp`.`serviceProviderID` AS `serviceProviderID` from ((`contract` `co` join `customer` `cu`) join `cellprovidercompany` `cp`) where ((`cu`.`idNo` = `co`.`idNo`) and (`cp`.`serviceProviderID` = `cu`.`serviceProviderID`)) group by `cu`.`idNo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customermonthlystatement`
--

/*!50001 DROP VIEW IF EXISTS `customermonthlystatement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customermonthlystatement` AS select `c`.`idNo` AS `idNo`,`s`.`startDate` AS `startDate`,`s`.`endDate` AS `endDate`,`s`.`monthlyFee` AS `monthlyFee`,`s`.`overChargeFee` AS `overChargeFee`,`t`.`transAmount` AS `transAmount` from ((((`customer` `c` join `statement` `s`) join `transactions` `t`) join `contract` `co`) join `payment` `p`) where ((`c`.`idNo` = `co`.`idNo`) and (`co`.`contractID` = `s`.`contractID`) and (`c`.`idNo` = `p`.`idNo`) and (`p`.`methodID` = `t`.`methodID`)) group by `c`.`idNo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerpayment`
--

/*!50001 DROP VIEW IF EXISTS `customerpayment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerpayment` AS select `payment`.`methodID` AS `methodID`,`payment`.`idNo` AS `idNo`,`payment`.`cardNo` AS `cardNo`,`payment`.`expiryDate` AS `expiryDate`,`payment`.`paid` AS `paid` from `payment` where (`payment`.`idNo` = 10034) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'cellprovider'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-23 18:06:44
