/*
*	This DDL is to create skeleton for LMS.....so far company/user/role/permission/course/modules etc covered.....
*	next might be exams/lesson/etc
*	All these sqls should be executed in ordered way..starting with 1_company.sql then 2_.... and so on.....
*/

/*Creating Schema for LMS */
CREATE DATABASE IF NOT EXISTS `EDUMOSPHERE` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE EDUMOSPHERE;

CREATE TABLE `company` (
  `companyid` bigint(10) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` bigint(10) NOT NULL DEFAULT '0',
  `updatetime` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;