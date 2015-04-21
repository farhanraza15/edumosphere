CREATE TABLE `course_sections` (
  `coursesectionid` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `section` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `summaryformat` tinyint(2) NOT NULL DEFAULT '0',
  `sequence` longtext COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`coursesectionid`),
  UNIQUE KEY `coursect_cousec_uix` (`courseid`,`section`),
  KEY `fk_cour_sec_company` (`companyid`),
  CONSTRAINT `fk_cour_sec_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `fk_course_section` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='each section within a course';