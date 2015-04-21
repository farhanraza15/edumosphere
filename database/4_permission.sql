CREATE TABLE `permission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `permissiontype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissiontype_pix` (`permissiontype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='One record for each permission';


