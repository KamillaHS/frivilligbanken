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

CREATE TABLE textfield (
    TextFieldID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Page VARCHAR(255),
    FieldName VARCHAR(255),
    FieldContent VARCHAR(5000)
);

CREATE TABLE imagefield (
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
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (3, 'Værd at Vide', 'For Foreninger', 'Tekst om foreninger her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (4, 'Værd at Vide', 'For Sponsorere', 'Tekst om sponsorere her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (5, 'Værd at Vide', 'For Frivillige', 'Tekst om frivillige her...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (6, 'Hvem er Vi', 'Frivilligbanken', 'Tekst om hvem folkene bag frivilligbanken er osv...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (7, 'Sponsorer', 'Sponsorere', 'Generel tekst om sponsorere her... (præsentation af nuværende sponsorer fx...)');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (8, 'Værd at Vide - For Foreninger', 'Fordel1', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (9, 'Værd at Vide - For Foreninger', 'Fordel2', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (10, 'Værd at Vide - For Foreninger', 'Fordel3', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (11, 'Værd at Vide - For Foreninger', 'Hvordan tilmelder man sig?', 'Tekst her kan redigeres');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (12, 'Værd at Vide - For Foreninger', 'Tilmeld Punkt 1', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (13, 'Værd at Vide - For Foreninger', 'Tilmeld Punkt 2', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (14, 'Værd at Vide - For Foreninger', 'Tilmeld Punkt 3', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (15, 'Værd at Vide - For Sponsorere', 'Fordel1', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (16, 'Værd at Vide - For Sponsorere', 'Fordel2', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (17, 'Værd at Vide - For Sponsorere', 'Fordel3', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (18, 'Værd at Vide - For Sponsorere', 'Hvordan tilmelder man sig?', 'Tekst her kan redigeres');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (19, 'Værd at Vide - For Sponsorere', 'Tilmeld Punkt 1', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (20, 'Værd at Vide - For Sponsorere', 'Tilmeld Punkt 2', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (21, 'Værd at Vide - For Sponsorere', 'Tilmeld Punkt 3', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (22, 'Værd at Vide - For Frivillige', 'Fordel1', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (23, 'Værd at Vide - For Frivillige', 'Fordel2', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (24, 'Værd at Vide - For Frivillige', 'Fordel3', 'Tekst her... kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (25, 'Værd at Vide - For Frivillige', 'Hvordan tilmelder man sig?', 'Tekst her kan redigeres');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (26, 'Værd at Vide - For Frivillige', 'Tilmeld Punkt 1', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (27, 'Værd at Vide - For Frivillige', 'Tilmeld Punkt 2', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (28, 'Værd at Vide - For Frivillige', 'Tilmeld Punkt 3', 'Tekst her kan redigeres...');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (29, 'Kontakt Os', 'Telefon', '12 34 56 78');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (30, 'Kontakt Os', 'Telefontider', 'Mandag - Fredag: 00-00 <br> Lørdag - Søndag: 00-00');
insert into textField (TextFieldID, Page, FieldName, FieldContent) values (31, 'Kontakt Os', 'Email', 'mail@mail.dk');
# insert into textField (TextFieldID, Page, FieldName, FieldContent) values (0, '', '', '');

insert into imageField (ImageID, Page, FieldName, Image) values (1, 'Forside', 'Hero Billede', 'https://frivilligbanken.dk/wp-content/uploads/2017/08/1088.jpg');
insert into imageField (ImageID, Page, FieldName, Image) values (2, 'Forside', 'Kommer Snart', 'images/imagefields/IphoneAndAndroid.png');
insert into imageField (ImageID, Page, FieldName, Image) values (3, 'Værd at Vide - For Foreninger', 'Fordel1', 'https://picsum.photos/id/524/300/200');
insert into imageField (ImageID, Page, FieldName, Image) values (4, 'Værd at Vide - For Foreninger', 'Fordel2', 'https://picsum.photos/id/237/300/200');
insert into imageField (ImageID, Page, FieldName, Image) values (5, 'Værd at Vide - For Foreninger', 'Fordel3', 'https://picsum.photos/id/902/300/200');
# insert into imageField (ImageID, Page, FieldName, Image) values (1, '', '', '');

insert into webadmin (WebAdminID, Username, Password) values (1, 'SuperAdmin', '1234');





/* FOR APP */

/* Tables Frontend*/

CREATE TABLE area (
    AreaID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AreaName VARCHAR(255)
);

CREATE TABLE volunteer (
    VolunteerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(255),
    DoB DATE,
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode INT(4),
    Phone INT(8),
    Description VARCHAR(255),
    VolunteerPic VARCHAR(255),
    CV VARCHAR(255),
    Points INT,
    AreaID INT
);

CREATE TABLE `union` (
    UnionID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    UnionName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode INT(4),
    Phone INT(8),
    UnionLogo VARCHAR(255),
    AreaID INT
);

CREATE TABLE sponsor (
    SponsorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SponsorName VARCHAR(255),
    SponsorCVR INT(8),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode INT(4),
    Phone INT(8),
    Website VARCHAR(255),
    SponsorPic VARCHAR(255),
    AreaID INT
);

CREATE TABLE `user` (
    UserID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255),
    Password INT,
    VolunteerID INT,
    SponsorID INT,
    UnionID INT
);

CREATE TABLE interest (
    InterestID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    InterestName VARCHAR(255)
);

CREATE TABLE category (
    CategoryID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

CREATE TABLE job (
    JobID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    Description VARCHAR(500),
    Requirements VARCHAR(500),
    StartDate DATE,
    EndDate DATE,
    UnionID INT,
    CategoryID INT
);

CREATE TABLE giftcard (
    GiftcardID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    Amount INT,
    Value INT,
    SponsorID INT
);

/* Tables Backend */


/* Many to Many tables */

CREATE TABLE userinterest (
    InterestID INT NOT NULL,
    VolunteerID INT NOT NULL,
    isInterest BIT DEFAULT 0,
    CONSTRAINT PK_userinterest PRIMARY KEY (InterestID, VolunteerID),
    FOREIGN KEY (InterestID) REFERENCES interest (InterestID),
    FOREIGN KEY (VolunteerID) REFERENCES volunteer (VolunteerID)
);

CREATE TABLE giftcardinterest (
    GiftcardID INT NOT NULL,
    InterestID INT NOT NULL,
    CONSTRAINT PK_giftcardinterest PRIMARY KEY (GiftcardID, InterestID),
    FOREIGN KEY (GiftcardID) REFERENCES giftcard (GiftcardID),
    FOREIGN KEY (InterestID) REFERENCES interest (InterestID)
);

CREATE TABLE usergiftcard (
    VolunteerID INT NOT NULL,
    GiftcardID INT NOT NULL,
    PurchaseDate DATE,
    isUsed BIT DEFAULT 0,
    CONSTRAINT PK_usergiftcard PRIMARY KEY (VolunteerID, GiftcardID),
    FOREIGN KEY (VolunteerID) REFERENCES volunteer (VolunteerID),
    FOREIGN KEY (GiftcardID) REFERENCES giftcard (GiftcardID)
);

CREATE TABLE jobapplication (
    VolunteerID INT NOT NULL,
    JobID INT NOT NULL,
    Status VARCHAR(20),
    Hours INT(5),
    CONSTRAINT PK_jobapplication PRIMARY KEY (VolunteerID, JobID),
    FOREIGN KEY (VolunteerID) REFERENCES volunteer (VolunteerID),
    FOREIGN KEY (JobID) REFERENCES job (JobID)
);

/* Add Foreign Keys to tables */

ALTER TABLE `user`
    ADD FOREIGN KEY (VolunteerID) REFERENCES volunteer (VolunteerID);

ALTER TABLE `user`
    ADD FOREIGN KEY (SponsorID) REFERENCES sponsor (SponsorID);

ALTER TABLE `user`
    ADD FOREIGN KEY (UnionID) REFERENCES `union` (UnionID);

ALTER TABLE volunteer
    ADD FOREIGN KEY (AreaID) REFERENCES area (AreaID);

ALTER TABLE `union`
    ADD FOREIGN KEY (AreaID) REFERENCES area (AreaID);

ALTER TABLE sponsor
    ADD FOREIGN KEY (AreaID) REFERENCES area (AreaID);

ALTER TABLE job
    ADD FOREIGN KEY (UnionID) REFERENCES `union` (UnionID);

ALTER TABLE job
    ADD FOREIGN KEY (CategoryID) REFERENCES category (CategoryID);

ALTER TABLE giftcard
    ADD FOREIGN KEY (SponsorID) REFERENCES sponsor (SponsorID);

/* Initial Data */

insert into area (AreaID, AreaName) values (1, 'Nordjylland');
insert into area (AreaID, AreaName) values (2, 'Vestjylland');
insert into area (AreaID, AreaName) values (3, 'Østjylland');
insert into area (AreaID, AreaName) values (4, 'Sønderjylland');
insert into area (AreaID, AreaName) values (5, 'Fyn');
insert into area (AreaID, AreaName) values (6, 'Vestsjælland');
insert into area (AreaID, AreaName) values (7, 'Sydsjælland og øerne');
insert into area (AreaID, AreaName) values (8, 'Bornholm');
insert into area (AreaID, AreaName) values (9, 'Østsjælland');
insert into area (AreaID, AreaName) values (10, 'Norsjælland');
insert into area (AreaID, AreaName) values (11, 'Københavns Omegn');
insert into area (AreaID, AreaName) values (12, 'Københavns Ny');

insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (1, 'Reece Sibbe', '1994-05-29 02:06:18', '38425 Mitchell Crossing', 'Nsok', 2274, 90018911, 'Extirpation of Matter from Right Shoulder Joint, Open Approach', 'https://robohash.org/cumvelitveritatis.bmp?size=50x50&set=set1', 'http://dummyimage.com/207x167.bmp/dddddd/000000', 359, 1);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (2, 'Kelcey Ahrens', '1982-11-11 11:45:39', '11 Thackeray Plaza', 'Mingelchaur', 2337, 22835033, 'Insertion of Infusion Device into Right Ankle Region, Open Approach', 'https://robohash.org/velcorporisest.bmp?size=50x50&set=set1', 'http://dummyimage.com/160x128.jpg/5fa2dd/ffffff', 453, 5);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (3, 'Ricoriki Abbatt', '1995-03-03 10:27:52', '93 Prairieview Plaza', 'Ahmadpur Siāl', 4422, 4755623, 'Replacement of Bilateral External Ear with Autologous Tissue Substitute, Open Approach', 'https://robohash.org/explicabotemporeaspernatur.bmp?size=50x50&set=set1', 'http://dummyimage.com/237x134.jpg/ff4444/ffffff', 134, 1);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (4, 'Arther Ajam', '1977-08-02 05:44:53', '177 Arapahoe Circle', 'Gaozhou', 6709, 17812844, 'Drainage of Left Tibia with Drainage Device, Percutaneous Approach', 'https://robohash.org/molestiasquiofficia.png?size=50x50&set=set1', 'http://dummyimage.com/132x103.png/cc0000/ffffff', 423, 9);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (5, 'Marilin Weaving', '1966-09-27 14:12:14', '20 Northland Drive', 'Azor', 8314, 38850530, 'Supplement Right Cephalic Vein with Synthetic Substitute, Percutaneous Approach', 'https://robohash.org/recusandaequismaxime.jpg?size=50x50&set=set1', 'http://dummyimage.com/116x201.jpg/dddddd/000000', 75, 4);

insert into `union` (UnionID, UnionName, Address, City, PostalCode, Phone, UnionLogo, AreaID) values (1, 'Ludovika Rainbow', '5573 Holy Cross Lane', 'Paraiso', 5112, 57500087, 'https://robohash.org/doloreametoptio.jpg?size=50x50&set=set1', 10);
insert into `union` (UnionID, UnionName, Address, City, PostalCode, Phone, UnionLogo, AreaID) values (2, 'Herculie Ziems', '457 Dryden Road', 'Aībak', 5077, 68561867, 'https://robohash.org/abullamexpedita.bmp?size=50x50&set=set1', 1);
insert into `union` (UnionID, UnionName, Address, City, PostalCode, Phone, UnionLogo, AreaID) values (3, 'Roanne Grason', '3 Pond Crossing', 'Cimanggu', 1006, 21938011, 'https://robohash.org/porrosedpraesentium.jpg?size=50x50&set=set1', 2);
insert into `union` (UnionID, UnionName, Address, City, PostalCode, Phone, UnionLogo, AreaID) values (4, 'Idalina Hannant', '6 Daystar Lane', 'Tours', 1009, 15838245, 'https://robohash.org/necessitatibusmaximetotam.bmp?size=50x50&set=set1', 3);
insert into `union` (UnionID, UnionName, Address, City, PostalCode, Phone, UnionLogo, AreaID) values (5, 'Nessi Sword', '8 Ramsey Crossing', 'Tieba', 1379, 42248096, 'https://robohash.org/accusamusodittempora.bmp?size=50x50&set=set1', 4);

insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website, AreaID) values (1, 'Vinder', 'http://dummyimage.com/249x199.jpg/ff4444/ffffff', 12345678, '9755 Oneill Parkway', 1234, 'Far‘ūn', 'www.google.dk', 2);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website, AreaID) values (2, 'Blogtags', 'http://dummyimage.com/108x134.jpg/5fa2dd/ffffff', 54862584, '7 Cambridge Center', 1520, 'Alcalá', 'www.google.dk', 5);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website, AreaID) values (3, 'Google', 'http://dummyimage.com/142x228.jpg/cc0000/ffffff', 15882521, '0 Sycamore Point', 4800, 'Samho-rodongjagu', 'www.google.dk', 2);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website, AreaID) values (4, 'Brainbox', 'http://dummyimage.com/209x233.jpg/cc0000/ffffff', 85482152, '77 Jenifer Park', 5700, 'Lebao', 'www.google.dk', 1);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website, AreaID) values (5, 'Skivee', 'http://dummyimage.com/203x106.jpg/dddddd/000000', 41002612, '3 Petterle Circle', 3050, 'Rossosh’', 'www.google.dk', 7);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, Address, PostalCode, City, Website, AreaID) values (6, 'Ailane', 'http://dummyimage.com/166x160.jpg/dddddd/000000', 54750833, '36 Green Ridge Pass', 6800, 'Tippi', 'www.google.dk', 12);

insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (1, 'hgrover0@gizmodo.com', 'lDCPQW', 1, 1, 1);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (2, 'amiddis1@1688.com', 'EfDAIImbb9YR', NULL, 2, NULL);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (3, 'lmcmennum2@comcast.net', '1BsKpq', NULL, NULL, 2);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (4, 'snorthall3@is.gd', '7gM6nP8', NULL, 3, 3);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (5, 'icoppen4@opensource.org', 'SsOFZftCdmk', 2, NULL, NULL);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (6, 'dpickavance5@imageshack.us', 'Pa4oo20aXa', 3, 4, NULL);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (7, 'hteas6@psu.edu', 'fJcevnl', NULL, NULL, 4);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (8, 'epeltzer7@prweb.com', 'l2xnM65', 4, NULL, NULL);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (9, 'emcgillivrie8@over-blog.com', 'DLw3xX', 5, 5, NULL);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (10, 'sstrathdee9@spotify.com', 'RJWGktguqMy', NULL, 6, 5);

insert into giftcard (GiftcardID, Title, Amount, SponsorID) values (1, 'Eye, The', 3, 2);
insert into giftcard (GiftcardID, Title, Amount, SponsorID) values (2, 'Carry on Cabby', 6, 5);
insert into giftcard (GiftcardID, Title, Amount, SponsorID) values (3, 'Chicago 8, The', 5, 5);
insert into giftcard (GiftcardID, Title, Amount, SponsorID) values (4, 'Love Letters', 1, 1);
insert into giftcard (GiftcardID, Title, Amount, SponsorID) values (5, 'Get Over It', 3, 3);
