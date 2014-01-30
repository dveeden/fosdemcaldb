-- MySQL dump 10.13  Distrib 5.7.2-m12, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: fosdemcal
-- ------------------------------------------------------
-- Server version	5.7.2-m12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calname` varchar(100) DEFAULT NULL,
  `summary` varchar(200) DEFAULT NULL,
  `dtstart` datetime DEFAULT NULL,
  `dtend` datetime DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `calnam` (`calname`),
  FULLTEXT KEY `ft_sum_desc` (`summary`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'MySQL devroom','Welcome in the MySQL & Friends Devroom 2014','2014-02-01 11:00:00','2014-02-01 11:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/welcome_mysql2014/','Open and welcome session'),(2,'MySQL devroom','Getting started with MySQL Performance Schema','2014-02-01 11:05:00','2014-02-01 11:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/mysql_ps/','Getting started with MySQL Performance Schema - a short overview of features available by default with zero efforts from user and zero config as well.'),(3,'MySQL devroom','mysqlv8udfs - Writing MySQL UDFs in Javascript','2014-02-01 11:35:00','2014-02-01 12:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/mysqlv8udfs/','MySQL offers two paths for users who want to add custom functions: SQL stored routines (SRs) and user-defined functions (UDFs).SRs are simple to create, safe to execute, and offer features such as SQL queries. Their downside is poor performance, clunky syntax, and no support for aggregate functions. UDFs are harder to create and can be unsafe. However, performance is about as fast as it ever gets. UDFs do support aggregate functions.'),(4,'MySQL devroom','Galera Cluster IRL','2014-02-01 12:05:00','2014-02-01 12:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/galera_irl/','Galera Cluster is a synchronous multi-master cluster for MySQL which allows you to synchronously replicate your data to every node in the cluster. Galera Cluster makes the life of a DBA easier with features like automatic node joining, electing donor nodes, and automatic node removal once a node has failed. There is no need to distinguish master and slave relations in your application as all nodes in the cluster are writable. Consider all nodes in the cluster as one big MySQL database server.The session will include design choices, lessons learned, and the pitfalls us at Spil Games fell into.'),(5,'MySQL devroom','15 Tips to improve your Galera Cluster','2014-02-01 12:35:00','2014-02-01 13:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/15_tips_galera/','15 tips to boost your Galera Cluster.'),(6,'MySQL devroom','Advanced Fulltext Search with Sphinx','2014-02-01 13:05:00','2014-02-01 13:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/fulltextsearch_sphinx/','Sphinx is one of the best open-source alternative to replace MySQLs full text indices. This is not only because of its superior speed and smaller resource usage, but also because it provides extended features for full text searching, which are not available on MySQL FTS indices.'),(7,'MySQL devroom','MariaDB Connect Storage Engine','2014-02-01 13:35:00','2014-02-01 14:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/mariadb_connect_engine/','The MariaDB CONNECT Storage Engine allows access to various file formats (CSV, XML, Excel, etc). It give access to any ODBC data sources (Oracle, DB2, SQLServer, etc). Also, it allows access to remote MySQL tables. A CONNECT table itself can be a set of remote MySQL tables. This opens the door to interesting distributed architectures that can help to address big data.We will show practical examples of how the MariaDB CONNECT Storage Engine can help you get benefits from your existing data sources.'),(8,'MySQL devroom','Incompatible changes proposed in MySQL 5.7','2014-02-01 14:05:00','2014-02-01 14:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/incompatible_changes_57/','For MySQL 5.7, one of the engineering goals is to continue to clean up and simplify code, and improve the architecture of the MySQL Server.As part of this spring cleaning process, some features in MySQL 5.7 had a change in behaviour; for example the EXPLAIN PARTITIONS and EXPLAIN EXTENDED syntax will be enabled by default. Other features will be deprecated and may be removed; for example the InnoDB Monitor tables.This session aims to describe the motivations behind each of these changes proposed, and how they will affect those that administrate MySQL servers.'),(9,'MySQL devroom','Inside MySQL 5.7 Replication Features','2014-02-01 14:35:00','2014-02-01 15:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/inisde57_replication/','The new replication features in MySQL 5.7 help users to further reduce downtime, thus increasing data and service availability. Moreover, they consolidate MySQL as a perfect fit for distributed environments such as elastic clouds.'),(10,'MySQL devroom','Handling failover with MySQL 5.6 and Global Transaction IDs','2014-02-01 15:05:00','2014-02-01 15:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/mysql56_gtid/','Global Transaction IDs (GTIDs) are a new feature of MySQL 5.6 that can ease failover. Discover the benefits and challenges of GTIDs.'),(11,'MySQL devroom','Spider Storage Engine','2014-02-01 15:35:00','2014-02-01 16:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/spider_storage_engine/','Spider is a storage engine for database sharding for MySQL/MariaDB. Spider is already bundled in MariaDB 10.0. I will introduce Spider and new topics.'),(12,'MySQL devroom','Sharding and Scale-out using MySQL Fabric','2014-02-01 16:05:00','2014-02-01 16:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/sharding_fabric/','MySQL Fabric is an open-source solution released by the MySQL Engineering team at Oracle. It makes management of MySQL server farms easy and available for both applications with small and large number of servers.'),(13,'MySQL devroom','Troubleshooting performance problems in MySQL','2014-02-01 16:35:00','2014-02-01 17:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/trouble_mysql/','It is a typical day at work when suddenly someone notices that the application loads slow. They immediately switch to complaining about database performance and demand that you find the problem and fix it. But how to verify the problem is really with the database? What are the common symptoms and where to look for them? And how to isolate the culprit?The session will discuss the practical approach to troubleshooting performance problems in MySQL: where to start the investigation, what information to look at and how to interpret it. I will also be talking about useful tools and preparing the environment for effective troubleshooting.'),(14,'MySQL devroom','ProxySQL : High Availability and High Performance Proxy for MySQL','2014-02-01 17:05:00','2014-02-01 17:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/proxysql/','There are excellent Enterprise software which are able to scale out and boost performances of a cluster, but none open source. ProxySQL is a new proxy (currently under development) that aims to become the first open source proxy in the MySQL ecosystem able to provide HA and high performance with no changes in the application, using several built-in features and integration with clustering software.'),(15,'MySQL devroom','Practical sysbench','2014-02-01 17:35:00','2014-02-01 18:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/lepeterborosrulez/','This session will be about benchmarking MySQL and disk IO subsystems with sysbench and interpreting the results. In our consulting company, I helped a reasonable number of customers with sysbench so I know the common caveats most people run into. This talk will cover benchmarking IO subsystems with fileio tests, as well as benchmarking MySQL.'),(16,'MySQL devroom','OSM data in MySQL','2014-02-01 18:05:00','2014-02-01 18:35:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/osm_mysql/','So far the main workhorse database for OpenStreeMap data was PostgreSQL/PostGIS. With the GIS improvements in latest MySQL and MariaDB releases, especially having true spatial relationship functions instead of just max bounding rectangle (MBR) based ones, have become viable alternatives though. This talk is going to present the most important improvements, a MySQL backend for the osm2pgsql importer tool, and some sample applications including performance comparisons.'),(17,'MySQL devroom','MaxScale, the Pluggable Router','2014-02-01 18:35:00','2014-02-01 19:05:00','UA2.114 (Baudoux)','https:/fosdem.org/2014/schedule/2014/schedule/event/maxscale/','Flexible database clusters impose challenges in terms of load balancing, load splitting, write conflict avoidance, and service availability to name a few.MaxScale is a highly modular proxy with a pluggable API, which assists in offloading tasks away from both clients and the back-end servers. In its simplest form it acts as a non-blocking zero-copy load balancer for read-only connections, while in the other extreme it examines packets and parses queries, which are then processed according to the dynamically changeable rules exposed by plugged-in modules.');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-30 23:00:30
