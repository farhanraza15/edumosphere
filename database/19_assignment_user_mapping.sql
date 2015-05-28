CREATE TABLE `assignment_user_mapping` (
  `asgusrmapid` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignmentid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`asgusrmapid`),
  KEY `assiusermapp_ass_ix` (`assignmentid`),
  KEY `assiusermapp_use_ix` (`userid`),
  KEY `fk_asg_cour_company` (`companyid`),
  CONSTRAINT `fk_assignmapping_assignment` FOREIGN KEY (`assignmentid`) REFERENCES `assignment` (`assignmentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_assignmapping_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_asg_cour_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Map an assignment specific id number to a user';