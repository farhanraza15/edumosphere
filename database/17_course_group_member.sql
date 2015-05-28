CREATE TABLE `course_group_member` (
  `cougrpmemid` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursegroupid` bigint(10) NOT NULL DEFAULT '0',
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `companyid` bigint(10) NOT NULL,
  `timeadded` bigint(10) NOT NULL DEFAULT '0',
  `component` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cougrpmemid`),
  KEY `groumemb_gro_ix` (`coursegroupid`),
  KEY `groumemb_use_ix` (`userid`),
  KEY `fk_grp_cour_company` (`companyid`),
  CONSTRAINT `fk_groupmember_group` FOREIGN KEY (`coursegroupid`) REFERENCES `course_group` (`coursegroupid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_groupmember_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_grp_cour_company` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Link a user to a group.';