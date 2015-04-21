CREATE TABLE `modules` (
  `moduleid` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT '0',
  `lastcron` bigint(10) NOT NULL DEFAULT '0',
  `search` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`moduleid`),
  KEY `modu_nam_ix` (`name`),
  KEY `fk_module_company` (`companyid`),
  CONSTRAINT `fk_module_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='modules available in the Learning Paltform';