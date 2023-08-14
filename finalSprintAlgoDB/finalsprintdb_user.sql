-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: finalsprintdb
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `user_input` varchar(255) DEFAULT NULL,
  `tree` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (14,'45 67 89 01 23 4','{\n\"root\":{\n  \"value\":45,\n  \"left\":{\n    \"value\":1,\n    \"left\":null,\n    \"right\":{\n      \"value\":23,\n      \"left\":{\n        \"value\":4,\n        \"left\":null,\n        \"right\":null\n      },\n      \"right\":null\n    }\n  },\n  \"right\":{\n    \"value\":67,\n    \"left\":null,\n    \"right\":{\n      \"value\":89,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(15,'1 4 5 6 7 9 30','{\n\"root\":{\n  \"value\":1,\n  \"left\":null,\n  \"right\":{\n    \"value\":4,\n    \"left\":null,\n    \"right\":{\n      \"value\":5,\n      \"left\":null,\n      \"right\":{\n        \"value\":6,\n        \"left\":null,\n        \"right\":{\n          \"value\":7,\n          \"left\":null,\n          \"right\":{\n            \"value\":9,\n            \"left\":null,\n            \"right\":{\n              \"value\":30,\n              \"left\":null,\n              \"right\":null\n            }\n          }\n        }\n      }\n    }\n  }\n}\n}'),(16,'112 113 117 118 120 112','{\n\"root\":{\n  \"value\":112,\n  \"left\":null,\n  \"right\":{\n    \"value\":113,\n    \"left\":null,\n    \"right\":{\n      \"value\":117,\n      \"left\":null,\n      \"right\":{\n        \"value\":118,\n        \"left\":null,\n        \"right\":{\n          \"value\":120,\n          \"left\":null,\n          \"right\":null\n        }\n      }\n    }\n  }\n}\n}'),(17,'1 4 7 9 10 13','{\n\"root\":{\n  \"value\":1,\n  \"left\":null,\n  \"right\":{\n    \"value\":4,\n    \"left\":null,\n    \"right\":{\n      \"value\":7,\n      \"left\":null,\n      \"right\":{\n        \"value\":9,\n        \"left\":null,\n        \"right\":{\n          \"value\":10,\n          \"left\":null,\n          \"right\":{\n            \"value\":13,\n            \"left\":null,\n            \"right\":null\n          }\n        }\n      }\n    }\n  }\n}\n}'),(18,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(19,'45 67 89 01 23 4','{\n\"root\":{\n  \"value\":45,\n  \"left\":{\n    \"value\":1,\n    \"left\":null,\n    \"right\":{\n      \"value\":23,\n      \"left\":{\n        \"value\":4,\n        \"left\":null,\n        \"right\":null\n      },\n      \"right\":null\n    }\n  },\n  \"right\":{\n    \"value\":67,\n    \"left\":null,\n    \"right\":{\n      \"value\":89,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(20,'45 67 89 01 23 4','{\n\"root\":{\n  \"value\":45,\n  \"left\":{\n    \"value\":1,\n    \"left\":null,\n    \"right\":{\n      \"value\":23,\n      \"left\":{\n        \"value\":4,\n        \"left\":null,\n        \"right\":null\n      },\n      \"right\":null\n    }\n  },\n  \"right\":{\n    \"value\":67,\n    \"left\":null,\n    \"right\":{\n      \"value\":89,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(21,'45 67 89 01 23 4','{\n\"root\":{\n  \"value\":45,\n  \"left\":{\n    \"value\":1,\n    \"left\":null,\n    \"right\":{\n      \"value\":23,\n      \"left\":{\n        \"value\":4,\n        \"left\":null,\n        \"right\":null\n      },\n      \"right\":null\n    }\n  },\n  \"right\":{\n    \"value\":67,\n    \"left\":null,\n    \"right\":{\n      \"value\":89,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(22,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(23,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(24,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(25,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(26,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(27,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(28,'1 4 5 6 7 9 30','{\n\"root\":{\n  \"value\":1,\n  \"left\":null,\n  \"right\":{\n    \"value\":4,\n    \"left\":null,\n    \"right\":{\n      \"value\":5,\n      \"left\":null,\n      \"right\":{\n        \"value\":6,\n        \"left\":null,\n        \"right\":{\n          \"value\":7,\n          \"left\":null,\n          \"right\":{\n            \"value\":9,\n            \"left\":null,\n            \"right\":{\n              \"value\":30,\n              \"left\":null,\n              \"right\":null\n            }\n          }\n        }\n      }\n    }\n  }\n}\n}'),(29,'1 4 5 6 7 9 30','{\n\"root\":{\n  \"value\":1,\n  \"left\":null,\n  \"right\":{\n    \"value\":4,\n    \"left\":null,\n    \"right\":{\n      \"value\":5,\n      \"left\":null,\n      \"right\":{\n        \"value\":6,\n        \"left\":null,\n        \"right\":{\n          \"value\":7,\n          \"left\":null,\n          \"right\":{\n            \"value\":9,\n            \"left\":null,\n            \"right\":{\n              \"value\":30,\n              \"left\":null,\n              \"right\":null\n            }\n          }\n        }\n      }\n    }\n  }\n}\n}'),(30,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(31,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(32,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(33,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(34,'10 5 15 20','{\n\"root\":{\n  \"value\":10,\n  \"left\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":15,\n    \"left\":null,\n    \"right\":{\n      \"value\":20,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(35,' 4 5 7 12 45 89 1 54','{\n\"root\":{\n  \"value\":4,\n  \"left\":{\n    \"value\":1,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":{\n      \"value\":7,\n      \"left\":null,\n      \"right\":{\n        \"value\":12,\n        \"left\":null,\n        \"right\":{\n          \"value\":45,\n          \"left\":null,\n          \"right\":{\n            \"value\":89,\n            \"left\":{\n              \"value\":54,\n              \"left\":null,\n              \"right\":null\n            },\n            \"right\":null\n          }\n        }\n      }\n    }\n  }\n}\n}'),(36,' 4 5 7 12 45 89 1 54','{\n\"root\":{\n  \"value\":4,\n  \"left\":{\n    \"value\":1,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":{\n      \"value\":7,\n      \"left\":null,\n      \"right\":{\n        \"value\":12,\n        \"left\":null,\n        \"right\":{\n          \"value\":45,\n          \"left\":null,\n          \"right\":{\n            \"value\":89,\n            \"left\":{\n              \"value\":54,\n              \"left\":null,\n              \"right\":null\n            },\n            \"right\":null\n          }\n        }\n      }\n    }\n  }\n}\n}'),(37,' 4 5 7 12 45 89 1 54','{\n\"root\":{\n  \"value\":4,\n  \"left\":{\n    \"value\":1,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":5,\n    \"left\":null,\n    \"right\":{\n      \"value\":7,\n      \"left\":null,\n      \"right\":{\n        \"value\":12,\n        \"left\":null,\n        \"right\":{\n          \"value\":45,\n          \"left\":null,\n          \"right\":{\n            \"value\":89,\n            \"left\":{\n              \"value\":54,\n              \"left\":null,\n              \"right\":null\n            },\n            \"right\":null\n          }\n        }\n      }\n    }\n  }\n}\n}'),(38,'1 2 3 4 5 6 7 ','{\n\"root\":{\n  \"value\":1,\n  \"left\":null,\n  \"right\":{\n    \"value\":2,\n    \"left\":null,\n    \"right\":{\n      \"value\":3,\n      \"left\":null,\n      \"right\":{\n        \"value\":4,\n        \"left\":null,\n        \"right\":{\n          \"value\":5,\n          \"left\":null,\n          \"right\":{\n            \"value\":6,\n            \"left\":null,\n            \"right\":{\n              \"value\":7,\n              \"left\":null,\n              \"right\":null\n            }\n          }\n        }\n      }\n    }\n  }\n}\n}'),(39,'1 2 3 4 5 6 7 ','{\n\"root\":{\n  \"value\":1,\n  \"left\":null,\n  \"right\":{\n    \"value\":2,\n    \"left\":null,\n    \"right\":{\n      \"value\":3,\n      \"left\":null,\n      \"right\":{\n        \"value\":4,\n        \"left\":null,\n        \"right\":{\n          \"value\":5,\n          \"left\":null,\n          \"right\":{\n            \"value\":6,\n            \"left\":null,\n            \"right\":{\n              \"value\":7,\n              \"left\":null,\n              \"right\":null\n            }\n          }\n        }\n      }\n    }\n  }\n}\n}'),(40,'1 4 5 6 7 9 30','{\n\"root\":{\n  \"value\":1,\n  \"left\":null,\n  \"right\":{\n    \"value\":4,\n    \"left\":null,\n    \"right\":{\n      \"value\":5,\n      \"left\":null,\n      \"right\":{\n        \"value\":6,\n        \"left\":null,\n        \"right\":{\n          \"value\":7,\n          \"left\":null,\n          \"right\":{\n            \"value\":9,\n            \"left\":null,\n            \"right\":{\n              \"value\":30,\n              \"left\":null,\n              \"right\":null\n            }\n          }\n        }\n      }\n    }\n  }\n}\n}'),(41,'45 23 65 78','{\n\"root\":{\n  \"value\":45,\n  \"left\":{\n    \"value\":23,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":65,\n    \"left\":null,\n    \"right\":{\n      \"value\":78,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(42,'45 23 65 78','{\n\"root\":{\n  \"value\":45,\n  \"left\":{\n    \"value\":23,\n    \"left\":null,\n    \"right\":null\n  },\n  \"right\":{\n    \"value\":65,\n    \"left\":null,\n    \"right\":{\n      \"value\":78,\n      \"left\":null,\n      \"right\":null\n    }\n  }\n}\n}'),(43,'67 45 34 23 12','{\n\"root\":{\n  \"value\":67,\n  \"left\":{\n    \"value\":45,\n    \"left\":{\n      \"value\":34,\n      \"left\":{\n        \"value\":23,\n        \"left\":{\n          \"value\":12,\n          \"left\":null,\n          \"right\":null\n        },\n        \"right\":null\n      },\n      \"right\":null\n    },\n    \"right\":null\n  },\n  \"right\":null\n}\n}');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-13  7:53:06