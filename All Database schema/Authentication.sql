-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: Authentication
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_table` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(300) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'Meet','meet@gmail.com','undefined',0),(2,'parth','parth@gmail.com','$2a$10$JAX2XJLXEoWy0jwVEXFOTugIPreSNYTSYb/PicK5zhhnvJn7mx0mm',0),(3,'parth','parth@gmail.com','$2a$10$O3rLdTwcHKz8zqOktV5EoeviG9uGqkFzJ.eqKTfUtxsO9d72NsGJi',0),(4,'parth','parth@gmail.com','$2a$10$v705NaS3llPYBSPJsfTcI.AiUNeQBMhnXF43xYGFA1oRoLcQ8HXzS',0),(5,'parth','parth@gmail.com','$2a$10$JhM6eTzSQUxPQI8nN3UFBOmuCE1x9SgnfLpHczNCyzXPBcRf5sU5K',0),(6,'parth','parth@gmail.com','$2a$10$Kiypj2CwTXcSqm51Vb16y.t.zZi/2k1ZeJeh3RkXZW8W.NqxY9AZO',0),(7,'Nisarg','nisarg@gmail.com','$2a$10$AYidvqrimr73jB.nb3J0p.AEtwJCeFfqmWEEIS.KvKiJxfdfcyg5u',0),(8,'sagar','sagar@gmail.com','$2a$10$ahTaJAr8y3KIfKmaVv51Su9V1FHlMHEoYZY1BUVmr6wfHZIn35nBa',0),(9,'','','$2a$10$s5n4T57w4rY2vSxfxAw9vubX/HdqPgtM6Eknk3mb0M/O377v7A6Le',0),(10,'sandhya','sandhya@gmail.com','$2a$10$OnqEV3XaW2n1s77iKGej8uq6F87FwPkpUYgIr8lYLqY.qvdg1DNwW',0),(11,'jay','jay@gmail.com','$2a$10$qsR8ljayTZExUbrIYAbOROPNiWE6yaKnr0yxdZSzzObjVQGXiHby.',0),(12,'sandhya','sandhya@gmail.com','$2a$10$dC3./gwFtArsNnwt85peWeQY7Mp8TwHwwRrdhiMG9LTfFSsuv7Le2',0),(13,'','sagar@gmail.com','$2a$10$E4zYfUDObZtZ9IEvMyim5OIsxxI/z5OmzfgKxl1nYLzYy69eN9tNq',1),(14,'','sagar@gmail.com','$2a$10$QpEZkL7Mz4j67Nrb17BFzubd43Vmm/uLVV6m8QjGh8ypmNtrxedce',1),(15,'','','$2a$10$zwIgal.0/BSkelWGm01QqOLgy6lApZMW5jv5fpDP3MCWLkPZJhYbe',0),(16,'','','$2a$10$kuIIsrhHtXVxV23myPyrgOtRvBmaMuDjNNhvsul.nbA4GEK79Oqp2',0),(17,'','sagar@gmail.com','$2a$10$.58My.TEyve5oeuCV1GO5Oo9YOn3XrMreJlDny2i6vGm.L7jgsIS2',1),(18,'','','$2a$10$Oh6Q7jd2oGoMoBT3hLVRVeLBS0DEy4LIDjSwIlMRDiWqj1WRyvEa.',0),(19,'','sagar@gmail.com','$2a$10$LqiS3RLR4FSX7qGp3W/P.O2Sqwk4dCqXY4mf0rFhcjZ3eC.QDquz.',1),(20,'Meet','','$2a$10$A.9.ZCqJJGubl2ONkiGmHebWj91L/Mub0RvNQPrAckuNe1G3jh0oG',0),(21,'asasas','i@gmail.com','$2a$10$6c6Kd83oTAKk9zjJzFAXo.jmkVbfFMshCoWCQJ.KcnnzxW0bWPBMK',0),(22,'','we','$2a$10$6FUyGubH/tw.XiU5k.U7cum6wRhusAAInt0RRQluRAJd0Qv5csS/e',0),(23,'','we','$2a$10$fERReA2wt.TTLuOE1B46oeT71CXkcIhaMchWDPwXNfHPt2KndcvIe',0),(24,'Meet','sagar@gmail.com','$2a$10$jJm7yNlUoitqjoiRBWAXe.FmNcnVyWmb0Wr1o3qClt61eCJ8Zgb1W',1),(25,'Meet','','$2a$10$Nr8BI7nyLM1oQ/lMY5eb.uN0FPxYkZl5t6OExhWiRwICe1WniJFoG',0),(26,'parth','','$2a$10$wfbk3d9iSuh1YIHeWb0v2efqn2fUzJfRrdyghUQLCj4Q7b2xH6vJW',0),(27,'asasas','gunjan@gmail.com','$2a$10$IcNSG3II6atPJoxEOkr0kuYzbNRcGGJFLhnge.8zbx42yyNdKx7Km',0),(28,'jaykant','jaykant@gmail.com','$2a$10$YPOt5wXYTgmJ4QcPyWZanO5tDjxOuljBCIoKqZWQs1s4.N5XhE3eG',0),(29,'jaykant','jaykant@gmail.com','$2a$10$PDCvXax/bawXHai9EAfilub7mA5NyFANX9ASEaFNlNEnfXCHYNtTW',0),(30,'prachi','prachi@gmail.com','$2a$10$A.RPcLDL33ujbh/48SnpaejWTv7pzAYQ0FpNz52LAEGSi0fqiISFC',0),(31,'vishwa','vishwa@gmail.com','$2a$10$t1BXVkI3mVXuOHTTEblKROVxwFg6aNYdaYgqNbzK4hpwcF3Ia8tia',0),(32,'sahil','sahil@gmail.com','$2a$10$1/VsIMcKhO2EThk/9zth3OGGX0DRonjWoCaQNRpbGcA/l3zRRNxZm',0),(33,'sahil','sahil@gmail.com','$2a$10$oU97e9PrO/7QquuhE9SJv.hKguR9id3Pa9saQBo48K1dl7ZDp6FkK',0),(34,'sahil','sahil@gmail.com','$2a$10$0NUg7jl8NR5Zei9Ud9yCDONLV2ACfcNuZ1SAfEm8u0Lv913sBu3o2',0),(35,'masni','masni@gmail.com','$2a$10$g6J6J/6a1MUuo4zZSTbGceCMcykYQErxStCBVQ0uKXaN2r5.442.C',0),(36,'chintan','chintan@gmail.com','$2a$10$0yUnB/HBuYPHLJ/7Hqp3DuhZpgDMBSw0QzR2A4qNUy2jIZw7m7a5q',0),(37,'nandini','nan@gmail.com','$2a$10$FE4kP1sVpgxOi2eQtsCgS.uMgnSYjCU01.UbZwsJXNQdHY65B7AyO',0),(38,'kinjal','kin@gmail.vom','$2a$10$A.yCkaIdCwIIjWEYGJd/Q.NvpDvIQqYYJHNpQyKMEolQiHAXDqMIu',0),(39,'test1','test1@gmail.com','$2a$10$8CkS0AK2k8A8V.ufdknPku4a30t5pJ8QDZ3FLn.Zeco6O5Y63dHNC',0),(40,'test2','test@gmail.com','$2a$10$Ze5iKvafgznA8w7t547lg.MwfL01RCadFkKTzymvIQnAW.yctxPEy',0),(41,'test3','test3@gmail.com','$2a$10$zoQoCy3TaheVSG3XevpGweSS4LwAKB2uGwH0qkSEtdohAZeeqa9Le',0),(42,'test4','test4@gmail.com','$2a$10$k2wgtLWx5jX3rmiVzImj9uk.c9P8YRNLa.ehMBCe6LU7j8OEJd8se',1),(43,'test5','test5@gmail.com','$2a$10$OHv8VkSnV3tJe.TNStg3beu1Ous9o6iXbtEqdMuvBb8VU6yR/yN.O',1),(44,'test6','test6@gmail.com','$2a$10$4lAFwSXCH980ScU0MRnGxu0Pbu/JuqID6uTVsMIKjTCs7UssmaT.W',1),(45,'test7','test7@gmail.com','$2a$10$wpwcDAw5z9S/HFqKKx082.JVb7VgaAvuamxqUkuvm/0cOFAkJXuNK',1),(46,'test8','test8@gmail.com','$2a$10$kFr/97J7zqiUSbbBeDWHc.oaGbKEGCiK/x2BWzJTbAJM2BHJGAR32',1),(47,'test9','test9@gmail.com','$2a$10$xwkJs4TK/GIVxt9HKIYL4OSmiIN8FNlsgkd6cxMLStJ0vwoyLry6a',1),(48,'testsagar','testsagar@gmail.com','$2a$10$hOIbc/70DHUO.iJ.AUblounOLvFvQbqUYgt9c49aiV7HHU7Q6V5MG',1),(49,'test10','test10@gmail.com','$2a$10$sxkTJVCUH/lmhj4DCfK4iOJar1RwEuk...hNhB4IfRHEcTrLdxARe',1),(50,'test12','test12@gmail.com','$2a$10$bfR.a0vpweMA4HssLjnhIOPfefW8aHCbR0YXDxzjIQqrMNOGxSJaC',1),(51,'test13','test13@gmail.com','$2a$10$c530APUlIqePqETUzOMx5ObqqOxnrOBm5qXX5lBSGvA0fw1e83wfe',1),(52,'test14','test14@gmail.com','$2a$10$n3ZfRb6EYoqGeoB/nR7Tce.eCn2KGd3m/NySE0b/EQaVyiAZtBte.',1),(53,'test15','test15@gmail.com','$2a$10$cbtW7HcHVLhPDKu3zLVjSuOrrRD5UXgfXAvBTEIslhcu6cK62TsdS',1),(54,'test16','test16@gmail.com','$2a$10$x.XT59zuCiYiarwWDjhmVePB7LXyrZB6ie1aTgqgggF4OEkoTkK26',1),(55,'test17','test17@gmail.com','$2a$10$L/6qAJnxWNKLLhUdlYOQ8uRw4cYiZr0nrrq17sf/TkvwSd53tHe3u',1),(56,'test18','test18@gmail.com','$2a$10$fL5h/54ELeLByX./FBsYQOlZDjhTBsjwyy4xTeHWe3eTjyIZrxp5m',0),(57,'test19','test19@gmail.com','$2a$10$iSCVNSYVTbNjfPwMkl6pnu5kNNdXrJ1ydwYgZxM/DrUBl214nXg1a',0),(58,'test19','test19@gmail.com','$2a$10$83PwcEasVfJtphVn9fXWweVYjukOaFcPrN4vIurPSQW3arYT9Ai8K',1),(59,'test20','test20@gmail.com','$2a$10$.CzeFqUpNAFM.1YS4UoVzuuHOUSaEFJ4DKX.MNxeLMUNPRG2mf/Ci',1),(60,'test21','test21@gmail.com','$2a$10$XvRarT5sqBBgYFfnafNQ6O98YeoelqaAyrfOtOnDpSyNYxb4Yz5fu',1),(61,'test24','test24@gmail.com','$2a$10$OdL.gyyvM0vPnkMMNsgKHOk/AEswEqW6ojfV7nBEY60xr/QhvqgjK',1),(62,'test25','test25@gmail.com','$2a$10$MnRWYU1lNcF.tXMiiQ7kOOZw.uxQrKDcYKV5dMV2MWsXmrduff9pq',1),(63,'test26','test26@gmail.com','$2a$10$HvDOMXIaUwhN7zejIe5mS.6yLikEs8JLx00IOnG0hF0eGm1/XVbE.',1),(64,'test28','test28@gmail.com','$2a$10$PDUgcfCwSB3goPOFn6T8pOe.1.m.zOIX8DyG4S35Gnr3QAFI/XIBO',1),(65,'test29','test29@gmail.com','$2a$10$1y.BARK/0TQQZMpRy1ca/OXsnrKaEh40FEzVbFWxgzfASiEZHli6K',1),(66,'test30','test30@gmail.com','$2a$10$./H5ADCZk.ssHyQ6N2hFxO7qUasuTeVPWbj5eNNaGue2msK6lTeBW',1),(67,'nandani','nandani@gmail.com','$2a$10$8mXpN9jciIJTEgrRD.omAeBhozzf3QWtFCMN63rQMoXCB6ovtSCNO',1),(68,'qwqw','test50@gmail.com','$2a$10$RkC/9cgvM4dVzDMC6ZCuXe0tDcKcN347y6vGTCNLDxxuJJUrUilUq',1),(69,'evaluate','evaluate@gmail.com','$2a$10$FYLISxMcp2l10x2zkIH3U.Ik94I7.Qz/afDX6acFuMX6Hvp0I1Q3i',1);
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 18:52:11
