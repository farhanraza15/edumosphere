/*
* Farhan
* DML for company, modules table. If needed we can add some data through this script but it is recommendable that actual data should popualted through app.
*
*/
insert into `company`(`companyid`,`companyname`,`description`,`active`,`createtime`,`updatetime`) values (9,'oxford university','Oxford University distance education',1,0,0);

insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (1,'assign',60,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (2,'assignment',60,0,'',0,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (3,'book',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (4,'chat',300,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (5,'choice',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (6,'data',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (7,'feedback',0,0,'',0,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (8,'folder',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (9,'forum',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (10,'glossary',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (11,'imscp',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (12,'label',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (13,'lesson',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (14,'lti',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (15,'page',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (16,'quiz',60,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (17,'resource',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (18,'scorm',300,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (19,'survey',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (20,'url',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (21,'wiki',0,0,'',1,9);
insert into `modules`(`moduleid`,`name`,`cron`,`lastcron`,`search`,`status`,`companyid`) values (22,'workshop',60,0,'',1,9);