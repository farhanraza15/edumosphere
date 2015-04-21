CREATE TABLE `course_format_options` (
  `formatoptionid` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `format` varchar(21) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionid` bigint(10) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`formatoptionid`),
  UNIQUE KEY `courformopti_couforsec_uix` (`courseid`,`format`,`sectionid`,`name`),
  KEY `courformopti_cou_ix` (`courseid`),
  KEY `fk_cour_form_opt_company` (`companyid`),
  CONSTRAINT `fk_cour_form_opt_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `fk_course_formats` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores format-specific options for the course or course sect';