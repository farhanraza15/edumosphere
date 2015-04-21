/*
* <FarhanRaza> - This readme should be updated as and when needed. Should be the central referring point of any how tos related to app/repos
*/

Must Have:
-----------
Java 1.5 and above
Apache Maven 3x
STS/Eclipse
Roo 1.3.1
MySql 5x


How tos?
---------

1. How to startwith
   Execute the sqls available under database folder one-by-one as its name implies.	Starting with "1_company.sql"

2. How to import the lms project in STS/Eclipse?
This is a simple spring roo/maven project so can be imported in eclipse as an existing maven project thats it.

3. How to run the app (edumosphere)
   Open the command prompt and go to the project location
   D:\farhan\professional\edumosphere\lms>
       
   Now run following maven command
   D:\farhan\professional\edumosphere\lms>mvn tomcat:run
   
   This will load some plugins....
   
   Somewhere in the end of of console log will show following:
   
   http://localhost:8080/edumosphere
   
   Copy paste in browser...all set to go
   
Right now very basic level of spring security integration done. So when ask for the username/pwd use below:

admin/admin

If there is any issue faced....I am just a call away.... :-)   