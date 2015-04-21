CREATE TABLE `course_categories` (
  `categoryid` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `categorynumber` varchar(100) DEFAULT NULL,
  `description` longtext CHARACTER SET latin1,
  `categoryparentid` bigint(10) NOT NULL DEFAULT '0',
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createdtime` bigint(10) NOT NULL DEFAULT '0',
  `modifiedtime` bigint(10) NOT NULL DEFAULT '0',
  `categorydepth` bigint(10) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL,
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`categoryid`),
  KEY `ix_cat_parent` (`categoryparentid`) USING BTREE,
  KEY `fk_category_company` (`companyid`),
  CONSTRAINT `fk_category_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `fk_category_parent` FOREIGN KEY (`categoryparentid`) REFERENCES `course_categories` (`categoryid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;