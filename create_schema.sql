CREATE DATABASE fosdemcal;
USE fosdemcal;
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
  FULLTEXT KEY `ft_sum_desc` (`summary`, `description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
