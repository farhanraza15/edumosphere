CREATE TABLE `user_enrolment` (
  `userenrolmentid` bigint(10) NOT NULL AUTO_INCREMENT,
  `status` bigint(10) NOT NULL DEFAULT '0',
  `enrolmentid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `companyid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT '0',
  `timeend` bigint(10) NOT NULL DEFAULT '2147483647',
  `modifierid` bigint(10) NOT NULL DEFAULT '0',
  `createdtime` bigint(10) NOT NULL DEFAULT '0',
  `modifiedtime` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userenrolmentid`),
  UNIQUE KEY `userenro_enruse_uix` (`enrolmentid`,`userid`),
  KEY `userenro_enr_ix` (`enrolmentid`),
  KEY `userenro_use_ix` (`userid`),
  KEY `usr_enrol_comp_ix` (`companyid`),
  KEY `userenro_mod_ix` (`modifierid`),
  CONSTRAINT `fk_userenrollment_enrol` FOREIGN KEY (`enrolmentid`) REFERENCES `enrolment` (`enrolmentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_userenrollment_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usr_enrol_comp` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores users related enrolments data';