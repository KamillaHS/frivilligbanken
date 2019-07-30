DROP DATABASE IF EXISTS frivilligbankenDB;
CREATE DATABASE frivilligbankenDB;
USE frivilligbankenDB;

/* FOR WEBSITE */

/* Tables Frontend*/

CREATE TABLE employee (
    EmployeeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Picture VARCHAR(255),
    FullName VARCHAR (255),
    JobTitle VARCHAR(255)
);

/* Tables Backend */

CREATE TABLE webadmin (
  WebAdminID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Username VARCHAR(255),
  Password VARCHAR(255)
);

/* Initial Data */

insert into employee (EmployeeID, Picture, FullName, JobTitle) values (1, 'https://robohash.org/utpossimusautem.png?size=50x50&set=set1', 'Halli Housecroft', 'Physical Therapy Assistant');
insert into employee (EmployeeID, Picture, FullName, JobTitle) values (2, 'https://robohash.org/debitiseaquaerat.png?size=50x50&set=set1', 'Costa Nilges', 'Registered Nurse');
insert into employee (EmployeeID, Picture, FullName, JobTitle) values (3, 'https://robohash.org/consequaturvelitenim.png?size=50x50&set=set1', 'Fiona Cosslett', 'Pharmacist');
insert into employee (EmployeeID, Picture, FullName, JobTitle) values (4, 'https://robohash.org/exsimiliqueet.png?size=50x50&set=set1', 'Christiano Minto', 'Help Desk Operator');
insert into employee (EmployeeID, Picture, FullName, JobTitle) values (5, 'https://robohash.org/possimusinciduntnon.jpg?size=50x50&set=set1', 'Salomo Lothean', 'Senior Cost Accountant');

insert into webadmin (WebAdminID, Username, Password) values (1, 'SuperAdmin', '1234');





/* FOR APP */

/* Tables Frontend*/

/* Tables Backend */