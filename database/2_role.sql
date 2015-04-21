CREATE TABLE `role` (
  `roleid` bigint(10) NOT NULL AUTO_INCREMENT,
  `roletype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT '0',
  `archetype` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`roleid`),
  UNIQUE KEY `role_sor_uix` (`sortorder`),
  UNIQUE KEY `role_typ_uix` (`roletype`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


