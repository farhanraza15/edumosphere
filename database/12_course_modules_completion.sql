CREATE TABLE `course_modules_completion` (
  `courmodcompid` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `viewed` tinyint(1) DEFAULT NULL,
  `modifiedtime` bigint(10) NOT NULL,
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`courmodcompid`),
  UNIQUE KEY `courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `courmoducomp_cou_ix` (`coursemoduleid`),
  KEY `fk_cour_mod_comp_company` (`companyid`),
  CONSTRAINT `fk_cour_mod_comp_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`),
  CONSTRAINT `fk_cour_mod_comp_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_course_module_comp` FOREIGN KEY (`coursemoduleid`) REFERENCES `course_modules` (`coursemoduleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table contains the completion state of module attempted by user';