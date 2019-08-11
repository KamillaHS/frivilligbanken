DROP DATABASE IF EXISTS frivilligbankenDB;
CREATE DATABASE frivilligbankenDB;
USE frivilligbankenDB;

/* FOR WEBSITE */

/* Tables Frontend*/

CREATE TABLE employee (
    EmployeeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Picture VARCHAR(255),
    FullName VARCHAR (255),
    JobTitle VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE textField (
    TextFieldID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Page VARCHAR(255),
    FieldName VARCHAR(255),
    FieldContent VARCHAR(5000)
);

CREATE TABLE imageField (
    ImageID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Page VARCHAR(255),
    FieldName VARCHAR(255),
    Image VARCHAR(255)
);

/* Tables Backend */

CREATE TABLE webadmin (
  WebAdminID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Username VARCHAR(255),
  Password VARCHAR(255)
);

/* Initial Data */

insert into employee (EmployeeID, Picture, FullName, JobTitle, Email) values (1, 'https://robohash.org/utpossimusautem.png?size=50x50&set=set1', 'Halli Housecroft', 'Physical Therapy Assistant', 'mail@mail.com');
insert into employee (EmployeeID, Picture, FullName, JobTitle, Email) values (2, 'https://robohash.org/debitiseaquaerat.png?size=50x50&set=set1', 'Costa Nilges', 'Registered Nurse', 'mail@mail.com');
insert into employee (EmployeeID, Picture, FullName, JobTitle, Email) values (3, 'https://robohash.org/consequaturvelitenim.png?size=50x50&set=set1', 'Fiona Cosslett', 'Pharmacist', 'mail@mail.com');
insert into employee (EmployeeID, Picture, FullName, JobTitle, Email) values (4, 'https://robohash.org/exsimiliqueet.png?size=50x50&set=set1', 'Christiano Minto', 'Help Desk Operator', 'mail@mail.com');
insert into employee (EmployeeID, Picture, FullName, JobTitle, Email) values (5, 'https://robohash.org/possimusinciduntnon.jpg?size=50x50&set=set1', 'Salomo Lothean', 'Senior Cost Accountant', 'mail@mail.com');

insert into textField (TextFieldID, Page, FieldName, FieldContent) values (1, 'Forside', 'Hvad er Frivilligbanken?', 'Tekst om frivilligbanken her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (2, 'Forside', 'Kommer Snart', 'Tekst om app der snart kommer til både iphone og android, her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (3, 'Værd at Vide', 'For foreninger', 'Tekst om foreninger her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (4, 'Værd at Vide', 'For Sponsorer', 'Tekst om sponsorer her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (5, 'Værd at Vide', 'For Frivillige', 'Tekst om frivillige her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (6, 'Hvem er Vi', 'Frivilligbanken', 'Tekst om hvem folkene bag frivilligbanken er osv...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (7, 'Sponsorer', 'Sponsorere', 'Generel tekst om sponsorere her... (præsentation af nuværende sponsorer fx...)');

insert into imageField (ImageID, Page, FieldName, Image) values (1, 'Forside', 'Hero Billede', 'https://frivilligbanken.dk/wp-content/uploads/2017/08/1088.jpg');
insert into imageField (ImageID, Page, FieldName, Image) values (2, 'Forside', 'Kommer Snart', 'images/logo/IphoneAndAndroid.png');
insert into imageField (ImageID, Page, FieldName, Image) values (3, 'Værd at Vide - For Foreninger', 'Fordel1', 'https://picsum.photos/id/524/300/200');
insert into imageField (ImageID, Page, FieldName, Image) values (4, 'Værd at Vide - For Foreninger', 'Fordel2', 'https://picsum.photos/id/237/300/200');
insert into imageField (ImageID, Page, FieldName, Image) values (5, 'Værd at Vide - For Foreninger', 'Fordel3', 'https://picsum.photos/id/902/300/200');
# insert into imageField (ImageID, Page, FieldName, Image) values (1, '', '', '');

insert into webadmin (WebAdminID, Username, Password) values (1, 'SuperAdmin', '1234');





/* FOR APP */

/* Tables Frontend*/

CREATE TABLE sponsor (
    SponsorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SponsorName VARCHAR(255),
    SponsorPic VARCHAR(255),
    SponsorCVR INT(8),
    Address VARCHAR(255),
    PostalCode INT(4),
    City VARCHAR(255),
    Website VARCHAR(255)
);

/* Tables Backend */


/* Initial Data */

insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website) values (1, 'Vinder', 'http://dummyimage.com/249x199.jpg/ff4444/ffffff', 12345678, '9755 Oneill Parkway', 1234, 'Far‘ūn', 'www.google.dk');
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website) values (2, 'Blogtags', 'http://dummyimage.com/108x134.jpg/5fa2dd/ffffff', 54862584, '7 Cambridge Center', 1520, 'Alcalá', 'www.google.dk');
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website) values (3, 'Google', 'http://dummyimage.com/142x228.jpg/cc0000/ffffff', 15882521, '0 Sycamore Point', 4800, 'Samho-rodongjagu', 'www.google.dk');
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website) values (4, 'Brainbox', 'http://dummyimage.com/209x233.jpg/cc0000/ffffff', 85482152, '77 Jenifer Park', 5700, 'Lebao', 'www.google.dk');
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website) values (5, 'Skivee', 'http://dummyimage.com/203x106.jpg/dddddd/000000', 41002612, '3 Petterle Circle', 3050, 'Rossosh’', 'www.google.dk');
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website) values (6, 'Ailane', 'http://dummyimage.com/166x160.jpg/dddddd/000000', 54750833, '36 Green Ridge Pass', 6800, 'Tippi', 'www.google.dk');
