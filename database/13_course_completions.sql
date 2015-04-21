CREATE TABLE `course_completions` (
  `coursecompid` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `courseid` bigint(10) NOT NULL DEFAULT '0',
  `timeenrolled` bigint(10) NOT NULL DEFAULT '0',
  `timestarted` bigint(10) NOT NULL DEFAULT '0',
  `timecompleted` bigint(10) DEFAULT NULL,
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`coursecompid`),
  UNIQUE KEY `courcomp_usecou_uix` (`userid`,`courseid`),
  KEY `courcomp_use_ix` (`userid`),
  KEY `courcomp_cou_ix` (`courseid`),
  KEY `courcomp_tim_ix` (`timecompleted`),
  KEY `fk_cour_comp_company` (`companyid`),
  CONSTRAINT `fk_cour_comp_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `fk_course_comp_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_course_completion` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Course completion records';