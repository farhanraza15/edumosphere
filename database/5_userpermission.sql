CREATE TABLE `userpermission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `permissiontype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `companyid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permission_companyid` (`companyid`),
  KEY `fk_permission_userid` (`userid`),
  KEY `fk_permission_ptype` (`permissiontype`),
  CONSTRAINT `fk_permission_companyid` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_permission_ptype` FOREIGN KEY (`permissiontype`) REFERENCES `permission` (`permissiontype`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_permission_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='One or many record for each user or company';