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

insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (1, 'Forside', 'Hvad er Frivilligbanken?', 'Tekst om frivilligbanken her...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (2, 'Forside', 'Kommer Snart', 'Tekst om app der snart kommer til både iphone og android, her...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (3, 'Værd at Vide', 'For Foreninger', 'Tekst om foreninger her...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (4, 'Værd at Vide', 'For Sponsorere', 'Tekst om sponsorere her...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (5, 'Værd at Vide', 'For Frivillige', 'Tekst om frivillige her...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (6, 'Hvem er Vi', 'Frivilligbanken', 'Tekst om hvem folkene bag frivilligbanken er osv...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (7, 'Sponsorer', 'Sponsorere', 'Generel tekst om sponsorere her... (præsentation af nuværende sponsorer fx...)');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (8, 'Værd at Vide - For Foreninger', 'Fordel1', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (9, 'Værd at Vide - For Foreninger', 'Fordel2', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (10, 'Værd at Vide - For Foreninger', 'Fordel3', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (11, 'Værd at Vide - For Foreninger', 'Hvordan tilmelder man sig?', 'Tekst her kan redigeres');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (12, 'Værd at Vide - For Foreninger', 'Tilmeld Punkt 1', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (13, 'Værd at Vide - For Foreninger', 'Tilmeld Punkt 2', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (14, 'Værd at Vide - For Foreninger', 'Tilmeld Punkt 3', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (15, 'Værd at Vide - For Sponsorere', 'Fordel1', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (16, 'Værd at Vide - For Sponsorere', 'Fordel2', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (17, 'Værd at Vide - For Sponsorere', 'Fordel3', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (18, 'Værd at Vide - For Sponsorere', 'Hvordan tilmelder man sig?', 'Tekst her kan redigeres');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (19, 'Værd at Vide - For Sponsorere', 'Tilmeld Punkt 1', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (20, 'Værd at Vide - For Sponsorere', 'Tilmeld Punkt 2', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (21, 'Værd at Vide - For Sponsorere', 'Tilmeld Punkt 3', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (22, 'Værd at Vide - For Frivillige', 'Fordel1', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (23, 'Værd at Vide - For Frivillige', 'Fordel2', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (24, 'Værd at Vide - For Frivillige', 'Fordel3', 'Tekst her... kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (25, 'Værd at Vide - For Frivillige', 'Hvordan tilmelder man sig?', 'Tekst her kan redigeres');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (26, 'Værd at Vide - For Frivillige', 'Tilmeld Punkt 1', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (27, 'Værd at Vide - For Frivillige', 'Tilmeld Punkt 2', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (28, 'Værd at Vide - For Frivillige', 'Tilmeld Punkt 3', 'Tekst her kan redigeres...');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (29, 'Kontakt Os', 'Telefon', '12 34 56 78');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (30, 'Kontakt Os', 'Telefontider', 'Mandag - Fredag: 00-00 <br> Lørdag - Søndag: 00-00');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (31, 'Kontakt Os', 'Email', 'mail@mail.dk');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (32, 'Kontakt Os', 'Adresse', 'bla bla vej, bla bla by');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (33, 'Footer', 'Facebook', 'Facebook.com');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (34, 'Footer', 'LinkedIn', 'LinkedIn.com');
insert into textfield (TextFieldID, Page, FieldName, FieldContent) values (35, 'Footer', 'Instagram', 'Instagram.com');

insert into imagefield (ImageID, Page, FieldName, Image) values (1, 'Forside', 'Hero Billede', 'https://frivilligbanken.dk/wp-content/uploads/2017/08/1088.jpg');
insert into imagefield (ImageID, Page, FieldName, Image) values (2, 'Forside', 'Kommer Snart', 'images/imagefields/IphoneAndAndroid.png');
insert into imagefield (ImageID, Page, FieldName, Image) values (3, 'Værd at Vide - For Foreninger', 'Fordel1', 'https://picsum.photos/id/524/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (4, 'Værd at Vide - For Foreninger', 'Fordel2', 'https://picsum.photos/id/237/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (5, 'Værd at Vide - For Foreninger', 'Fordel3', 'https://picsum.photos/id/902/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (6, 'Værd at Vide - For Sponsorere', 'Fordel1', 'https://picsum.photos/id/524/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (7, 'Værd at Vide - For Sponsorere', 'Fordel2', 'https://picsum.photos/id/237/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (8, 'Værd at Vide - For Sponsorere', 'Fordel3', 'https://picsum.photos/id/902/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (9, 'Værd at Vide - For Frivillige', 'Fordel1', 'https://picsum.photos/id/524/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (10, 'Værd at Vide - For Frivillige', 'Fordel2', 'https://picsum.photos/id/237/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (11, 'Værd at Vide - For Frivillige', 'Fordel3', 'https://picsum.photos/id/902/300/200');
insert into imagefield (ImageID, Page, FieldName, Image) values (12, 'Hvem er Vi', 'Hero Billede', 'https://frivilligbanken.dk/wp-content/uploads/2017/09/business-executives-with-hand-stacked_1170-1901.jpg');
insert into imagefield (ImageID, Page, FieldName, Image) values (13, 'Footer', 'Social Link 1', '../../../images/icons/facebook.svg');
insert into imagefield (ImageID, Page, FieldName, Image) values (14, 'Footer', 'Social Link 2', '../../../images/icons/linkedin.svg');
insert into imagefield (ImageID, Page, FieldName, Image) values (15, 'Footer', 'Social Link 3', '../../../images/icons/instagram.svg');
insert into imagefield (ImageID, Page, FieldName, Image) values (16, 'Hvem er Vi', 'Medarbejder Social Link 1', '../../images/icons/linkedin.svg');
insert into imagefield (ImageID, Page, FieldName, Image) values (17, 'Hvem er Vi', 'Medarbejder Social Link 1', '../../images/icons/facebook.svg');
insert into imagefield (ImageID, Page, FieldName, Image) values (18, 'Hvem er Vi', 'Medarbejder Social Link 1', '');

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
    PostalCode VARCHAR(4),
    Phone VARCHAR(8),
    Description VARCHAR(255),
    VolunteerPic VARCHAR(255),
    CV VARCHAR(255),
    Points INT,
    AreaID INT
);

CREATE TABLE `union` (
    UnionID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    UnionName VARCHAR(255),
    UnionCVR VARCHAR(8),
    UnionEmail VARCHAR(255),
    Description VARCHAR(800),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(4),
    Phone VARCHAR(8),
    Website VARCHAR(255),
    UnionLogo VARCHAR(255),
    AreaID INT
);

CREATE TABLE sponsor (
    SponsorID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SponsorName VARCHAR(255),
    SponsorCVR VARCHAR(8),
    SponsorEmail VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(4),
    Phone VARCHAR(8),
    Website VARCHAR(255),
    SponsorPic VARCHAR(255),
    Status VARCHAR(50),
    AreaID INT
);

CREATE TABLE `user` (
    UserID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255),
    Password VARCHAR(255),
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
    Description VARCHAR(800),
    Requirements VARCHAR(800),
    Amount INT,
    Value INT,
    isConfirmed BIT DEFAULT 0,
    SponsorID INT
);

/* Tables Backend */

CREATE TABLE appadmin (
  AppAdminID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Username VARCHAR(255),
  Password VARCHAR(255)
);

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
    PurchaseID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VolunteerID INT NOT NULL,
    GiftcardID INT NOT NULL,
    PurchaseDate DATE,
    ExpirationDate DATE,
    isExpired BIT DEFAULT 0,
    isUsed BIT DEFAULT 0,
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

CREATE TABLE memberofunion (
    VolunteerID INT NOT NULL,
    UnionID INT NOT NULL,
    isConfirmed BIT DEFAULT 0,
    MemberSince DATE,
    CONSTRAINT PK_memberofunion PRIMARY KEY (VolunteerID, UnionID),
    FOREIGN KEY (VolunteerID) REFERENCES volunteer (VolunteerID),
    FOREIGN KEY (UnionID) REFERENCES `union` (UnionID)
);

/* Add Foreign Keys to tables */

ALTER TABLE `user`
    ADD FOREIGN KEY (VolunteerID) REFERENCES volunteer (VolunteerID) ON DELETE SET NULL;

ALTER TABLE `user`
    ADD FOREIGN KEY (SponsorID) REFERENCES sponsor (SponsorID) ON DELETE SET NULL;

ALTER TABLE `user`
    ADD FOREIGN KEY (UnionID) REFERENCES `union` (UnionID) ON DELETE SET NULL;

ALTER TABLE volunteer
    ADD FOREIGN KEY (AreaID) REFERENCES area (AreaID) ON DELETE SET NULL;

ALTER TABLE `union`
    ADD FOREIGN KEY (AreaID) REFERENCES area (AreaID) ON DELETE SET NULL;

ALTER TABLE sponsor
    ADD FOREIGN KEY (AreaID) REFERENCES area (AreaID) ON DELETE SET NULL;

ALTER TABLE job
    ADD FOREIGN KEY (UnionID) REFERENCES `union` (UnionID) ON DELETE SET NULL;

ALTER TABLE job
    ADD FOREIGN KEY (CategoryID) REFERENCES category (CategoryID) ON DELETE SET NULL;

ALTER TABLE giftcard
    ADD FOREIGN KEY (SponsorID) REFERENCES sponsor (SponsorID) ON DELETE SET NULL;

/* Initial Data */

insert into area (AreaID, AreaName) values (1, 'Nordjylland');
insert into area (AreaID, AreaName) values (2, 'Midtjylland Vest');
insert into area (AreaID, AreaName) values (3, 'Midtjylland Øst');
insert into area (AreaID, AreaName) values (4, 'Sønderjylland');
insert into area (AreaID, AreaName) values (5, 'Fyn');
insert into area (AreaID, AreaName) values (6, 'Vestsjælland');
insert into area (AreaID, AreaName) values (7, 'Sydsjælland og Øerne');
insert into area (AreaID, AreaName) values (8, 'Bornholm');
insert into area (AreaID, AreaName) values (9, 'Østsjælland');
insert into area (AreaID, AreaName) values (10, 'Nordsjælland');
insert into area (AreaID, AreaName) values (11, 'Københavns Omegn');
insert into area (AreaID, AreaName) values (12, 'Københavns By');

insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (1, 'Navn Navnsen', '1994-05-29 02:06:18', 'Randomvej 11', 'Esbjerg', '6700', '90018911', 'Extirpation of Matter from Right Shoulder Joint, Open Approach', 'https://robohash.org/cumvelitveritatis.bmp?size=50x50&set=set1', 'http://dummyimage.com/207x167.bmp/dddddd/000000', 359, 4);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (2, 'Søren Sørensen', '1982-11-11 11:45:39', 'Randomvej 28', 'Holbæk', '4300', '22835033', 'Insertion of Infusion Device into Right Ankle Region, Open Approach', 'https://robohash.org/velcorporisest.bmp?size=50x50&set=set1', 'http://dummyimage.com/160x128.jpg/5fa2dd/ffffff', 453, 10);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (3, 'Pia Nørgaard', '1995-03-03 10:27:52', 'Randomvej 45', '4330', 'Hvalsø', '47556230', 'Replacement of Bilateral External Ear with Autologous Tissue Substitute, Open Approach', 'https://robohash.org/explicabotemporeaspernatur.bmp?size=50x50&set=set1', 'http://dummyimage.com/237x134.jpg/ff4444/ffffff', 134, 10);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (4, 'Flemming Flemmingsen', '1977-08-02 05:44:53', 'Randomvej 9', 'Nykøbing Falster', '4800', '17812844', 'Drainage of Left Tibia with Drainage Device, Percutaneous Approach', 'https://robohash.org/molestiasquiofficia.png?size=50x50&set=set1', 'http://dummyimage.com/132x103.png/cc0000/ffffff', 423, 7);
insert into volunteer (VolunteerID, FullName, DoB, Address, City, PostalCode, Phone, Description, VolunteerPic, CV, Points, AreaID) values (5, 'Julie Jepsen', '1966-09-27 14:12:14', 'Randomvej 46', 'Nykøbing Falster', '4800', '38850530', 'Supplement Right Cephalic Vein with Synthetic Substitute, Percutaneous Approach', 'https://robohash.org/recusandaequismaxime.jpg?size=50x50&set=set1', 'http://dummyimage.com/116x201.jpg/dddddd/000000', 75, 7);

insert into `union` (UnionID, UnionName, UnionCVR, UnionEmail, Description, Address, City, PostalCode, Website, Phone, UnionLogo, AreaID) values (1, 'Brydeklubben Thor', '13245678', 'union@mail.dk', 'Beskrivelse af foreningen Brydeklubben Thor.', 'Randomvej 1', 'Nykøbing Falster', '4800', 'unionweb.dk', '57500087', 'https://robohash.org/doloreametoptio.jpg?size=50x50&set=set1', 7);
insert into `union` (UnionID, UnionName, UnionCVR, UnionEmail, Description, Address, City, PostalCode, Website, Phone, UnionLogo, AreaID) values (2, 'Nykøbing Falster Petanque Klub', '1345678', 'union@mail.dk', 'Beskrivelse af foreningen Nykøbing Falster Petanque Klub', 'Randomvej 53', 'Nykøbing Falster', '4800', 'unionweb.dk', '68561867', 'https://robohash.org/abullamexpedita.bmp?size=50x50&set=set1', 7);
insert into `union` (UnionID, UnionName, UnionCVR, UnionEmail, Description, Address, City, PostalCode, Website, Phone, UnionLogo, AreaID) values (3, 'Esbjerg FC', '12345678', 'union@mail.dk', 'Beskrivelse af foreningen Esbjerg FC', 'Randomvej 3', 'Esbjerg', '6700', 'unionweb.dk', '21938011', 'https://robohash.org/porrosedpraesentium.jpg?size=50x50&set=set1', 4);

insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, SponsorEmail, Address, PostalCode, City, Website, Status, AreaID) values (1, 'Keis Guld & Sølv', 'https://www.naestvedcity.dk/images/citymedlemmer/Logoer/F-K/Keis-guld-og-soelv_Logo.png', '12345678', 'sponsor@mail.dk', '9755 Oneill Parkway', '1234', 'Far‘ūn', 'www.keis.dk', 'Guld', 2);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, SponsorEmail, Address, PostalCode, City, Website, Status, AreaID) values (2, 'H&M', 'http://www.hm.com/entrance/assets/bundle/img/HM-Share-Image.jpg', '54862584', 'sponsor@mail.dk', '7 Cambridge Center', '1520', 'Alcalá', 'www2.hm.com', 'Sølv', 5);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, SponsorEmail, Address, PostalCode, City, Website, Status, AreaID) values (3, 'Google', 'https://www.festisite.com/static/partylogo/img/logos/google.png', '15882521', 'sponsor@mail.dk', '0 Sycamore Point', '4800', 'Samho-rodongjagu', 'www.google.com', 'Bronze', 2);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, SponsorEmail, Address, PostalCode, City, Website, Status, AreaID) values (4, 'Apple', 'https://image.flaticon.com/icons/png/512/23/23656.png', '85482152', 'sponsor@mail.dk', '77 Jenifer Park', '5700', 'Lebao', 'www.apple.com', 'Guld', 1);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, SponsorEmail, Address, PostalCode, City, Website, Status, AreaID) values (5, 'Dansk Outlet', 'https://sw7577.smartweb-static.com/upload_dir/templates/shopoutlet2016/assets/images/danskoutlet-logo.png', '41002612', 'sponsor@mail.dk', '3 Petterle Circle', '3050', 'Rossosh’', 'www.danskoutlet.dk', 'Guld', 7);
insert into sponsor (SponsorID, SponsorName, SponsorPic, SponsorCVR, SponsorEmail, Address, PostalCode, City, Website, Status, AreaID) values (6, 'Føtex', 'https://via.ritzau.dk/data/images/00843/7bd3bb38-962f-4f68-aab4-df59d3f8a81d.png', '54750833', 'sponsor@mail.dk', '36 Green Ridge Pass', '6800', 'Tippi', 'www.foetex.dk', 'Guld', 12);

insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (1, 'mail@mail.com', '1234', 1, 1, 1);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (2, 'mail2@mail.com', 'qwerty', 2, NULL, NULL);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (3, 'mail3@mail.com', 'w1234', 3, 2, NULL);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (4, 'mail4@mail.com', 'qwerty1234', 4, NULL, 2);
insert into `user` (UserID, Email, Password, VolunteerID, SponsorID, UnionID) values (5, 'icoppen4@opensource.org', 'SsOFZftCdmk', 5, 3, 3);

insert into interest (InterestID, InterestName) values (1, 'Fodbold');
insert into interest (InterestID, InterestName) values (2, 'Kunst');
insert into interest (InterestID, InterestName) values (3, 'Kultur');
insert into interest (InterestID, InterestName) values (4, 'Natur');
insert into interest (InterestID, InterestName) values (5, 'Film');
insert into interest (InterestID, InterestName) values (6, 'Fotografi');
insert into interest (InterestID, InterestName) values (7, 'Religion');
insert into interest (InterestID, InterestName) values (8, 'Esport');
insert into interest (InterestID, InterestName) values (9, 'Økologi');
insert into interest (InterestID, InterestName) values (10, 'Tøj');
insert into interest (InterestID, InterestName) values (11, 'Smykker');
insert into interest (InterestID, InterestName) values (12, 'Brydning');
insert into interest (InterestID, InterestName) values (13, 'Heste');
insert into interest (InterestID, InterestName) values (14, 'Hunde');
insert into interest (InterestID, InterestName) values (15, 'Katte');

insert into category (CategoryID, CategoryName) values (1, 'Sport');
insert into category (CategoryID, CategoryName) values (2, 'Børn og Unge');
insert into category (CategoryID, CategoryName) values (3, 'Dyr');
insert into category (CategoryID, CategoryName) values (4, 'Udsatte');
insert into category (CategoryID, CategoryName) values (5, 'Stillinger');

insert into job (JobID, Title, Description, Requirements, StartDate, EndDate, UnionID, CategoryID) values (1, 'Brydedommer', 'Beskrivelse om jobbet som brydedommer her', 'Erfaring med brydning og reglerne indenfor brydning.', '2019-10-26 02:06:18', '2019-10-26 02:06:18', 1, 1);
insert into job (JobID, Title, Description, Requirements, StartDate, EndDate, UnionID, CategoryID) values (2, 'Opstilling til Brydestævne', 'Beskrivelse om jobbet som opstilling til brydestævne her', 'Ingen krav.', '2019-10-26 02:06:18', '2019-10-26 02:06:18', 1, 1);
insert into job (JobID, Title, Description, Requirements, StartDate, EndDate, UnionID, CategoryID) values (3, 'Stensamling', 'Beskrivelse om jobbet som stensamler her', 'Ingen krav.', '2019-11-12 02:06:18', '2019-11-12 02:06:18', 2, 1);
insert into job (JobID, Title, Description, Requirements, StartDate, EndDate, UnionID, CategoryID) values (4, 'Junior Træner', 'Beskrivelse om jobbet som junior træner her', '18+<br>Erfaring som fodboldspiller.<br>Ren børneattest.', '2020-01-01 02:06:18', '2020-07-01 02:06:18', 3, 1);
insert into job (JobID, Title, Description, Requirements, StartDate, EndDate, UnionID, CategoryID) values (5, 'Miniput Træner', 'Beskrivelse om jobbet som miniput træner her', '16+<br>Erfaring som fodboldspiller.<br>Ren børneattest.', '2020-01-01 02:06:18', '2020-07-01 02:06:18', 3, 1);

insert into giftcard (GiftcardID, Title, Description, Requirements, Amount, Value, isConfirmed, SponsorID) values (1, '100kr til H&M', 'Gavekortet kan bruges i alle H&M butikker i Danmark.', 'Gavekortet kan kun benyttes ved køb for over 200kr. Gavekortet kan ikke bruges sammen med andre gavekort.', 10, 50, 1, 2);
insert into giftcard (GiftcardID, Title, Description, Requirements, Amount, Value, isConfirmed, SponsorID) values (2, '100kr til Keis Guld & Sølv', 'Gavekortet kan bruges i vores butik i Nykøbing Falster.', 'Gavekortet kan kun benyttes ved køb for over 500kr. Gavekortet kan ikke bruges sammen med andre gavekort.', 5, 50, 1, 1);
insert into giftcard (GiftcardID, Title, Description, Requirements, Amount, Value, isConfirmed, SponsorID) values (3, '200kr til H&M', 'Gavekortet kan bruges i alle H&M butikker i Danmark.', 'Gavekortet kan kun benyttes ved køb for over 500kr. Gavekortet kan ikke bruges sammen med andre gavekort.', 5, 100, 1, 2);
insert into giftcard (GiftcardID, Title, Description, Requirements, Amount, Value, isConfirmed, SponsorID) values (4, '50kr til Delikatessen', 'Gavekortet kan bruges i alle Føtex butikker i Danmark.', 'Gavekortet kan kun bruges på varer fra delikatessen i vores Føtex butikker. Gavekortet kan godt bruges sammen med andre gavekort.', 1, 25, 0, 6);
insert into giftcard (GiftcardID, Title, Description, Requirements, Amount, Value, isConfirmed, SponsorID) values (5, '500kr til Dansk Outlet', 'Gavekortet kan kun bruges i Dansk Outlet Nykøbing Falster', 'Gavekortet kan ikke bruges sammen med andre gavekort.', 3, 250, 0, 5);

insert into userinterest (InterestID, VolunteerID, isInterest) values (1, 1, 1);
insert into userinterest (InterestID, VolunteerID, isInterest) values (12, 1, 1);
insert into userinterest (InterestID, VolunteerID, isInterest) values (11, 1, 1);
insert into userinterest (InterestID, VolunteerID, isInterest) values (9, 1, 0);
insert into userinterest (InterestID, VolunteerID, isInterest) values (12, 3, 1);
insert into userinterest (InterestID, VolunteerID, isInterest) values (12, 4, 1);
insert into userinterest (InterestID, VolunteerID, isInterest) values (12, 5, 1);

insert into giftcardinterest (GiftcardID, InterestID) values (1, 10);
insert into giftcardinterest (GiftcardID, InterestID) values (2, 11);
insert into giftcardinterest (GiftcardID, InterestID) values (3, 10);
insert into giftcardinterest (GiftcardID, InterestID) values (4, 9);
insert into giftcardinterest (GiftcardID, InterestID) values (5, 10);

insert into usergiftcard (PurchaseID, VolunteerID, GiftcardID, PurchaseDate, ExpirationDate, isExpired, isUsed) values (1, 1, 1, '2019-09-05 02:06:18', '2020-09-05 02:06:18', 0, 0);
insert into usergiftcard (PurchaseID, VolunteerID, GiftcardID, PurchaseDate, ExpirationDate, isExpired, isUsed) values (2, 1, 2, '2019-09-05 02:06:18', '2020-09-05 02:06:18', 0, 0);
insert into usergiftcard (PurchaseID, VolunteerID, GiftcardID, PurchaseDate, ExpirationDate, isExpired, isUsed) values (3, 1, 3, '2019-09-05 02:06:18', '2020-09-05 02:06:18', 0, 0);
insert into usergiftcard (PurchaseID, VolunteerID, GiftcardID, PurchaseDate, ExpirationDate, isExpired, isUsed) values (4, 1, 1, '2018-09-05 02:06:18', '2029-09-05 02:06:18', 1, 0);
insert into usergiftcard (PurchaseID, VolunteerID, GiftcardID, PurchaseDate, ExpirationDate, isExpired, isUsed) values (5, 1, 3, '2018-09-05 02:06:18', '2029-09-05 02:06:18', 0, 1);

insert into jobapplication (VolunteerID, JobID, Status, Hours) values (1, 1, 'Godkendt', 10);
insert into jobapplication (VolunteerID, JobID, Status, Hours) values (1, 2, 'Afventer', 0);
insert into jobapplication (VolunteerID, JobID, Status, Hours) values (1, 3, 'Afventer', 0);
insert into jobapplication (VolunteerID, JobID, Status, Hours) values (1, 4, 'Afvist', 0);
insert into jobapplication (VolunteerID, JobID, Status, Hours) values (1, 5, 'Afsluttet', 20);

insert into memberofunion (VolunteerID, UnionID, isConfirmed, MemberSince) values (1, 1, 1, '2019-01-01 02:06:18');
insert into memberofunion (VolunteerID, UnionID, isConfirmed, MemberSince) values (1, 2, 1, '2019-01-01 02:06:18');
insert into memberofunion (VolunteerID, UnionID, isConfirmed, MemberSince) values (1, 3, 0, NULL);
insert into memberofunion (VolunteerID, UnionID, isConfirmed, MemberSince) values (4, 2, 1, '2019-01-01 02:06:18');
insert into memberofunion (VolunteerID, UnionID, isConfirmed, MemberSince) values (5, 3, 1, '2019-01-01 02:06:18');


/* App Backend Data */

insert into appadmin (AppAdminID, Username, Password) values (1, 'SuperAdmin', 'app1234');


/* Cities of Denmark */

CREATE TABLE denmarkCities(
    CityID INTEGER NOT NULL PRIMARY KEY,
    Region VARCHAR(18) NOT NULL,
    Commune VARCHAR(25) NOT NULL,
    PostalCode INTEGER NOT NULL,
    CityName VARCHAR(20) NOT NULL
);

/* DATA */

INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1,'Region Hovedstaden','Københavns Kommune',0783,'Facility');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (2,'Region Hovedstaden','Høje-Taastrup Kommune',0800,'Høje Taastrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (3,'Region Hovedstaden','Københavns Kommune',0900,'København C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (4,'Region Hovedstaden','Brøndby Kommune',0913,'Københavns Pakkecent');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (5,'Region Hovedstaden','Brøndby Kommune',0914,'Københavns Pakkecent');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (6,'Region Hovedstaden','Brøndby Kommune',0917,'Københavns Pakkecent');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (7,'Region Hovedstaden','Københavns Kommune',0960,'Udland');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (8,'Region Hovedstaden','Københavns Kommune',0999,'København C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (9,'Region Hovedstaden','Københavns Kommune',1000,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (10,'Region Hovedstaden','Københavns Kommune',1050,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (11,'Region Hovedstaden','Københavns Kommune',1051,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (12,'Region Hovedstaden','Københavns Kommune',1052,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (13,'Region Hovedstaden','Københavns Kommune',1053,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (14,'Region Hovedstaden','Københavns Kommune',1054,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (15,'Region Hovedstaden','Københavns Kommune',1055,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (16,'Region Hovedstaden','Københavns Kommune',1056,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (17,'Region Hovedstaden','Københavns Kommune',1057,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (18,'Region Hovedstaden','Københavns Kommune',1058,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (19,'Region Hovedstaden','Københavns Kommune',1059,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (20,'Region Hovedstaden','Københavns Kommune',1060,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (21,'Region Hovedstaden','Københavns Kommune',1061,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (22,'Region Hovedstaden','Københavns Kommune',1062,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (23,'Region Hovedstaden','Københavns Kommune',1063,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (24,'Region Hovedstaden','Københavns Kommune',1064,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (25,'Region Hovedstaden','Københavns Kommune',1065,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (26,'Region Hovedstaden','Københavns Kommune',1066,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (27,'Region Hovedstaden','Københavns Kommune',1067,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (28,'Region Hovedstaden','Københavns Kommune',1068,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (29,'Region Hovedstaden','Københavns Kommune',1069,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (30,'Region Hovedstaden','Københavns Kommune',1070,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (31,'Region Hovedstaden','Københavns Kommune',1071,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (32,'Region Hovedstaden','Københavns Kommune',1072,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (33,'Region Hovedstaden','Københavns Kommune',1073,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (34,'Region Hovedstaden','Københavns Kommune',1074,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (35,'Region Hovedstaden','Københavns Kommune',1092,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (36,'Region Hovedstaden','Københavns Kommune',1093,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (37,'Region Hovedstaden','Københavns Kommune',1095,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (38,'Region Hovedstaden','Københavns Kommune',1098,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (39,'Region Hovedstaden','Københavns Kommune',1100,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (40,'Region Hovedstaden','Københavns Kommune',1101,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (41,'Region Hovedstaden','Københavns Kommune',1102,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (42,'Region Hovedstaden','Københavns Kommune',1103,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (43,'Region Hovedstaden','Københavns Kommune',1104,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (44,'Region Hovedstaden','Københavns Kommune',1105,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (45,'Region Hovedstaden','Københavns Kommune',1106,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (46,'Region Hovedstaden','Københavns Kommune',1107,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (47,'Region Hovedstaden','Københavns Kommune',1110,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (48,'Region Hovedstaden','Københavns Kommune',1111,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (49,'Region Hovedstaden','Københavns Kommune',1112,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (50,'Region Hovedstaden','Københavns Kommune',1113,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (51,'Region Hovedstaden','Københavns Kommune',1114,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (52,'Region Hovedstaden','Københavns Kommune',1115,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (53,'Region Hovedstaden','Københavns Kommune',1116,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (54,'Region Hovedstaden','Københavns Kommune',1117,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (55,'Region Hovedstaden','Københavns Kommune',1118,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (56,'Region Hovedstaden','Københavns Kommune',1119,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (57,'Region Hovedstaden','Københavns Kommune',1120,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (58,'Region Hovedstaden','Københavns Kommune',1121,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (59,'Region Hovedstaden','Københavns Kommune',1122,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (60,'Region Hovedstaden','Københavns Kommune',1123,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (61,'Region Hovedstaden','Københavns Kommune',1124,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (62,'Region Hovedstaden','Københavns Kommune',1125,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (63,'Region Hovedstaden','Københavns Kommune',1126,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (64,'Region Hovedstaden','Københavns Kommune',1127,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (65,'Region Hovedstaden','Københavns Kommune',1128,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (66,'Region Hovedstaden','Københavns Kommune',1129,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (67,'Region Hovedstaden','Københavns Kommune',1130,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (68,'Region Hovedstaden','Københavns Kommune',1131,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (69,'Region Hovedstaden','Københavns Kommune',1140,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (70,'Region Hovedstaden','Københavns Kommune',1147,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (71,'Region Hovedstaden','Københavns Kommune',1148,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (72,'Region Hovedstaden','Københavns Kommune',1150,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (73,'Region Hovedstaden','Københavns Kommune',1151,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (74,'Region Hovedstaden','Københavns Kommune',1152,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (75,'Region Hovedstaden','Københavns Kommune',1153,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (76,'Region Hovedstaden','Københavns Kommune',1154,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (77,'Region Hovedstaden','Københavns Kommune',1155,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (78,'Region Hovedstaden','Københavns Kommune',1156,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (79,'Region Hovedstaden','Københavns Kommune',1157,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (80,'Region Hovedstaden','Københavns Kommune',1158,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (81,'Region Hovedstaden','Københavns Kommune',1159,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (82,'Region Hovedstaden','Københavns Kommune',1160,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (83,'Region Hovedstaden','Københavns Kommune',1161,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (84,'Region Hovedstaden','Københavns Kommune',1162,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (85,'Region Hovedstaden','Københavns Kommune',1164,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (86,'Region Hovedstaden','Københavns Kommune',1165,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (87,'Region Hovedstaden','Københavns Kommune',1166,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (88,'Region Hovedstaden','Københavns Kommune',1167,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (89,'Region Hovedstaden','Københavns Kommune',1168,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (90,'Region Hovedstaden','Københavns Kommune',1169,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (91,'Region Hovedstaden','Københavns Kommune',1170,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (92,'Region Hovedstaden','Københavns Kommune',1171,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (93,'Region Hovedstaden','Københavns Kommune',1172,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (94,'Region Hovedstaden','Københavns Kommune',1173,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (95,'Region Hovedstaden','Københavns Kommune',1174,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (96,'Region Hovedstaden','Københavns Kommune',1175,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (97,'Region Hovedstaden','Københavns Kommune',1200,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (98,'Region Hovedstaden','Københavns Kommune',1201,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (99,'Region Hovedstaden','Københavns Kommune',1202,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (100,'Region Hovedstaden','Københavns Kommune',1203,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (101,'Region Hovedstaden','Københavns Kommune',1204,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (102,'Region Hovedstaden','Københavns Kommune',1205,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (103,'Region Hovedstaden','Københavns Kommune',1206,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (104,'Region Hovedstaden','Københavns Kommune',1207,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (105,'Region Hovedstaden','Københavns Kommune',1208,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (106,'Region Hovedstaden','Københavns Kommune',1209,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (107,'Region Hovedstaden','Københavns Kommune',1210,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (108,'Region Hovedstaden','Københavns Kommune',1211,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (109,'Region Hovedstaden','Københavns Kommune',1213,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (110,'Region Hovedstaden','Københavns Kommune',1214,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (111,'Region Hovedstaden','Københavns Kommune',1215,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (112,'Region Hovedstaden','Københavns Kommune',1216,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (113,'Region Hovedstaden','Københavns Kommune',1217,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (114,'Region Hovedstaden','Københavns Kommune',1218,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (115,'Region Hovedstaden','Københavns Kommune',1219,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (116,'Region Hovedstaden','Københavns Kommune',1220,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (117,'Region Hovedstaden','Københavns Kommune',1221,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (118,'Region Hovedstaden','Københavns Kommune',1240,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (119,'Region Hovedstaden','Københavns Kommune',1250,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (120,'Region Hovedstaden','Københavns Kommune',1251,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (121,'Region Hovedstaden','Københavns Kommune',1252,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (122,'Region Hovedstaden','Københavns Kommune',1253,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (123,'Region Hovedstaden','Københavns Kommune',1254,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (124,'Region Hovedstaden','Københavns Kommune',1255,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (125,'Region Hovedstaden','Københavns Kommune',1256,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (126,'Region Hovedstaden','Københavns Kommune',1257,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (127,'Region Hovedstaden','Københavns Kommune',1259,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (128,'Region Hovedstaden','Københavns Kommune',1260,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (129,'Region Hovedstaden','Københavns Kommune',1261,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (130,'Region Hovedstaden','Københavns Kommune',1263,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (131,'Region Hovedstaden','Københavns Kommune',1264,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (132,'Region Hovedstaden','Københavns Kommune',1265,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (133,'Region Hovedstaden','Københavns Kommune',1266,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (134,'Region Hovedstaden','Københavns Kommune',1267,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (135,'Region Hovedstaden','Københavns Kommune',1268,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (136,'Region Hovedstaden','Københavns Kommune',1270,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (137,'Region Hovedstaden','Københavns Kommune',1271,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (138,'Region Hovedstaden','Københavns Kommune',1300,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (139,'Region Hovedstaden','Københavns Kommune',1301,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (140,'Region Hovedstaden','Københavns Kommune',1302,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (141,'Region Hovedstaden','Københavns Kommune',1303,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (142,'Region Hovedstaden','Københavns Kommune',1304,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (143,'Region Hovedstaden','Københavns Kommune',1306,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (144,'Region Hovedstaden','Københavns Kommune',1307,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (145,'Region Hovedstaden','Københavns Kommune',1308,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (146,'Region Hovedstaden','Københavns Kommune',1309,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (147,'Region Hovedstaden','Københavns Kommune',1310,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (148,'Region Hovedstaden','Københavns Kommune',1311,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (149,'Region Hovedstaden','Københavns Kommune',1312,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (150,'Region Hovedstaden','Københavns Kommune',1313,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (151,'Region Hovedstaden','Københavns Kommune',1314,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (152,'Region Hovedstaden','Københavns Kommune',1315,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (153,'Region Hovedstaden','Københavns Kommune',1316,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (154,'Region Hovedstaden','Københavns Kommune',1317,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (155,'Region Hovedstaden','Københavns Kommune',1318,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (156,'Region Hovedstaden','Københavns Kommune',1319,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (157,'Region Hovedstaden','Københavns Kommune',1320,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (158,'Region Hovedstaden','Københavns Kommune',1321,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (159,'Region Hovedstaden','Københavns Kommune',1322,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (160,'Region Hovedstaden','Københavns Kommune',1323,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (161,'Region Hovedstaden','Københavns Kommune',1324,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (162,'Region Hovedstaden','Københavns Kommune',1325,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (163,'Region Hovedstaden','Københavns Kommune',1326,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (164,'Region Hovedstaden','Københavns Kommune',1327,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (165,'Region Hovedstaden','Københavns Kommune',1328,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (166,'Region Hovedstaden','Københavns Kommune',1329,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (167,'Region Hovedstaden','Københavns Kommune',1350,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (168,'Region Hovedstaden','Københavns Kommune',1352,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (169,'Region Hovedstaden','Københavns Kommune',1353,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (170,'Region Hovedstaden','Københavns Kommune',1354,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (171,'Region Hovedstaden','Københavns Kommune',1355,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (172,'Region Hovedstaden','Københavns Kommune',1356,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (173,'Region Hovedstaden','Københavns Kommune',1357,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (174,'Region Hovedstaden','Københavns Kommune',1358,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (175,'Region Hovedstaden','Københavns Kommune',1359,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (176,'Region Hovedstaden','Københavns Kommune',1360,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (177,'Region Hovedstaden','Københavns Kommune',1361,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (178,'Region Hovedstaden','Københavns Kommune',1362,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (179,'Region Hovedstaden','Københavns Kommune',1363,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (180,'Region Hovedstaden','Københavns Kommune',1364,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (181,'Region Hovedstaden','Københavns Kommune',1365,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (182,'Region Hovedstaden','Københavns Kommune',1366,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (183,'Region Hovedstaden','Københavns Kommune',1367,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (184,'Region Hovedstaden','Københavns Kommune',1368,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (185,'Region Hovedstaden','Københavns Kommune',1369,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (186,'Region Hovedstaden','Københavns Kommune',1370,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (187,'Region Hovedstaden','Københavns Kommune',1371,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (188,'Region Hovedstaden','Københavns Kommune',1400,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (189,'Region Hovedstaden','Københavns Kommune',1401,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (190,'Region Hovedstaden','Københavns Kommune',1402,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (191,'Region Hovedstaden','Københavns Kommune',1403,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (192,'Region Hovedstaden','Københavns Kommune',1406,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (193,'Region Hovedstaden','Københavns Kommune',1407,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (194,'Region Hovedstaden','Københavns Kommune',1408,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (195,'Region Hovedstaden','Københavns Kommune',1409,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (196,'Region Hovedstaden','Københavns Kommune',1410,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (197,'Region Hovedstaden','Københavns Kommune',1411,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (198,'Region Hovedstaden','Københavns Kommune',1412,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (199,'Region Hovedstaden','Københavns Kommune',1413,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (200,'Region Hovedstaden','Københavns Kommune',1414,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (201,'Region Hovedstaden','Københavns Kommune',1415,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (202,'Region Hovedstaden','Københavns Kommune',1416,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (203,'Region Hovedstaden','Københavns Kommune',1417,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (204,'Region Hovedstaden','Københavns Kommune',1418,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (205,'Region Hovedstaden','Københavns Kommune',1419,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (206,'Region Hovedstaden','Københavns Kommune',1420,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (207,'Region Hovedstaden','Københavns Kommune',1421,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (208,'Region Hovedstaden','Københavns Kommune',1422,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (209,'Region Hovedstaden','Københavns Kommune',1423,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (210,'Region Hovedstaden','Københavns Kommune',1424,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (211,'Region Hovedstaden','Københavns Kommune',1425,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (212,'Region Hovedstaden','Københavns Kommune',1426,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (213,'Region Hovedstaden','Københavns Kommune',1427,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (214,'Region Hovedstaden','Københavns Kommune',1428,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (215,'Region Hovedstaden','Københavns Kommune',1429,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (216,'Region Hovedstaden','Københavns Kommune',1430,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (217,'Region Hovedstaden','Københavns Kommune',1432,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (218,'Region Hovedstaden','Københavns Kommune',1433,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (219,'Region Hovedstaden','Københavns Kommune',1434,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (220,'Region Hovedstaden','Københavns Kommune',1435,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (221,'Region Hovedstaden','Københavns Kommune',1436,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (222,'Region Hovedstaden','Københavns Kommune',1437,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (223,'Region Hovedstaden','Københavns Kommune',1438,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (224,'Region Hovedstaden','Københavns Kommune',1439,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (225,'Region Hovedstaden','Københavns Kommune',1440,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (226,'Region Hovedstaden','Københavns Kommune',1441,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (227,'Region Hovedstaden','Københavns Kommune',1448,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (228,'Region Hovedstaden','Københavns Kommune',1450,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (229,'Region Hovedstaden','Københavns Kommune',1451,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (230,'Region Hovedstaden','Københavns Kommune',1452,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (231,'Region Hovedstaden','Københavns Kommune',1453,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (232,'Region Hovedstaden','Københavns Kommune',1454,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (233,'Region Hovedstaden','Københavns Kommune',1455,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (234,'Region Hovedstaden','Københavns Kommune',1456,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (235,'Region Hovedstaden','Københavns Kommune',1457,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (236,'Region Hovedstaden','Københavns Kommune',1458,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (237,'Region Hovedstaden','Københavns Kommune',1459,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (238,'Region Hovedstaden','Københavns Kommune',1460,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (239,'Region Hovedstaden','Københavns Kommune',1462,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (240,'Region Hovedstaden','Københavns Kommune',1463,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (241,'Region Hovedstaden','Københavns Kommune',1464,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (242,'Region Hovedstaden','Københavns Kommune',1466,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (243,'Region Hovedstaden','Københavns Kommune',1467,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (244,'Region Hovedstaden','Københavns Kommune',1468,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (245,'Region Hovedstaden','Københavns Kommune',1470,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (246,'Region Hovedstaden','Københavns Kommune',1471,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (247,'Region Hovedstaden','Københavns Kommune',1472,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (248,'Region Hovedstaden','Københavns Kommune',1473,'København K');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (249,'Region Hovedstaden','Københavns Kommune',1500,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (250,'Region Hovedstaden','Tårnby Kommune',1532,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (251,'Region Hovedstaden','Tårnby Kommune',1533,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (252,'Region Hovedstaden','Københavns Kommune',1550,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (253,'Region Hovedstaden','Københavns Kommune',1551,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (254,'Region Hovedstaden','Københavns Kommune',1552,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (255,'Region Hovedstaden','Københavns Kommune',1553,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (256,'Region Hovedstaden','Københavns Kommune',1554,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (257,'Region Hovedstaden','Københavns Kommune',1555,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (258,'Region Hovedstaden','Københavns Kommune',1556,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (259,'Region Hovedstaden','Københavns Kommune',1557,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (260,'Region Hovedstaden','Københavns Kommune',1558,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (261,'Region Hovedstaden','Københavns Kommune',1559,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (262,'Region Hovedstaden','Københavns Kommune',1560,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (263,'Region Hovedstaden','Københavns Kommune',1561,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (264,'Region Hovedstaden','Københavns Kommune',1562,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (265,'Region Hovedstaden','Københavns Kommune',1563,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (266,'Region Hovedstaden','Københavns Kommune',1564,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (267,'Region Hovedstaden','Københavns Kommune',1566,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (268,'Region Hovedstaden','Københavns Kommune',1567,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (269,'Region Hovedstaden','Københavns Kommune',1568,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (270,'Region Hovedstaden','Københavns Kommune',1569,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (271,'Region Hovedstaden','Københavns Kommune',1570,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (272,'Region Hovedstaden','Københavns Kommune',1571,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (273,'Region Hovedstaden','Københavns Kommune',1572,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (274,'Region Hovedstaden','Københavns Kommune',1573,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (275,'Region Hovedstaden','Københavns Kommune',1574,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (276,'Region Hovedstaden','Københavns Kommune',1575,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (277,'Region Hovedstaden','Københavns Kommune',1576,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (278,'Region Hovedstaden','Københavns Kommune',1577,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (279,'Region Hovedstaden','Københavns Kommune',1592,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (280,'Region Hovedstaden','Københavns Kommune',1599,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (281,'Region Hovedstaden','Københavns Kommune',1600,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (282,'Region Hovedstaden','Københavns Kommune',1601,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (283,'Region Hovedstaden','Københavns Kommune',1602,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (284,'Region Hovedstaden','Københavns Kommune',1603,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (285,'Region Hovedstaden','Københavns Kommune',1604,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (286,'Region Hovedstaden','Københavns Kommune',1605,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (287,'Region Hovedstaden','Københavns Kommune',1606,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (288,'Region Hovedstaden','Københavns Kommune',1607,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (289,'Region Hovedstaden','Københavns Kommune',1608,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (290,'Region Hovedstaden','Københavns Kommune',1609,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (291,'Region Hovedstaden','Københavns Kommune',1610,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (292,'Region Hovedstaden','Københavns Kommune',1611,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (293,'Region Hovedstaden','Københavns Kommune',1612,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (294,'Region Hovedstaden','Københavns Kommune',1613,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (295,'Region Hovedstaden','Københavns Kommune',1614,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (296,'Region Hovedstaden','Københavns Kommune',1615,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (297,'Region Hovedstaden','Københavns Kommune',1616,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (298,'Region Hovedstaden','Københavns Kommune',1617,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (299,'Region Hovedstaden','Københavns Kommune',1618,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (300,'Region Hovedstaden','Københavns Kommune',1619,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (301,'Region Hovedstaden','Københavns Kommune',1620,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (302,'Region Hovedstaden','Københavns Kommune',1621,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (303,'Region Hovedstaden','Københavns Kommune',1622,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (304,'Region Hovedstaden','Københavns Kommune',1623,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (305,'Region Hovedstaden','Københavns Kommune',1624,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (306,'Region Hovedstaden','Københavns Kommune',1630,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (307,'Region Hovedstaden','Københavns Kommune',1631,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (308,'Region Hovedstaden','Københavns Kommune',1632,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (309,'Region Hovedstaden','Københavns Kommune',1633,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (310,'Region Hovedstaden','Københavns Kommune',1634,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (311,'Region Hovedstaden','Københavns Kommune',1635,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (312,'Region Hovedstaden','Københavns Kommune',1650,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (313,'Region Hovedstaden','Københavns Kommune',1651,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (314,'Region Hovedstaden','Københavns Kommune',1652,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (315,'Region Hovedstaden','Københavns Kommune',1653,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (316,'Region Hovedstaden','Københavns Kommune',1654,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (317,'Region Hovedstaden','Københavns Kommune',1655,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (318,'Region Hovedstaden','Københavns Kommune',1656,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (319,'Region Hovedstaden','Københavns Kommune',1657,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (320,'Region Hovedstaden','Københavns Kommune',1658,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (321,'Region Hovedstaden','Københavns Kommune',1659,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (322,'Region Hovedstaden','Københavns Kommune',1660,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (323,'Region Hovedstaden','Københavns Kommune',1661,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (324,'Region Hovedstaden','Københavns Kommune',1662,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (325,'Region Hovedstaden','Københavns Kommune',1663,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (326,'Region Hovedstaden','Københavns Kommune',1664,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (327,'Region Hovedstaden','Københavns Kommune',1665,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (328,'Region Hovedstaden','Københavns Kommune',1666,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (329,'Region Hovedstaden','Københavns Kommune',1667,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (330,'Region Hovedstaden','Københavns Kommune',1668,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (331,'Region Hovedstaden','Københavns Kommune',1669,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (332,'Region Hovedstaden','Københavns Kommune',1670,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (333,'Region Hovedstaden','Københavns Kommune',1671,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (334,'Region Hovedstaden','Københavns Kommune',1672,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (335,'Region Hovedstaden','Københavns Kommune',1673,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (336,'Region Hovedstaden','Københavns Kommune',1674,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (337,'Region Hovedstaden','Københavns Kommune',1675,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (338,'Region Hovedstaden','Københavns Kommune',1676,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (339,'Region Hovedstaden','Københavns Kommune',1677,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (340,'Region Hovedstaden','Københavns Kommune',1699,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (341,'Region Hovedstaden','Københavns Kommune',1700,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (342,'Region Hovedstaden','Københavns Kommune',1701,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (343,'Region Hovedstaden','Københavns Kommune',1702,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (344,'Region Hovedstaden','Københavns Kommune',1703,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (345,'Region Hovedstaden','Københavns Kommune',1704,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (346,'Region Hovedstaden','Københavns Kommune',1705,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (347,'Region Hovedstaden','Københavns Kommune',1706,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (348,'Region Hovedstaden','Københavns Kommune',1707,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (349,'Region Hovedstaden','Københavns Kommune',1708,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (350,'Region Hovedstaden','Københavns Kommune',1709,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (351,'Region Hovedstaden','Københavns Kommune',1710,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (352,'Region Hovedstaden','Københavns Kommune',1711,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (353,'Region Hovedstaden','Københavns Kommune',1712,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (354,'Region Hovedstaden','Københavns Kommune',1714,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (355,'Region Hovedstaden','Københavns Kommune',1715,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (356,'Region Hovedstaden','Københavns Kommune',1716,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (357,'Region Hovedstaden','Københavns Kommune',1717,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (358,'Region Hovedstaden','Københavns Kommune',1718,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (359,'Region Hovedstaden','Københavns Kommune',1719,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (360,'Region Hovedstaden','Københavns Kommune',1720,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (361,'Region Hovedstaden','Københavns Kommune',1721,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (362,'Region Hovedstaden','Københavns Kommune',1722,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (363,'Region Hovedstaden','Københavns Kommune',1723,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (364,'Region Hovedstaden','Københavns Kommune',1724,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (365,'Region Hovedstaden','Københavns Kommune',1725,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (366,'Region Hovedstaden','Københavns Kommune',1726,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (367,'Region Hovedstaden','Københavns Kommune',1727,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (368,'Region Hovedstaden','Københavns Kommune',1728,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (369,'Region Hovedstaden','Københavns Kommune',1729,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (370,'Region Hovedstaden','Københavns Kommune',1730,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (371,'Region Hovedstaden','Københavns Kommune',1731,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (372,'Region Hovedstaden','Københavns Kommune',1732,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (373,'Region Hovedstaden','Københavns Kommune',1733,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (374,'Region Hovedstaden','Københavns Kommune',1734,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (375,'Region Hovedstaden','Københavns Kommune',1735,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (376,'Region Hovedstaden','Københavns Kommune',1736,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (377,'Region Hovedstaden','Københavns Kommune',1737,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (378,'Region Hovedstaden','Københavns Kommune',1738,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (379,'Region Hovedstaden','Københavns Kommune',1739,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (380,'Region Hovedstaden','Københavns Kommune',1749,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (381,'Region Hovedstaden','Københavns Kommune',1750,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (382,'Region Hovedstaden','Københavns Kommune',1751,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (383,'Region Hovedstaden','Københavns Kommune',1752,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (384,'Region Hovedstaden','Københavns Kommune',1753,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (385,'Region Hovedstaden','Københavns Kommune',1754,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (386,'Region Hovedstaden','Københavns Kommune',1755,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (387,'Region Hovedstaden','Københavns Kommune',1756,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (388,'Region Hovedstaden','Københavns Kommune',1757,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (389,'Region Hovedstaden','Københavns Kommune',1758,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (390,'Region Hovedstaden','Københavns Kommune',1759,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (391,'Region Hovedstaden','Københavns Kommune',1760,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (392,'Region Hovedstaden','Københavns Kommune',1761,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (393,'Region Hovedstaden','Københavns Kommune',1762,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (394,'Region Hovedstaden','Københavns Kommune',1763,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (395,'Region Hovedstaden','Københavns Kommune',1764,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (396,'Region Hovedstaden','Københavns Kommune',1765,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (397,'Region Hovedstaden','Københavns Kommune',1766,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (398,'Region Hovedstaden','Københavns Kommune',1770,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (399,'Region Hovedstaden','Københavns Kommune',1771,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (400,'Region Hovedstaden','Københavns Kommune',1772,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (401,'Region Hovedstaden','Københavns Kommune',1773,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (402,'Region Hovedstaden','Københavns Kommune',1774,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (403,'Region Hovedstaden','Københavns Kommune',1775,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (404,'Region Hovedstaden','Københavns Kommune',1777,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (405,'Region Hovedstaden','Københavns Kommune',1780,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (406,'Region Hovedstaden','Københavns Kommune',1785,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (407,'Region Hovedstaden','Københavns Kommune',1786,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (408,'Region Hovedstaden','Københavns Kommune',1787,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (409,'Region Hovedstaden','Københavns Kommune',1790,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (410,'Region Hovedstaden','Københavns Kommune',1799,'København V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (411,'Region Hovedstaden','Frederiksberg Kommune',1800,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (412,'Region Hovedstaden','Frederiksberg Kommune',1801,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (413,'Region Hovedstaden','Frederiksberg Kommune',1802,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (414,'Region Hovedstaden','Frederiksberg Kommune',1803,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (415,'Region Hovedstaden','Frederiksberg Kommune',1804,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (416,'Region Hovedstaden','Frederiksberg Kommune',1805,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (417,'Region Hovedstaden','Frederiksberg Kommune',1806,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (418,'Region Hovedstaden','Frederiksberg Kommune',1807,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (419,'Region Hovedstaden','Frederiksberg Kommune',1808,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (420,'Region Hovedstaden','Frederiksberg Kommune',1809,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (421,'Region Hovedstaden','Københavns Kommune',1810,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (422,'Region Hovedstaden','Frederiksberg Kommune',1810,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (423,'Region Hovedstaden','Frederiksberg Kommune',1811,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (424,'Region Hovedstaden','Frederiksberg Kommune',1812,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (425,'Region Hovedstaden','Frederiksberg Kommune',1813,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (426,'Region Hovedstaden','Frederiksberg Kommune',1814,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (427,'Region Hovedstaden','Frederiksberg Kommune',1815,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (428,'Region Hovedstaden','Frederiksberg Kommune',1816,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (429,'Region Hovedstaden','Frederiksberg Kommune',1817,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (430,'Region Hovedstaden','Frederiksberg Kommune',1818,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (431,'Region Hovedstaden','Frederiksberg Kommune',1819,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (432,'Region Hovedstaden','Frederiksberg Kommune',1820,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (433,'Region Hovedstaden','Frederiksberg Kommune',1822,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (434,'Region Hovedstaden','Frederiksberg Kommune',1823,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (435,'Region Hovedstaden','Frederiksberg Kommune',1824,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (436,'Region Hovedstaden','Frederiksberg Kommune',1825,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (437,'Region Hovedstaden','Frederiksberg Kommune',1826,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (438,'Region Hovedstaden','Frederiksberg Kommune',1827,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (439,'Region Hovedstaden','Frederiksberg Kommune',1828,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (440,'Region Hovedstaden','Frederiksberg Kommune',1829,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (441,'Region Hovedstaden','Frederiksberg Kommune',1850,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (442,'Region Hovedstaden','Frederiksberg Kommune',1851,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (443,'Region Hovedstaden','Frederiksberg Kommune',1852,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (444,'Region Hovedstaden','Frederiksberg Kommune',1853,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (445,'Region Hovedstaden','Frederiksberg Kommune',1854,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (446,'Region Hovedstaden','Frederiksberg Kommune',1855,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (447,'Region Hovedstaden','Frederiksberg Kommune',1856,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (448,'Region Hovedstaden','Frederiksberg Kommune',1857,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (449,'Region Hovedstaden','Frederiksberg Kommune',1860,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (450,'Region Hovedstaden','Frederiksberg Kommune',1861,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (451,'Region Hovedstaden','Frederiksberg Kommune',1862,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (452,'Region Hovedstaden','Frederiksberg Kommune',1863,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (453,'Region Hovedstaden','Frederiksberg Kommune',1864,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (454,'Region Hovedstaden','Frederiksberg Kommune',1865,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (455,'Region Hovedstaden','Frederiksberg Kommune',1866,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (456,'Region Hovedstaden','Frederiksberg Kommune',1867,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (457,'Region Hovedstaden','Frederiksberg Kommune',1868,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (458,'Region Hovedstaden','Frederiksberg Kommune',1870,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (459,'Region Hovedstaden','Frederiksberg Kommune',1871,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (460,'Region Hovedstaden','Frederiksberg Kommune',1872,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (461,'Region Hovedstaden','Frederiksberg Kommune',1873,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (462,'Region Hovedstaden','Frederiksberg Kommune',1874,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (463,'Region Hovedstaden','Frederiksberg Kommune',1875,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (464,'Region Hovedstaden','Frederiksberg Kommune',1876,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (465,'Region Hovedstaden','Frederiksberg Kommune',1877,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (466,'Region Hovedstaden','Frederiksberg Kommune',1878,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (467,'Region Hovedstaden','Frederiksberg Kommune',1879,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (468,'Region Hovedstaden','Frederiksberg Kommune',1900,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (469,'Region Hovedstaden','Frederiksberg Kommune',1901,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (470,'Region Hovedstaden','Frederiksberg Kommune',1902,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (471,'Region Hovedstaden','Frederiksberg Kommune',1903,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (472,'Region Hovedstaden','Frederiksberg Kommune',1904,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (473,'Region Hovedstaden','Frederiksberg Kommune',1905,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (474,'Region Hovedstaden','Frederiksberg Kommune',1906,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (475,'Region Hovedstaden','Frederiksberg Kommune',1908,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (476,'Region Hovedstaden','Frederiksberg Kommune',1909,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (477,'Region Hovedstaden','Frederiksberg Kommune',1910,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (478,'Region Hovedstaden','Frederiksberg Kommune',1911,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (479,'Region Hovedstaden','Frederiksberg Kommune',1912,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (480,'Region Hovedstaden','Frederiksberg Kommune',1913,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (481,'Region Hovedstaden','Frederiksberg Kommune',1914,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (482,'Region Hovedstaden','Frederiksberg Kommune',1915,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (483,'Region Hovedstaden','Frederiksberg Kommune',1916,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (484,'Region Hovedstaden','Frederiksberg Kommune',1917,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (485,'Region Hovedstaden','Frederiksberg Kommune',1920,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (486,'Region Hovedstaden','Frederiksberg Kommune',1921,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (487,'Region Hovedstaden','Frederiksberg Kommune',1922,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (488,'Region Hovedstaden','Frederiksberg Kommune',1923,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (489,'Region Hovedstaden','Frederiksberg Kommune',1924,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (490,'Region Hovedstaden','Frederiksberg Kommune',1925,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (491,'Region Hovedstaden','Frederiksberg Kommune',1926,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (492,'Region Hovedstaden','Frederiksberg Kommune',1927,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (493,'Region Hovedstaden','Frederiksberg Kommune',1928,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (494,'Region Hovedstaden','Frederiksberg Kommune',1950,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (495,'Region Hovedstaden','Frederiksberg Kommune',1951,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (496,'Region Hovedstaden','Frederiksberg Kommune',1952,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (497,'Region Hovedstaden','Frederiksberg Kommune',1953,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (498,'Region Hovedstaden','Frederiksberg Kommune',1954,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (499,'Region Hovedstaden','Frederiksberg Kommune',1955,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (500,'Region Hovedstaden','Frederiksberg Kommune',1956,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (501,'Region Hovedstaden','Frederiksberg Kommune',1957,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (502,'Region Hovedstaden','Frederiksberg Kommune',1958,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (503,'Region Hovedstaden','Frederiksberg Kommune',1959,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (504,'Region Hovedstaden','Frederiksberg Kommune',1960,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (505,'Region Hovedstaden','Frederiksberg Kommune',1961,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (506,'Region Hovedstaden','Frederiksberg Kommune',1962,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (507,'Region Hovedstaden','Frederiksberg Kommune',1963,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (508,'Region Hovedstaden','Frederiksberg Kommune',1964,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (509,'Region Hovedstaden','Frederiksberg Kommune',1965,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (510,'Region Hovedstaden','Frederiksberg Kommune',1966,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (511,'Region Hovedstaden','Frederiksberg Kommune',1967,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (512,'Region Hovedstaden','Frederiksberg Kommune',1970,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (513,'Region Hovedstaden','Frederiksberg Kommune',1971,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (514,'Region Hovedstaden','Frederiksberg Kommune',1972,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (515,'Region Hovedstaden','Frederiksberg Kommune',1973,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (516,'Region Hovedstaden','Frederiksberg Kommune',1974,'Frederiksberg C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (517,'Region Hovedstaden','Københavns Kommune',2000,'Frederiksberg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (518,'Region Hovedstaden','Frederiksberg Kommune',2000,'Frederiksberg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (519,'Region Hovedstaden','Københavns Kommune',2100,'København Ø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (520,'Region Hovedstaden','Københavns Kommune',2150,'Nordhavn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (521,'Region Hovedstaden','Københavns Kommune',2200,'København N');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (522,'Region Hovedstaden','Frederiksberg Kommune',2200,'København N');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (523,'Region Hovedstaden','Københavns Kommune',2300,'København S');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (524,'Region Hovedstaden','Tårnby Kommune',2300,'Køøbenhavn S');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (525,'Region Hovedstaden','Københavns Kommune',2400,'København NV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (526,'Region Hovedstaden','Københavns Kommune',2450,'København SV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (527,'Region Hovedstaden','Københavns Kommune',2500,'Valby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (528,'Region Hovedstaden','Frederiksberg Kommune',2500,'Valby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (529,'Region Hovedstaden','Glostrup Kommune',2600,'Glostrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (530,'Region Hovedstaden','Albertslund Kommune',2600,'Glostrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (531,'Region Hovedstaden','Brøndby Kommune',2605,'Brøndby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (532,'Region Hovedstaden','Københavns Kommune',2610,'Rødovre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (533,'Region Hovedstaden','Hvidovre Kommune',2610,'Rødovre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (534,'Region Hovedstaden','Rødovre Kommune',2610,'Rødovre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (535,'Region Hovedstaden','Brøndby Kommune',2620,'Albertslund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (536,'Region Hovedstaden','Albertslund Kommune',2620,'Albertslund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (537,'Region Hovedstaden','Vallensbæk Kommune',2625,'Vallensbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (538,'Region Hovedstaden','Høje-Taastrup Kommune',2630,'Taastrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (539,'Region Hovedstaden','Ishøj Kommune',2635,'Ishøj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (540,'Region Hovedstaden','Høje-Taastrup Kommune',2640,'Hedehusene');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (541,'Region Hovedstaden','Ishøj Kommune',2640,'Hedehusene');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (542,'Region Sjælland','Greve Kommune',2640,'Hedehusene');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (543,'Region Sjælland','Roskilde Kommune',2640,'Hedehusene');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (544,'Region Hovedstaden','Brøndby Kommune',2650,'Hvidovre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (545,'Region Hovedstaden','Hvidovre Kommune',2650,'Hvidovre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (546,'Region Hovedstaden','Brøndby Kommune',2660,'Brøndby Strand');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (547,'Region Hovedstaden','Hvidovre Kommune',2660,'Brøndby Strand');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (548,'Region Hovedstaden','Vallensbæk Kommune',2665,'Vallensbæk Strand');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (549,'Region Sjælland','Greve Kommune',2670,'Greve');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (550,'Region Sjælland','Solrød Kommune',2680,'Solrød Strand');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (551,'Region Sjælland','Greve Kommune',2690,'Karlslunde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (552,'Region Sjælland','Solrød Kommune',2690,'Karlslunde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (553,'Region Hovedstaden','Københavns Kommune',2700,'Brønshøj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (554,'Region Hovedstaden','Københavns Kommune',2720,'Vanløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (555,'Region Hovedstaden','Frederiksberg Kommune',2720,'Vanløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (556,'Region Hovedstaden','Ballerup Kommune',2730,'Herlev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (557,'Region Hovedstaden','Gladsaxe Kommune',2730,'Herlev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (558,'Region Hovedstaden','Herlev Kommune',2730,'Herlev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (559,'Region Hovedstaden','Ballerup Kommune',2740,'Skovlunde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (560,'Region Hovedstaden','Herlev Kommune',2740,'Skovlunde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (561,'Region Hovedstaden','Ballerup Kommune',2750,'Ballerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (562,'Region Hovedstaden','Albertslund Kommune',2750,'Ballerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (563,'Region Hovedstaden','Egedal Kommune',2750,'Ballerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (564,'Region Hovedstaden','Ballerup Kommune',2760,'Måløv');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (565,'Region Hovedstaden','Egedal Kommune',2765,'Smørum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (566,'Region Hovedstaden','Københavns Kommune',2770,'Kastrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (567,'Region Hovedstaden','Tårnby Kommune',2770,'Kastrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (568,'Region Hovedstaden','Dragør Kommune',2791,'Dragør');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (569,'Region Hovedstaden','Tårnby Kommune',2791,'Dragør');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (570,'Region Hovedstaden','Gentofte Kommune',2800,'Kongens Lyngby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (571,'Region Hovedstaden','Gladsaxe Kommune',2800,'Kongens Lyngby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (572,'Region Hovedstaden','Lyngby-Taarbæk Kommune',2800,'Kongens Lyngby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (573,'Region Hovedstaden','Rudersdal Kommune',2800,'Kongens Lyngby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (574,'Region Hovedstaden','Gentofte Kommune',2820,'Gentofte');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (575,'Region Hovedstaden','Gladsaxe Kommune',2820,'Gentofte');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (576,'Region Hovedstaden','Lyngby-Taarbæk Kommune',2830,'Virum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (577,'Region Hovedstaden','Rudersdal Kommune',2830,'Virum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (578,'Region Hovedstaden','Lyngby-Taarbæk Kommune',2840,'Holte');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (579,'Region Hovedstaden','Rudersdal Kommune',2840,'Holte');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (580,'Region Hovedstaden','Rudersdal Kommune',2850,'Nørum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (581,'Region Hovedstaden','Københavns Kommune',2860,'Søborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (582,'Region Hovedstaden','Gladsaxe Kommune',2860,'Søborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (583,'Region Hovedstaden','Gentofte Kommune',2870,'Dyssegård');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (584,'Region Hovedstaden','Gladsaxe Kommune',2880,'Bagsværd');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (585,'Region Hovedstaden','Herlev Kommune',2880,'Bagsværd');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (586,'Region Hovedstaden','Furesø Kommune',2880,'Bagsværd');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (587,'Region Hovedstaden','Københavns Kommune',2900,'Hellerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (588,'Region Hovedstaden','Gentofte Kommune',2900,'Hellerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (589,'Region Hovedstaden','Gentofte Kommune',2920,'Charlottenlund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (590,'Region Hovedstaden','Gentofte Kommune',2930,'Klampenborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (591,'Region Hovedstaden','Lyngby-Taarbæk Kommune',2930,'Klampenborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (592,'Region Hovedstaden','Rudersdal Kommune',2942,'Skodsborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (593,'Region Hovedstaden','Hørsholm Kommune',2950,'Vedbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (594,'Region Hovedstaden','Rudersdal Kommune',2950,'Vedbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (595,'Region Hovedstaden','Hørsholm Kommune',2960,'Rungsted Kyst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (596,'Region Hovedstaden','Fredensborg Kommune',2970,'Hørsholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (597,'Region Hovedstaden','Hørsholm Kommune',2970,'Hørsholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (598,'Region Hovedstaden','Rudersdal Kommune',2970,'Hørsholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (599,'Region Hovedstaden','Fredensborg Kommune',2980,'Kokkedal');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (600,'Region Hovedstaden','Hrsholm Kommune',2980,'Kokkedal');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (601,'Region Hovedstaden','Fredensborg Kommune',2990,'Nivå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (602,'Region Hovedstaden','Helsingør Kommune',3000,'Helsingør');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (603,'Region Hovedstaden','Fredensborg Kommune',3050,'Humlebæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (604,'Region Hovedstaden','Fredensborg Kommune',3060,'Espergærde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (605,'Region Hovedstaden','Helsingør Kommune',3060,'Espergærde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (606,'Region Hovedstaden','Helsingør Kommune',3070,'Snekkersten');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (607,'Region Hovedstaden','Helsingør Kommune',3080,'Tikøb');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (608,'Region Hovedstaden','Helsingør Kommune',3100,'Hornbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (609,'Region Hovedstaden','Gribskov Kommune',3100,'Hornbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (610,'Region Hovedstaden','Gribskov Kommune',3120,'Dronningmølle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (611,'Region Hovedstaden','Helsingør Kommune',3140,'Ålsgårde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (612,'Region Hovedstaden','Helsingør Kommune',3150,'Hellebæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (613,'Region Hovedstaden','Hillerød Kommune',3200,'Helsinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (614,'Region Hovedstaden','Gribskov Kommune',3200,'Helsinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (615,'Region Hovedstaden','Gribskov Kommune',3210,'Vejby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (616,'Region Hovedstaden','Gribskov Kommune',3220,'Tisvildeleje');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (617,'Region Hovedstaden','Helsingør Kommune',3230,'Græsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (618,'Region Hovedstaden','Hillerød Kommune',3230,'Græsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (619,'Region Hovedstaden','Gribskov Kommune',3230,'Græsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (620,'Region Hovedstaden','Gribskov Kommune',3250,'Gilleleje');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (621,'Region Hovedstaden','Halsnæs Kommune',3300,'Frederiksværk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (622,'Region Hovedstaden','Gribskov Kommune',3300,'Frederiksværk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (623,'Region Hovedstaden','Hillerød Kommune',3310,'ølsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (624,'Region Hovedstaden','Halsnæs Kommune',3310,'ølsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (625,'Region Hovedstaden','Hillerød Kommune',3320,'Skævinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (626,'Region Hovedstaden','Halsnæs Kommune',3320,'Skævinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (627,'Region Hovedstaden','Hillerød Kommune',3330,'Gørløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (628,'Region Hovedstaden','Halsnæs Kommune',3360,'Liseleje');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (629,'Region Hovedstaden','Halsnæs Kommune',3370,'Melby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (630,'Region Hovedstaden','Halsnæs Kommune',3390,'Hundested');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (631,'Region Hovedstaden','Allerød Kommune',3400,'Hillerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (632,'Region Hovedstaden','Fredensborg Kommune',3400,'Hillerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (633,'Region Hovedstaden','Hillerød Kommune',3400,'Hillerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (634,'Region Hovedstaden','Allerød Kommune',3450,'Allerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (635,'Region Hovedstaden','Fredensborg Kommune',3450,'Allerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (636,'Region Hovedstaden','Hillerød Kommune',3450,'Allerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (637,'Region Hovedstaden','Furesø Kommune',3460,'Birkerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (638,'Region Hovedstaden','Allerød Kommune',3460,'Birkerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (639,'Region Hovedstaden','Rudersdal Kommune',3460,'Birkerød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (640,'Region Hovedstaden','Fredensborg Kommune',3480,'Fredensborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (641,'Region Hovedstaden','Helsingør Kommune',3480,'Fredensborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (642,'Region Hovedstaden','Hillerød Kommune',3480,'Fredensborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (643,'Region Hovedstaden','Fredensborg Kommune',3490,'Kvistgård');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (644,'Region Hovedstaden','Helsingør Kommune',3490,'Kvistgård');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (645,'Region Hovedstaden','Ballerup Kommune',3500,'Værløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (646,'Region Hovedstaden','Gladsaxe Kommune',3500,'Værløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (647,'Region Hovedstaden','Lyngby-Taarbæk Kommune',3500,'Værløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (648,'Region Hovedstaden','Fureså Kommune',3500,'Værløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (649,'Region Hovedstaden','Egedal Kommune',3500,'Værløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (650,'Region Hovedstaden','Fureså Kommune',3520,'Farum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (651,'Region Hovedstaden','Allerød Kommune',3520,'Farum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (652,'Region Hovedstaden','Egedal Kommune',3520,'Farum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (653,'Region Hovedstaden','Fureså Kommune',3540,'Lynge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (654,'Region Hovedstaden','Allerød Kommune',3540,'Lynge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (655,'Region Hovedstaden','Hillerød Kommune',3540,'Lynge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (656,'Region Hovedstaden','Egedal Kommune',3540,'Lynge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (657,'Region Hovedstaden','Allerød Kommune',3550,'Slangerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (658,'Region Hovedstaden','Hillerød Kommune',3550,'Slangerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (659,'Region Hovedstaden','Egedal Kommune',3550,'Slangerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (660,'Region Hovedstaden','Frederikssund Kommune',3550,'Slangerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (661,'Region Hovedstaden','Hillerød Kommune',3600,'Frederikssund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (662,'Region Hovedstaden','Frederikssund Kommune',3600,'Frederikssund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (663,'Region Hovedstaden','Halsnæs Kommune',3600,'Frederikssund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (664,'Region Hovedstaden','Frederikssund Kommune',3630,'Jægerspris');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (665,'Region Hovedstaden','Egedal Kommune',3650,'Ølstykke');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (666,'Region Hovedstaden','Egedal Kommune',3660,'Stenløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (667,'Region Hovedstaden','Egedal Kommune',3670,'Veksø Sjælland');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (668,'Region Sjælland','Roskilde Kommune',3670,'Veksø Sjælland');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (669,'Region Hovedstaden','Bornholm Kommune',3700,'Rønne');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (670,'Region Hovedstaden','Bornholm Kommune',3720,'Aakirkeby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (671,'Region Hovedstaden','Bornholm Kommune',3730,'Nexø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (672,'Region Hovedstaden','Bornholm Kommune',3740,'Svaneke');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (673,'Region Hovedstaden','Bornholm Kommune',3751,'Østermarie');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (674,'Region Hovedstaden','Bornholm Kommune',3760,'Gudhjem');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (675,'Region Hovedstaden','Christiansø',3760,'Gudhjem');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (676,'Region Hovedstaden','Bornholm Kommune',3770,'Allinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (677,'Region Hovedstaden','Bornholm Kommune',3782,'Klemensker');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (678,'Region Hovedstaden','Bornholm Kommune',3790,'Hasle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (679,'Region Hovedstaden','Høje-Taastrup Kommune',4000,'Roskilde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (680,'Region Sjælland','Roskilde Kommune',4000,'Roskilde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (681,'Region Sjælland','Lejre Kommune',4000,'Roskilde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (682,'Region Sjælland','Greve Kommune',4030,'Tune');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (683,'Region Sjælland','Roskilde Kommune',4030,'Tune');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (684,'Region Sjælland','Roskilde Kommune',4040,'Jyllinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (685,'Region Hovedstaden','Frederikssund Kommune',4050,'Skibby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (686,'Region Sjælland','Lejre Kommune',4060,'Kirke Såby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (687,'Region Sjælland','Lejre Kommune',4070,'Kirke Hyllinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (688,'Region Sjælland','Køge Kommune',4100,'Ringsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (689,'Region Sjælland','Holbæk Kommune',4100,'Ringsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (690,'Region Sjælland','Faxe Kommune',4100,'Ringsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (691,'Region Sjælland','Ringsted Kommune',4100,'Ringsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (692,'Region Sjælland','Sorø Kommune',4100,'Ringsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (693,'Region Sjælland','Næstved Kommune',4100,'Ringsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (694,'Region Sjælland','Køge Kommune',4130,'Viby Sjælland');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (695,'Region Sjælland','Roskilde Kommune',4130,'Viby Sjælland');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (696,'Region Sjælland','Køge Kommune',4140,'Borup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (697,'Region Sjælland','Roskilde Kommune',4140,'Borup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (698,'Region Sjælland','Ringsted Kommune',4140,'Borup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (699,'Region Sjælland','Faxe Kommune',4160,'Herlufmagle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (700,'Region Sjælland','Næstved Kommune',4160,'Herlufmagle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (701,'Region Sjælland','Næstved Kommune',4171,'Glumsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (702,'Region Sjælland','Ringsted Kommune',4173,'Fjenneslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (703,'Region Sjælland','Sorø Kommune',4173,'Fjenneslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (704,'Region Sjælland','Køge Kommune',4174,'Jystrup Midtsj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (705,'Region Sjælland','Ringsted Kommune',4174,'Jystrup Midtsj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (706,'Region Sjælland','Ringsted Kommune',4180,'Sorø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (707,'Region Sjælland','Slagelse Kommune',4180,'Sorø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (708,'Region Sjælland','Sorø Kommune',4180,'Sorø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (709,'Region Sjælland','Slagelse Kommune',4190,'Munke Bjergby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (710,'Region Sjælland','Sorø Kommune',4190,'Munke Bjergby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (711,'Region Sjælland','Kalundborg Kommune',4200,'Slagelse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (712,'Region Sjælland','Slagelse Kommune',4200,'Slagelse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (713,'Region Sjælland','Sorø Kommune',4200,'Slagelse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (714,'Region Sjælland','Næstved Kommune',4200,'Slagelse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (715,'Region Sjælland','Slagelse Kommune',4220,'Korsør');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (716,'Region Sjælland','Slagelse Kommune',4230,'Skælskør');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (717,'Region Sjælland','Slagelse Kommune',4241,'Vemmelev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (718,'Region Sjælland','Slagelse Kommune',4242,'Boeslunde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (719,'Region Sjælland','Slagelse Kommune',4243,'Rude');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (720,'Region Sjælland','Næstved Kommune',4243,'Rude');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (721,'Region Sjælland','Slagelse Kommune',4244,'Agersø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (722,'Region Sjælland','Slagelse Kommune',4245,'Omø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (723,'Region Sjælland','Slagelse Kommune',4250,'Fuglebjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (724,'Region Sjælland','Næstved Kommune',4250,'Fuglebjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (725,'Region Sjælland','Slagelse Kommune',4261,'Dalmose');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (726,'Region Sjælland','Næstved Kommune',4261,'Dalmose');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (727,'Region Sjælland','Slagelse Kommune',4262,'Sandved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (728,'Region Sjælland','Næstved Kommune',4262,'Sandved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (729,'Region Sjælland','Kalundborg Kommune',4270,'Høng');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (730,'Region Sjælland','Slagelse Kommune',4270,'Høng');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (731,'Region Sjælland','Kalundborg Kommune',4281,'Gørlev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (732,'Region Sjælland','Kalundborg Kommune',4291,'Ruds Vedby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (733,'Region Sjælland','Sorø Kommune',4291,'Ruds Vedby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (734,'Region Sjælland','Kalundborg Kommune',4293,'Dianalund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (735,'Region Sjælland','Sorø Kommune',4293,'Dianalund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (736,'Region Sjælland','Holbæk Kommune',4295,'Stenlille');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (737,'Region Sjælland','Sorø Kommune',4295,'Stenlille');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (738,'Region Sjælland','Holbæk Kommune',4296,'Nyrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (739,'Region Sjælland','Sorø Kommune',4296,'Nyrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (740,'Region Sjælland','Holbæk Kommune',4300,'Holbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (741,'Region Sjælland','Holbæk Kommune',4305,'Orø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (742,'Region Sjælland','Køge Kommune',4320,'Lejre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (743,'Region Sjælland','Roskilde Kommune',4320,'Lejre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (744,'Region Sjælland','Lejre Kommune',4320,'Lejre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (745,'Region Sjælland','Holbæk Kommune',4330,'Hvalsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (746,'Region Sjælland','Ringsted Kommune',4330,'Hvalsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (747,'Region Sjælland','Lejre Kommune',4330,'Hvalsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (748,'Region Sjælland','Holbæk Kommune',4340,'Tølløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (749,'Region Sjælland','Lejre Kommune',4340,'Tølløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (750,'Region Sjælland','Holbæk Kommune',4350,'Ugerløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (751,'Region Sjælland','Holbæk Kommune',4360,'Kirke Eskilstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (752,'Region Sjælland','Ringsted Kommune',4360,'Kirke Eskilstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (753,'Region Sjælland','Holbæk Kommune',4370,'Store Merløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (754,'Region Sjælland','Ringsted Kommune',4370,'Store Merløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (755,'Region Sjælland','Sorø Kommune',4370,'Store Merløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (756,'Region Sjælland','Holbæk Kommune',4390,'Vipperød');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (757,'Region Sjælland','Kalundborg Kommune',4400,'Kalundborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (758,'Region Sjælland','Holbæk Kommune',4420,'Regstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (759,'Region Sjælland','Holbæk Kommune',4440,'Mørkøv');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (760,'Region Sjælland','Holbæk Kommune',4450,'Jyderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (761,'Region Sjælland','Kalundborg Kommune',4450,'Jyderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (762,'Region Sjælland','Holbæk Kommune',4460,'Snertinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (763,'Region Sjælland','Kalundborg Kommune',4460,'Snertinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (764,'Region Sjælland','Holbæk Kommune',4470,'Svebølle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (765,'Region Sjælland','Kalundborg Kommune',4470,'Svebølle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (766,'Region Sjælland','Kalundborg Kommune',4480,'Store Fuglede');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (767,'Region Sjælland','Kalundborg Kommune',4490,'Jerslev Sjælland');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (768,'Region Sjælland','Odsherred Kommune',4500,'Nykøbing Sj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (769,'Region Sjælland','Holbæk Kommune',4520,'Svinninge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (770,'Region Sjælland','Holbæk Kommune',4532,'Gislinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (771,'Region Sjælland','Odsherred Kommune',4534,'Hørve');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (772,'Region Sjælland','Kalundborg Kommune',4534,'Hørve');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (773,'Region Sjælland','Odsherred Kommune',4540,'Fårevejle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (774,'Region Sjælland','Odsherred Kommune',4550,'Asnæs');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (775,'Region Sjælland','Odsherred Kommune',4560,'Vig');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (776,'Region Sjælland','Odsherred Kommune',4571,'Grevinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (777,'Region Sjælland','Odsherred Kommune',4572,'Nørre Asmindrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (778,'Region Sjælland','Odsherred Kommune',4573,'Højby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (779,'Region Sjælland','Odsherred Kommune',4581,'Rørvig');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (780,'Region Sjælland','Odsherred Kommune',4583,'Sjællands Odde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (781,'Region Sjælland','Odsherred Kommune',4591,'Føllenslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (782,'Region Sjælland','Kalundborg Kommune',4591,'Føllenslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (783,'Region Sjælland','Kalundborg Kommune',4592,'Sejerø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (784,'Region Sjælland','Kalundborg Kommune',4593,'Eskebjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (785,'Region Sjælland','Køge Kommune',4600,'Køge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (786,'Region Sjælland','Holbæk Kommune',4600,'Køge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (787,'Region Sjælland','Stevns Kommune',4600,'Køge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (788,'Region Sjælland','Roskilde Kommune',4621,'Gadstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (789,'Region Sjælland','Roskilde Kommune',4622,'Havdrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (790,'Region Sjælland','Solrød Kommune',4622,'Havdrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (791,'Region Sjælland','Køge Kommune',4623,'Lille Skensved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (792,'Region Sjælland','Roskilde Kommune',4623,'Lille Skensved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (793,'Region Sjælland','Solrød Kommune',4623,'Lille Skensved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (794,'Region Sjælland','Køge Kommune',4632,'Bjæverskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (795,'Region Sjælland','Faxe Kommune',4640,'Faxe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (796,'Region Sjælland','Næstved Kommune',4640,'Faxe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (797,'Region Sjælland','Faxe Kommune',4652,'Hårlev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (798,'Region Sjælland','Stevns Kommune',4652,'Hårlev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (799,'Region Sjælland','Faxe Kommune',4653,'Karise');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (800,'Region Sjælland','Stevns Kommune',4653,'Karise');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (801,'Region Sjælland','Faxe Kommune',4654,'Faxe Ladeplads');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (802,'Region Sjælland','Stevns Kommune',4660,'Store Heddinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (803,'Region Sjælland','Stevns Kommune',4671,'Strøby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (804,'Region Sjælland','Stevns Kommune',4672,'Klippinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (805,'Region Sjælland','Stevns Kommune',4673,'Rødvig Stevns');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (806,'Region Sjælland','Køge Kommune',4681,'Herfølge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (807,'Region Sjælland','Køge Kommune',4682,'Tureby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (808,'Region Sjælland','Faxe Kommune',4682,'Tureby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (809,'Region Sjælland','Stevns Kommune',4682,'Tureby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (810,'Region Sjælland','Faxe Kommune',4683,'Rønnede');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (811,'Region Sjælland','Næstved Kommune',4683,'Rønnede');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (812,'Region Sjælland','Faxe Kommune',4684,'Holmegaard');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (813,'Region Sjælland','Næstved Kommune',4684,'Holmegaard');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (814,'Region Sjælland','Faxe Kommune',4690,'Haslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (815,'Region Sjælland','Ringsted Kommune',4690,'Haslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (816,'Region Sjælland','Næstved Kommune',4690,'Haslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (817,'Region Sjælland','Næstved Kommune',4700,'Næstved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (818,'Region Sjælland','Vordingborg Kommune',4720,'Præstø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (819,'Region Sjælland','Faxe Kommune',4733,'Tappernøje');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (820,'Region Sjælland','Næstved Kommune',4733,'Tappernøje');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (821,'Region Sjælland','Vordingborg Kommune',4733,'Tappernøje');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (822,'Region Sjælland','Vordingborg Kommune',4735,'Mern');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (823,'Region Sjælland','Næstved Kommune',4736,'Karrebæksminde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (824,'Region Sjælland','Næstved Kommune',4750,'Lundby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (825,'Region Sjælland','Vordingborg Kommune',4750,'Lundby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (826,'Region Sjælland','Vordingborg Kommune',4760,'Vordingborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (827,'Region Sjælland','Vordingborg Kommune',4771,'Kalvehave');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (828,'Region Sjælland','Vordingborg Kommune',4772,'Langebæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (829,'Region Sjælland','Vordingborg Kommune',4773,'Stensved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (830,'Region Sjælland','Vordingborg Kommune',4780,'Stege');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (831,'Region Sjælland','Vordingborg Kommune',4791,'Borre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (832,'Region Sjælland','Vordingborg Kommune',4792,'Askeby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (833,'Region Sjælland','Vordingborg Kommune',4793,'Bogø By');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (834,'Region Sjælland','Guldborgsund Kommune',4800,'Nykøbing F');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (835,'Region Sjælland','Guldborgsund Kommune',4840,'Nørre Alslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (836,'Region Sjælland','Guldborgsund Kommune',4850,'Stubbekøbing');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (837,'Region Sjælland','Guldborgsund Kommune',4862,'Guldborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (838,'Region Sjælland','Guldborgsund Kommune',4863,'Eskilstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (839,'Region Sjælland','Guldborgsund Kommune',4871,'Horbelev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (840,'Region Sjælland','Guldborgsund Kommune',4872,'Idestrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (841,'Region Sjælland','Guldborgsund Kommune',4873,'Væggerløse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (842,'Region Sjælland','Guldborgsund Kommune',4874,'Gedser');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (843,'Region Sjælland','Guldborgsund Kommune',4880,'Nysted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (844,'Region Sjælland','Guldborgsund Kommune',4891,'Toreby L');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (845,'Region Sjælland','Guldborgsund Kommune',4892,'Kettinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (846,'Region Sjælland','Lolland Kommune',4894,'Øster Ulslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (847,'Region Sjælland','Guldborgsund Kommune',4894,'Øster Ulslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (848,'Region Sjælland','Lolland Kommune',4895,'Errindlev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (849,'Region Sjælland','Lolland Kommune',4900,'Nakskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (850,'Region Sjælland','Lolland Kommune',4912,'Harpelunde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (851,'Region Sjælland','Lolland Kommune',4913,'Horslunde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (852,'Region Sjælland','Lolland Kommune',4920,'Søllested');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (853,'Region Sjælland','Lolland Kommune',4930,'Maribo');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (854,'Region Sjælland','Guldborgsund Kommune',4930,'Maribo');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (855,'Region Sjælland','Lolland Kommune',4941,'Bandholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (856,'Region Sjælland','Lolland Kommune',4942,'Askø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (857,'Region Sjælland','Lolland Kommune',4943,'Torrig L');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (858,'Region Sjælland','Lolland Kommune',4944,'Fejø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (859,'Region Sjælland','Lolland Kommune',4945,'Femø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (860,'Region Sjælland','Lolland Kommune',4951,'Nørreballe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (861,'Region Sjælland','Lolland Kommune',4952,'Stokkemarke');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (862,'Region Sjælland','Lolland Kommune',4953,'Vesterborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (863,'Region Sjælland','Lolland Kommune',4960,'Holeby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (864,'Region Sjælland','Lolland Kommune',4970,'Rødby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (865,'Region Sjælland','Lolland Kommune',4983,'Dannemare');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (866,'Region Sjælland','Guldborgsund Kommune',4990,'Sakskøbing');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (867,'Region Syddanmark','Odense Kommune',5000,'Odense C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (868,'Region Syddanmark','Odense Kommune',5200,'Odense V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (869,'Region Syddanmark','Odense Kommune',5210,'Odense NV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (870,'Region Syddanmark','Odense Kommune',5220,'Odense SØ');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (871,'Region Syddanmark','Odense Kommune',5230,'Odense M');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (872,'Region Syddanmark','Odense Kommune',5240,'Odense NØ');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (873,'Region Syddanmark','Odense Kommune',5250,'Odense SV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (874,'Region Syddanmark','Odense Kommune',5260,'Odense S');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (875,'Region Syddanmark','Odense Kommune',5270,'Odense N');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (876,'Region Syddanmark','Nordfyns Kommune',5270,'Odense N');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (877,'Region Syddanmark','Kerteminde Kommune',5290,'Marslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (878,'Region Syddanmark','Kerteminde Kommune',5300,'Kerteminde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (879,'Region Syddanmark','Odense Kommune',5320,'Agedrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (880,'Region Syddanmark','Kerteminde Kommune',5330,'Munkebo');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (881,'Region Syddanmark','Odense Kommune',5330,'Munkebo');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (882,'Region Syddanmark','Kerteminde Kommune',5350,'Rynkeby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (883,'Region Syddanmark','Kerteminde Kommune',5370,'Mesinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (884,'Region Syddanmark','Kerteminde Kommune',5380,'Dalby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (885,'Region Syddanmark','Kerteminde Kommune',5390,'Martofte');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (886,'Region Syddanmark','Nordfyns Kommune',5400,'Bogense');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (887,'Region Syddanmark','Nordfyns Kommune',5450,'Otterup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (888,'Region Syddanmark','Nordfyns Kommune',5462,'Morud');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (889,'Region Syddanmark','Middelfart Kommune',5463,'Harndrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (890,'Region Syddanmark','Middelfart Kommune',5464,'Brenderup Fyn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (891,'Region Syddanmark','Middelfart Kommune',5466,'Asperup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (892,'Region Syddanmark','Nordfyns Kommune',5471,'Søndersø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (893,'Region Syddanmark','Nordfyns Kommune',5474,'Veflinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (894,'Region Syddanmark','Nordfyns Kommune',5485,'Skamby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (895,'Region Syddanmark','Odense Kommune',5491,'Blommenslyst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (896,'Region Syddanmark','Nordfyns Kommune',5491,'Blommenslyst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (897,'Region Syddanmark','Assens Kommune',5492,'Vissenbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (898,'Region Syddanmark','Odense Kommune',5492,'Vissenbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (899,'Region Syddanmark','Nordfyns Kommune',5492,'Vissenbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (900,'Region Syddanmark','Middelfart Kommune',5500,'Middelfart');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (901,'Region Syddanmark','Kerteminde Kommune',5540,'Ullerslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (902,'Region Syddanmark','Nyborg Kommune',5540,'Ullerslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (903,'Region Syddanmark','Faaborg-Midtfyn Kommune',5550,'Langeskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (904,'Region Syddanmark','Kerteminde Kommune',5550,'Langeskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (905,'Region Syddanmark','Nyborg Kommune',5550,'Langeskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (906,'Region Syddanmark','Middelfart Kommune',5560,'Aarup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (907,'Region Syddanmark','Assens Kommune',5560,'Aarup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (908,'Region Syddanmark','Nordfyns Kommune',5560,'Aarup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (909,'Region Syddanmark','Middelfart Kommune',5580,'Nørre Aaby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (910,'Region Syddanmark','Middelfart Kommune',5591,'Gelsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (911,'Region Syddanmark','Middelfart Kommune',5592,'Ejby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (912,'Region Syddanmark','Faaborg-Midtfyn Kommune',5600,'Faaborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (913,'Region Syddanmark','Faaborg-Midtfyn Kommune',5601,'Lyø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (914,'Region Syddanmark','Faaborg-Midtfyn Kommune',5602,'Avernakø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (915,'Region Syddanmark','Faaborg-Midtfyn Kommune',5603,'Bjørnø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (916,'Region Syddanmark','Assens Kommune',5610,'Assens');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (917,'Region Syddanmark','Assens Kommune',5620,'Glamsbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (918,'Region Syddanmark','Assens Kommune',5631,'Ebberup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (919,'Region Syddanmark','Assens Kommune',5642,'Millinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (920,'Region Syddanmark','Faaborg-Midtfyn Kommune',5642,'Millinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (921,'Region Syddanmark','Faaborg-Midtfyn Kommune',5672,'Broby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (922,'Region Syddanmark','Assens Kommune',5683,'Haarby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (923,'Region Syddanmark','Assens Kommune',5690,'Tommerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (924,'Region Syddanmark','Svendborg Kommune',5700,'Svendborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (925,'Region Syddanmark','Faaborg-Midtfyn Kommune',5750,'Ringe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (926,'Region Syddanmark','Faaborg-Midtfyn Kommune',5762,'Vester Skerninge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (927,'Region Syddanmark','Svendborg Kommune',5762,'Vester Skerninge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (928,'Region Syddanmark','Faaborg-Midtfyn Kommune',5771,'Stenstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (929,'Region Syddanmark','Svendborg Kommune',5771,'Stenstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (930,'Region Syddanmark','Faaborg-Midtfyn Kommune',5772,'Kværndrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (931,'Region Syddanmark','Svendborg Kommune',5772,'Kværndrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (932,'Region Syddanmark','Faaborg-Midtfyn Kommune',5792,'Årslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (933,'Region Syddanmark','Nyborg Kommune',5800,'Nyborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (934,'Region Syddanmark','Faaborg-Midtfyn Kommune',5853,'Ørbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (935,'Region Syddanmark','Nyborg Kommune',5853,'Ørbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (936,'Region Syddanmark','Faaborg-Midtfyn Kommune',5854,'Gislev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (937,'Region Syddanmark','Svendborg Kommune',5854,'Gislev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (938,'Region Syddanmark','Faaborg-Midtfyn Kommune',5856,'Ryslinge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (939,'Region Syddanmark','Faaborg-Midtfyn Kommune',5863,'Ferritslev Fyn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (940,'Region Syddanmark','Kerteminde Kommune',5863,'Ferritslev Fyn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (941,'Region Syddanmark','Nyborg Kommune',5871,'Frørup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (942,'Region Syddanmark','Nyborg Kommune',5874,'Hesselager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (943,'Region Syddanmark','Svendborg Kommune',5874,'Hesselager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (944,'Region Syddanmark','Svendborg Kommune',5881,'Skårup Fyn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (945,'Region Syddanmark','Svendborg Kommune',5882,'Vejstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (946,'Region Syddanmark','Svendborg Kommune',5883,'Oure');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (947,'Region Syddanmark','Svendborg Kommune',5884,'Gudme');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (948,'Region Syddanmark','Svendborg Kommune',5892,'Gudbjerg Sydfyn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (949,'Region Syddanmark','Langeland Kommune',5900,'Rudkøbing');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (950,'Region Syddanmark','Langeland Kommune',5932,'Humble');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (951,'Region Syddanmark','Langeland Kommune',5935,'Bagenkop');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (952,'Region Syddanmark','Langeland Kommune',5943,'Strynø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (953,'Region Syddanmark','Langeland Kommune',5953,'Tranekær');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (954,'Region Syddanmark','Ærø Kommune',5960,'Marstal');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (955,'Region Syddanmark','Ærø Kommune',5965,'Birkholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (956,'Region Syddanmark','Ærø Kommune',5970,'Ærøskøbing');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (957,'Region Syddanmark','Ærø Kommune',5985,'Søby Ærø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (958,'Region Syddanmark','Kolding Kommune',6000,'Kolding');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (959,'Region Syddanmark','Kolding Kommune',6040,'Egtved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (960,'Region Syddanmark','Vejle Kommune',6040,'Egtved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (961,'Region Syddanmark','Kolding Kommune',6051,'Almind');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (962,'Region Syddanmark','Kolding Kommune',6052,'Viuf');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (963,'Region Syddanmark','Vejle Kommune',6052,'Viuf');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (964,'Region Syddanmark','Kolding Kommune',6064,'Jordrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (965,'Region Syddanmark','Haderslev Kommune',6070,'Christiansfeld');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (966,'Region Syddanmark','Kolding Kommune',6070,'Christiansfeld');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (967,'Region Syddanmark','Kolding Kommune',6091,'Bjert');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (968,'Region Syddanmark','Kolding Kommune',6092,'Sønder Stenderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (969,'Region Syddanmark','Kolding Kommune',6093,'Sjølund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (970,'Region Syddanmark','Haderslev Kommune',6094,'Hejls');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (971,'Region Syddanmark','Kolding Kommune',6094,'Hejls');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (972,'Region Syddanmark','Haderslev Kommune',6100,'Haderslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (973,'Region Syddanmark','Kolding Kommune',6100,'Haderslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (974,'Region Syddanmark','Aabenraa Kommune',6200,'Aabenraa');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (975,'Region Syddanmark','Aabenraa Kommune',6210,'Barsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (976,'Region Syddanmark','Aabenraa Kommune',6230,'Rødekro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (977,'Region Syddanmark','Tønder Kommune',6240,'Løgumkloster');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (978,'Region Syddanmark','Tønder Kommune',6261,'Bredebro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (979,'Region Syddanmark','Tønder Kommune',6270,'Tønder');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (980,'Region Syddanmark','Tønder Kommune',6280,'Højer');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (981,'Region Syddanmark','Sønderborg Kommune',6300,'Gråsten');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (982,'Region Syddanmark','Sønderborg Kommune',6310,'Broager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (983,'Region Syddanmark','Sønderborg Kommune',6320,'Egernsund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (984,'Region Syddanmark','Aabenraa Kommune',6330,'Padborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (985,'Region Syddanmark','Aabenraa Kommune',6340,'Kruså');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (986,'Region Syddanmark','Aabenraa Kommune',6360,'Tinglev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (987,'Region Syddanmark','Aabenraa Kommune',6372,'Bylderup-Bov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (988,'Region Syddanmark','Aabenraa Kommune',6392,'Bolderslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (989,'Region Syddanmark','Sønderborg Kommune',6400,'Sønderborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (990,'Region Syddanmark','Sønderborg Kommune',6430,'Nordborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (991,'Region Syddanmark','Kolding Kommune',6430,'Nordborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (992,'Region Syddanmark','Sønderborg Kommune',6440,'Augustenborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (993,'Region Syddanmark','Sønderborg Kommune',6470,'Sydals');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (994,'Region Syddanmark','Haderslev Kommune',6500,'Vojens');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (995,'Region Syddanmark','Haderslev Kommune',6510,'Gram');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (996,'Region Syddanmark','Haderslev Kommune',6520,'Toftlund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (997,'Region Syddanmark','Tønder Kommune',6520,'Toftlund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (998,'Region Syddanmark','Haderslev Kommune',6534,'Agerskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (999,'Region Syddanmark','Tønder Kommune',6534,'Agerskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1000,'Region Syddanmark','Aabenraa Kommune',6534,'Agerskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1001,'Region Syddanmark','Tønder Kommune',6535,'Branderup J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1002,'Region Syddanmark','Haderslev Kommune',6541,'Bevtoft');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1003,'Region Syddanmark','Tønder Kommune',6541,'Bevtoft');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1004,'Region Syddanmark','Haderslev Kommune',6560,'Sommersted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1005,'Region Syddanmark','Kolding Kommune',6560,'Sommersted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1006,'Region Syddanmark','Kolding Kommune',6580,'Vamdrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1007,'Region Syddanmark','Vejen Kommune',6600,'Vejen');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1008,'Region Syddanmark','Vejen Kommune',6621,'Gesten');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1009,'Region Syddanmark','Vejen Kommune',6622,'Bække');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1010,'Region Syddanmark','Billund Kommune',6623,'Vorbasse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1011,'Region Syddanmark','Vejen Kommune',6623,'Vorbasse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1012,'Region Syddanmark','Vejle Kommune',6623,'Vorbasse');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1013,'Region Syddanmark','Haderslev Kommune',6630,'Rødding');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1014,'Region Syddanmark','Vejen Kommune',6630,'Rødding');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1015,'Region Syddanmark','Kolding Kommune',6640,'Lunderskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1016,'Region Syddanmark','Vejen Kommune',6650,'Brørup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1017,'Region Syddanmark','Vejen Kommune',6660,'Lintrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1018,'Region Syddanmark','Esbjerg Kommune',6670,'Holsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1019,'Region Syddanmark','Vejen Kommune',6670,'Holsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1020,'Region Syddanmark','Billund Kommune',6682,'Hovborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1021,'Region Syddanmark','Varde Kommune',6682,'Hovborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1022,'Region Syddanmark','Vejen Kommune',6682,'Hovborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1023,'Region Syddanmark','Esbjerg Kommune',6683,'Føvling');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1024,'Region Syddanmark','Vejen Kommune',6683,'Føvling');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1025,'Region Syddanmark','Esbjerg Kommune',6690,'Gørding');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1026,'Region Syddanmark','Vejen Kommune',6690,'Gørding');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1027,'Region Syddanmark','Esbjerg Kommune',6700,'Esbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1028,'Region Syddanmark','Esbjerg Kommune',6705,'Esbjerg Ø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1029,'Region Syddanmark','Esbjerg Kommune',6710,'Esbjerg V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1030,'Region Syddanmark','Esbjerg Kommune',6715,'Esbjerg N');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1031,'Region Syddanmark','Fanø Kommune',6720,'Fanø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1032,'Region Syddanmark','Esbjerg Kommune',6731,'Tjæreborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1033,'Region Syddanmark','Esbjerg Kommune',6740,'Bramming');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1034,'Region Syddanmark','Vejen Kommune',6752,'Glejbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1035,'Region Syddanmark','Varde Kommune',6753,'Agerbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1036,'Region Syddanmark','Vejen Kommune',6753,'Agerbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1037,'Region Syddanmark','Esbjerg Kommune',6760,'Ribe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1038,'Region Syddanmark','Esbjerg Kommune',6771,'Gredstedbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1039,'Region Syddanmark','Tønder Kommune',6780,'Skærbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1040,'Region Syddanmark','Tønder Kommune',6792,'Rømø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1041,'Region Syddanmark','Varde Kommune',6800,'Varde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1042,'Region Syddanmark','Esbjerg Kommune',6818,'Årre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1043,'Region Syddanmark','Varde Kommune',6818,'Årre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1044,'Region Syddanmark','Billund Kommune',6823,'Ansager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1045,'Region Syddanmark','Varde Kommune',6823,'Ansager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1046,'Region Midtjylland','Ringkøbing-Skjern Kommune',6830,'Nørre Nebel');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1047,'Region Syddanmark','Varde Kommune',6830,'Nørre Nebel');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1048,'Region Syddanmark','Varde Kommune',6840,'Oksbøl');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1049,'Region Syddanmark','Varde Kommune',6851,'Janderup Vestj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1050,'Region Syddanmark','Varde Kommune',6852,'Billum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1051,'Region Syddanmark','Varde Kommune',6853,'Vejers Strand');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1052,'Region Syddanmark','Varde Kommune',6854,'Henne');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1053,'Region Syddanmark','Varde Kommune',6855,'Outrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1054,'Region Syddanmark','Varde Kommune',6857,'Blåvand');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1055,'Region Syddanmark','Varde Kommune',6862,'Tistrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1056,'Region Midtjylland','Ringkøbing-Skjern Kommune',6870,'Ølgod');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1057,'Region Syddanmark','Varde Kommune',6870,'Ølgod');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1058,'Region Midtjylland','Ringkøbing-Skjern Kommune',6880,'Tarm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1059,'Region Syddanmark','Varde Kommune',6880,'Tarm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1060,'Region Midtjylland','Ringkøbing-Skjern Kommune',6893,'Hemmet');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1061,'Region Midtjylland','Ringkøbing-Skjern Kommune',6900,'Skjern');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1062,'Region Midtjylland','Ringkøbing-Skjern Kommune',6920,'Videbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1063,'Region Midtjylland','Herning Kommune',6933,'Kibæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1064,'Region Midtjylland','Ringkøbing-Skjern Kommune',6933,'Kibæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1065,'Region Midtjylland','Ringkøbing-Skjern Kommune',6940,'Lem St');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1066,'Region Midtjylland','Ringkøbing-Skjern Kommune',6950,'Ringkøbing');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1067,'Region Midtjylland','Ringkøbing-Skjern Kommune',6960,'Hvide Sande');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1068,'Region Midtjylland','Ringkøbing-Skjern Kommune',6971,'Spjald');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1069,'Region Midtjylland','Herning Kommune',6973,'Ørnhøj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1070,'Region Midtjylland','Ringkøbing-Skjern Kommune',6973,'Ørnhøj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1071,'Region Midtjylland','Ringkøbing-Skjern Kommune',6980,'Tim');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1072,'Region Midtjylland','Herning Kommune',6990,'Ulfborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1073,'Region Midtjylland','Holstebro Kommune',6990,'Ulfborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1074,'Region Midtjylland','Lemvig Kommune',6990,'Ulfborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1075,'Region Midtjylland','Ringkøbing-Skjern Kommune',6990,'Ulfborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1076,'Region Syddanmark','Fredericia Kommune',7000,'Fredericia');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1077,'Region Syddanmark','Vejle Kommune',7000,'Fredericia');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1078,'Region Syddanmark','Fredericia Kommune',7007,'Fredericia');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1079,'Region Syddanmark','Vejle Kommune',7080,'Børkop');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1080,'Region Midtjylland','Hedensted Kommune',7100,'Vejle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1081,'Region Syddanmark','Vejle Kommune',7100,'Vejle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1082,'Region Midtjylland','Hedensted Kommune',7120,'Vejle Øst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1083,'Region Syddanmark','Vejle Kommune',7120,'Vejle Øst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1084,'Region Midtjylland','Hedensted Kommune',7130,'Juelsminde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1085,'Region Midtjylland','Hedensted Kommune',7140,'Stouby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1086,'Region Midtjylland','Hedensted Kommune',7150,'Barrit');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1087,'Region Midtjylland','Hedensted Kommune',7160,'Tørring');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1088,'Region Syddanmark','Vejle Kommune',7160,'Tørring');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1089,'Region Midtjylland','Hedensted Kommune',7171,'Uldum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1090,'Region Syddanmark','Vejle Kommune',7173,'Vonge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1091,'Region Syddanmark','Vejle Kommune',7182,'Bredsten');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1092,'Region Syddanmark','Vejle Kommune',7183,'Randbøl');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1093,'Region Syddanmark','Vejle Kommune',7184,'Vandel');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1094,'Region Syddanmark','Billund Kommune',7190,'Billund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1095,'Region Syddanmark','Vejle Kommune',7190,'Billund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1096,'Region Syddanmark','Billund Kommune',7200,'Grindsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1097,'Region Syddanmark','Varde Kommune',7200,'Grindsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1098,'Region Syddanmark','Vejle Kommune',7200,'Grindsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1099,'Region Syddanmark','Billund Kommune',7250,'Hejnsvig');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1100,'Region Midtjylland','Herning Kommune',7260,'Sønder Omme');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1101,'Region Syddanmark','Billund Kommune',7260,'Sønder Omme');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1102,'Region Midtjylland','Herning Kommune',7270,'Stakroge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1103,'Region Midtjylland','Ringkøbing-Skjern Kommune',7270,'Stakroge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1104,'Region Syddanmark','Billund Kommune',7270,'Stakroge');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1105,'Region Midtjylland','Herning Kommune',7280,'Sønder Felding');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1106,'Region Midtjylland','Ringkøbing-Skjern Kommune',7280,'Sønder Felding');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1107,'Region Syddanmark','Vejle Kommune',7300,'Jelling');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1108,'Region Syddanmark','Vejle Kommune',7321,'Gadbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1109,'Region Midtjylland','Ikast-Brande Kommune',7323,'Give');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1110,'Region Syddanmark','Vejle Kommune',7323,'Give');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1111,'Region Midtjylland','Herning Kommune',7330,'Brande');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1112,'Region Midtjylland','Ikast-Brande Kommune',7330,'Brande');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1113,'Region Syddanmark','Vejle Kommune',7330,'Brande');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1114,'Region Midtjylland','Ikast-Brande Kommune',7361,'Ejstrupholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1115,'Region Syddanmark','Vejle Kommune',7361,'Ejstrupholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1116,'Region Midtjylland','Silkeborg Kommune',7362,'Hampen');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1117,'Region Midtjylland','Ikast-Brande Kommune',7362,'Hampen');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1118,'Region Midtjylland','Herning Kommune',7400,'Herning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1119,'Region Midtjylland','Ikast-Brande Kommune',7400,'Herning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1120,'Region Midtjylland','Ringkøbing-Skjern Kommune',7400,'Herning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1121,'Region Midtjylland','Ikast-Brande Kommune',7430,'Ikast');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1122,'Region Midtjylland','Silkeborg Kommune',7441,'Bording');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1123,'Region Midtjylland','Ikast-Brande Kommune',7441,'Bording');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1124,'Region Midtjylland','Silkeborg Kommune',7442,'Engesvang');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1125,'Region Midtjylland','Ikast-Brande Kommune',7442,'Engesvang');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1126,'Region Midtjylland','Herning Kommune',7451,'Sunds');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1127,'Region Midtjylland','Ikast-Brande Kommune',7451,'Sunds');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1128,'Region Midtjylland','Herning Kommune',7470,'Karup J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1129,'Region Midtjylland','Silkeborg Kommune',7470,'Karup J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1130,'Region Midtjylland','Viborg Kommune',7470,'Karup J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1131,'Region Midtjylland','Herning Kommune',7480,'Vildbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1132,'Region Midtjylland','Ringkøbing-Skjern Kommune',7480,'Vildbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1133,'Region Midtjylland','Herning Kommune',7490,'Aulum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1134,'Region Midtjylland','Herning Kommune',7500,'Holstebro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1135,'Region Midtjylland','Holstebro Kommune',7500,'Holstebro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1136,'Region Midtjylland','Struer Kommune',7500,'Holstebro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1137,'Region Midtjylland','Herning Kommune',7540,'Haderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1138,'Region Midtjylland','Holstebro Kommune',7540,'Haderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1139,'Region Midtjylland','Viborg Kommune',7540,'Haderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1140,'Region Midtjylland','Herning Kommune',7550,'Sørvad');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1141,'Region Midtjylland','Holstebro Kommune',7560,'Hjerm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1142,'Region Midtjylland','Struer Kommune',7560,'Hjerm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1143,'Region Midtjylland','Holstebro Kommune',7570,'Vemb');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1144,'Region Midtjylland','Lemvig Kommune',7570,'Vemb');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1145,'Region Midtjylland','Holstebro Kommune',7600,'Struer');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1146,'Region Midtjylland','Lemvig Kommune',7600,'Struer');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1147,'Region Midtjylland','Struer Kommune',7600,'Struer');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1148,'Region Midtjylland','Lemvig Kommune',7620,'Lemvig');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1149,'Region Midtjylland','Lemvig Kommune',7650,'Bøvlingbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1150,'Region Midtjylland','Lemvig Kommune',7660,'Bækmarksbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1151,'Region Midtjylland','Struer Kommune',7660,'Bækmarksbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1152,'Region Midtjylland','Lemvig Kommune',7673,'Harboøre');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1153,'Region Midtjylland','Lemvig Kommune',7680,'Thyborøn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1154,'Region Nordjylland','Thisted Kommune',7700,'Thisted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1155,'Region Nordjylland','Thisted Kommune',7730,'Hanstholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1156,'Region Nordjylland','Thisted Kommune',7741,'Frøstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1157,'Region Nordjylland','Thisted Kommune',7742,'Vesløs');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1158,'Region Nordjylland','Thisted Kommune',7752,'Snedsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1159,'Region Nordjylland','Thisted Kommune',7755,'Bedsted Thy');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1160,'Region Nordjylland','Thisted Kommune',7760,'Hurup Thy');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1161,'Region Midtjylland','Struer Kommune',7760,'Hurup Thy');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1162,'Region Nordjylland','Thisted Kommune',7770,'Vestervig');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1163,'Region Midtjylland','Struer Kommune',7790,'Thyholm');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1164,'Region Midtjylland','Holstebro Kommune',7800,'Skive');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1165,'Region Midtjylland','Skive Kommune',7800,'Skive');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1166,'Region Midtjylland','Viborg Kommune',7800,'Skive');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1167,'Region Midtjylland','Herning Kommune',7830,'Vinderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1168,'Region Midtjylland','Holstebro Kommune',7830,'Vinderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1169,'Region Midtjylland','Struer Kommune',7830,'Vinderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1170,'Region Midtjylland','Skive Kommune',7830,'Vinderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1171,'Region Midtjylland','Skive Kommune',7840,'Højslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1172,'Region Midtjylland','Viborg Kommune',7840,'Højslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1173,'Region Midtjylland','Viborg Kommune',7850,'Stoholm Jyll');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1174,'Region Midtjylland','Skive Kommune',7860,'Spøttrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1175,'Region Midtjylland','Skive Kommune',7870,'Roslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1176,'Region Midtjylland','Skive Kommune',7884,'Fur');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1177,'Region Nordjylland','Morsø Kommune',7900,'Nykøbing M');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1178,'Region Nordjylland','Morsø Kommune',7950,'Erslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1179,'Region Nordjylland','Morsø Kommune',7960,'Karby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1180,'Region Nordjylland','Morsø Kommune',7970,'Redsted M');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1181,'Region Nordjylland','Morsø Kommune',7980,'Vils');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1182,'Region Nordjylland','Morsø Kommune',7990,'Øster Assels');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1183,'Region Midtjylland','Aarhus Kommune',8000,'Aarhus C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1184,'Region Midtjylland','Aarhus Kommune',8200,'Aarhus N');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1185,'Region Midtjylland','Aarhus Kommune',8210,'Aarhus V');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1186,'Region Midtjylland','Aarhus Kommune',8220,'Brabrand');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1187,'Region Midtjylland','Aarhus Kommune',8230,'Åbyhøj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1188,'Region Midtjylland','Aarhus Kommune',8240,'Risskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1189,'Region Midtjylland','Aarhus Kommune',8245,'Risskov Ø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1190,'Region Midtjylland','Aarhus Kommune',8250,'Egå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1191,'Region Midtjylland','Aarhus Kommune',8260,'Viby J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1192,'Region Midtjylland','Aarhus Kommune',8270,'Højbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1193,'Region Midtjylland','Odder Kommune',8300,'Odder');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1194,'Region Midtjylland','Aarhus Kommune',8300,'Odder');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1195,'Region Midtjylland','Samsø Kommune',8305,'Samsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1196,'Region Midtjylland','Aarhus Kommune',8310,'Tranbjerg J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1197,'Region Midtjylland','Aarhus Kommune',8320,'Mårslet');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1198,'Region Midtjylland','Aarhus Kommune',8330,'Beder');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1199,'Region Midtjylland','Odder Kommune',8340,'Malling');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1200,'Region Midtjylland','Aarhus Kommune',8340,'Malling');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1201,'Region Midtjylland','Odder Kommune',8350,'Hundslund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1202,'Region Midtjylland','Aarhus Kommune',8355,'Solbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1203,'Region Midtjylland','Aarhus Kommune',8361,'Hasselager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1204,'Region Midtjylland','Skanderborg Kommune',8362,'Hørning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1205,'Region Midtjylland','Aarhus Kommune',8362,'Hørning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1206,'Region Midtjylland','Favrskov Kommune',8370,'Hadsten');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1207,'Region Midtjylland','Favrskov Kommune',8380,'Trige');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1208,'Region Midtjylland','Aarhus Kommune',8380,'Trige');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1209,'Region Midtjylland','Aarhus Kommune',8381,'Tilst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1210,'Region Midtjylland','Favrskov Kommune',8382,'Hinnerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1211,'Region Midtjylland','Aarhus Kommune',8382,'Hinnerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1212,'Region Midtjylland','Syddjurs Kommune',8400,'Ebeltoft');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1213,'Region Midtjylland','Syddjurs Kommune',8410,'Rønde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1214,'Region Midtjylland','Syddjurs Kommune',8420,'Knebel');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1215,'Region Midtjylland','Syddjurs Kommune',8444,'Balle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1216,'Region Midtjylland','Norddjurs Kommune',8444,'Balle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1217,'Region Midtjylland','Favrskov Kommune',8450,'Hammel');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1218,'Region Midtjylland','Silkeborg Kommune',8450,'Hammel');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1219,'Region Midtjylland','Aarhus Kommune',8462,'Harlev J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1220,'Region Midtjylland','Skanderborg Kommune',8464,'Galten');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1221,'Region Midtjylland','Aarhus Kommune',8464,'Galten');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1222,'Region Midtjylland','Favrskov Kommune',8471,'Sabro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1223,'Region Midtjylland','Skanderborg Kommune',8471,'Sabro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1224,'Region Midtjylland','Aarhus Kommune',8471,'Sabro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1225,'Region Midtjylland','Favrskov Kommune',8472,'Sporup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1226,'Region Midtjylland','Silkeborg Kommune',8472,'Sporup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1227,'Region Midtjylland','Skanderborg Kommune',8472,'Sporup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1228,'Region Midtjylland','Norddjurs Kommune',8500,'Grenaa');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1229,'Region Midtjylland','Aarhus Kommune',8520,'Lystrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1230,'Region Midtjylland','Aarhus Kommune',8530,'Hjortshøj');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1231,'Region Midtjylland','Aarhus Kommune',8541,'Skødstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1232,'Region Midtjylland','Syddjurs Kommune',8543,'Hornslet');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1233,'Region Midtjylland','Aarhus Kommune',8543,'Hornslet');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1234,'Region Midtjylland','Syddjurs Kommune',8544,'Mørke');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1235,'Region Midtjylland','Syddjurs Kommune',8550,'Ryomgård');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1236,'Region Midtjylland','Norddjurs Kommune',8550,'Ryomgård');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1237,'Region Midtjylland','Syddjurs Kommune',8560,'Kolind');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1238,'Region Midtjylland','Norddjurs Kommune',8560,'Kolind');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1239,'Region Midtjylland','Syddjurs Kommune',8570,'Trustrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1240,'Region Midtjylland','Norddjurs Kommune',8570,'Trustrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1241,'Region Midtjylland','Syddjurs Kommune',8581,'Nimtofte');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1242,'Region Midtjylland','Norddjurs Kommune',8581,'Nimtofte');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1243,'Region Midtjylland','Norddjurs Kommune',8585,'Glesborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1244,'Region Midtjylland','Norddjurs Kommune',8586,'Ørum Djurs');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1245,'Region Midtjylland','Norddjurs Kommune',8592,'Anholt');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1246,'Region Midtjylland','Silkeborg Kommune',8600,'Silkeborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1247,'Region Midtjylland','Skanderborg Kommune',8600,'Silkeborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1248,'Region Midtjylland','Ikast-Brande Kommune',8600,'Silkeborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1249,'Region Midtjylland','Silkeborg Kommune',8620,'Kjellerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1250,'Region Midtjylland','Viborg Kommune',8620,'Kjellerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1251,'Region Midtjylland','Silkeborg Kommune',8632,'Lemming');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1252,'Region Midtjylland','Favrskov Kommune',8641,'Sorring');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1253,'Region Midtjylland','Silkeborg Kommune',8641,'Sorring');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1254,'Region Midtjylland','Silkeborg Kommune',8643,'Ans By');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1255,'Region Midtjylland','Viborg Kommune',8643,'Ans By');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1256,'Region Midtjylland','Silkeborg Kommune',8653,'Them');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1257,'Region Midtjylland','Horsens Kommune',8654,'Bryrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1258,'Region Midtjylland','Silkeborg Kommune',8654,'Bryrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1259,'Region Midtjylland','Ikast-Brande Kommune',8654,'Bryrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1260,'Region Midtjylland','Horsens Kommune',8660,'Skanderborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1261,'Region Midtjylland','Odder Kommune',8660,'Skanderborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1262,'Region Midtjylland','Skanderborg Kommune',8660,'Skanderborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1263,'Region Midtjylland','Aarhus Kommune',8660,'Skanderborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1264,'Region Midtjylland','Skanderborg Kommune',8670,'Låsby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1265,'Region Midtjylland','Horsens Kommune',8680,'Ry');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1266,'Region Midtjylland','Silkeborg Kommune',8680,'Ry');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1267,'Region Midtjylland','Skanderborg Kommune',8680,'Ry');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1268,'Region Midtjylland','Horsens Kommune',8700,'Horsens');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1269,'Region Midtjylland','Hedensted Kommune',8700,'Horsens');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1270,'Region Midtjylland','Hedensted Kommune',8721,'Daugård');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1271,'Region Midtjylland','Hedensted Kommune',8722,'Hedensted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1272,'Region Midtjylland','Hedensted Kommune',8723,'Løsning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1273,'Region Midtjylland','Horsens Kommune',8732,'Hovedgård');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1274,'Region Midtjylland','Horsens Kommune',8740,'Brædstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1275,'Region Midtjylland','Silkeborg Kommune',8740,'Brædstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1276,'Region Midtjylland','Horsens Kommune',8751,'Gedved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1277,'Region Midtjylland','Skanderborg Kommune',8751,'Gedved');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1278,'Region Midtjylland','Horsens Kommune',8752,'Østbirk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1279,'Region Midtjylland','Horsens Kommune',8762,'Flemming');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1280,'Region Midtjylland','Hedensted Kommune',8762,'Flemming');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1281,'Region Midtjylland','Hedensted Kommune',8763,'Rask Mølle');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1282,'Region Midtjylland','Horsens Kommune',8765,'Klovborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1283,'Region Midtjylland','Ikast-Brande Kommune',8765,'Klovborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1284,'Region Midtjylland','Ikast-Brande Kommune',8766,'Nørre Snede');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1285,'Region Midtjylland','Hedensted Kommune',8766,'Nørre Snede');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1286,'Region Midtjylland','Horsens Kommune',8781,'Stenderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1287,'Region Midtjylland','Hedensted Kommune',8781,'Stenderup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1288,'Region Midtjylland','Horsens Kommune',8783,'Hornsyld');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1289,'Region Midtjylland','Hedensted Kommune',8783,'Hornsyld');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1290,'Region Midtjylland','Horsens Kommune',8789,'Endelave');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1291,'Region Midtjylland','Odder Kommune',8799,'Tunø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1292,'Region Midtjylland','Silkeborg Kommune',8800,'Viborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1293,'Region Midtjylland','Viborg Kommune',8800,'Viborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1294,'Region Midtjylland','Viborg Kommune',8830,'Tjele');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1295,'Region Midtjylland','Viborg Kommune',8831,'Løgstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1296,'Region Midtjylland','Viborg Kommune',8832,'Skals');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1297,'Region Midtjylland','Silkeborg Kommune',8840,'Rødkærsbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1298,'Region Midtjylland','Viborg Kommune',8840,'Rødkærsbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1299,'Region Midtjylland','Favrskov Kommune',8850,'Bjerringbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1300,'Region Midtjylland','Viborg Kommune',8850,'Bjerringbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1301,'Region Midtjylland','Favrskov Kommune',8860,'Ulstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1302,'Region Midtjylland','Randers Kommune',8860,'Ulstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1303,'Region Midtjylland','Viborg Kommune',8860,'Ulstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1304,'Region Midtjylland','Favrskov Kommune',8870,'Langå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1305,'Region Midtjylland','Randers Kommune',8870,'Langå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1306,'Region Midtjylland','Favrskov Kommune',8881,'Thorsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1307,'Region Midtjylland','Silkeborg Kommune',8881,'Thorsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1308,'Region Midtjylland','Favrskov Kommune',8882,'Fårvang');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1309,'Region Midtjylland','Silkeborg Kommune',8882,'Fårvang');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1310,'Region Midtjylland','Silkeborg Kommune',8883,'Gjern');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1311,'Region Midtjylland','Randers Kommune',8900,'Randers C');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1312,'Region Midtjylland','Randers Kommune',8920,'Randers NV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1313,'Region Midtjylland','Randers Kommune',8930,'Randers NØ');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1314,'Region Midtjylland','Favrskov Kommune',8940,'Randers SV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1315,'Region Midtjylland','Randers Kommune',8940,'Randers SV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1316,'Region Midtjylland','Norddjurs Kommune',8950,'Ørsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1317,'Region Midtjylland','Favrskov Kommune',8960,'Randers SØ');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1318,'Region Midtjylland','Randers Kommune',8960,'Randers SØ');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1319,'Region Midtjylland','Norddjurs Kommune',8961,'Allingåbro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1320,'Region Midtjylland','Syddjurs Kommune',8963,'Auning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1321,'Region Midtjylland','Norddjurs Kommune',8963,'Auning');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1322,'Region Nordjylland','Mariagerfjord Kommune',8970,'Havndal');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1323,'Region Midtjylland','Randers Kommune',8970,'Havndal');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1324,'Region Midtjylland','Randers Kommune',8981,'Spentrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1325,'Region Midtjylland','Randers Kommune',8983,'Gjerlev J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1326,'Region Nordjylland','Mariagerfjord Kommune',8990,'Fårup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1327,'Region Midtjylland','Randers Kommune',8990,'Fårup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1328,'Region Nordjylland','Aalborg Kommune',9000,'Aalborg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1329,'Region Nordjylland','Aalborg Kommune',9200,'Aalborg SV');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1330,'Region Nordjylland','Aalborg Kommune',9210,'Aalborg SØ');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1331,'Region Nordjylland','Aalborg Kommune',9220,'Aalborg Øst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1332,'Region Nordjylland','Rebild Kommune',9230,'Svenstrup J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1333,'Region Nordjylland','Aalborg Kommune',9230,'Svenstrup J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1334,'Region Nordjylland','Vesthimmerlands Kommune',9240,'Nibe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1335,'Region Nordjylland','Rebild Kommune',9240,'Nibe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1336,'Region Nordjylland','Aalborg Kommune',9240,'Nibe');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1337,'Region Nordjylland','Rebild Kommune',9260,'Gistrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1338,'Region Nordjylland','Aalborg Kommune',9260,'Gistrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1339,'Region Nordjylland','Aalborg Kommune',9270,'Klarup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1340,'Region Nordjylland','Aalborg Kommune',9280,'Storvorde');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1341,'Region Nordjylland','Rebild Kommune',9293,'Kongerslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1342,'Region Nordjylland','Aalborg Kommune',9293,'Kongerslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1343,'Region Nordjylland','Frederikshavn Kommune',9300,'Sæby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1344,'Region Nordjylland','Aalborg Kommune',9310,'Vodskov');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1345,'Region Nordjylland','Brønderslev Kommune',9320,'Hjallerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1346,'Region Nordjylland','Aalborg Kommune',9320,'Hjallerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1347,'Region Nordjylland','Brønderslev Kommune',9330,'Dronninglund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1348,'Region Nordjylland','Frederikshavn Kommune',9330,'Dronninglund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1349,'Region Nordjylland','Brønderslev Kommune',9340,'Asaa');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1350,'Region Nordjylland','Frederikshavn Kommune',9340,'Asaa');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1351,'Region Nordjylland','Brønderslev Kommune',9352,'Dybvad');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1352,'Region Nordjylland','Frederikshavn Kommune',9352,'Dybvad');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1353,'Region Nordjylland','Aalborg Kommune',9362,'Gandrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1354,'Region Nordjylland','Brønderslev Kommune',9370,'Hals');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1355,'Region Nordjylland','Aalborg Kommune',9370,'Hals');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1356,'Region Nordjylland','Aalborg Kommune',9380,'Vestbjerg');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1357,'Region Nordjylland','Jammerbugt Kommune',9381,'Sulsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1358,'Region Nordjylland','Aalborg Kommune',9381,'Sulsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1359,'Region Nordjylland','Brønderslev Kommune',9382,'Tylstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1360,'Region Nordjylland','Jammerbugt Kommune',9382,'Tylstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1361,'Region Nordjylland','Aalborg Kommune',9382,'Tylstrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1362,'Region Nordjylland','Aalborg Kommune',9400,'Nørresundby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1363,'Region Nordjylland','Jammerbugt Kommune',9430,'Vadum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1364,'Region Nordjylland','Aalborg Kommune',9430,'Vadum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1365,'Region Nordjylland','Brønderslev Kommune',9440,'Aabybro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1366,'Region Nordjylland','Jammerbugt Kommune',9440,'Aabybro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1367,'Region Nordjylland','Aalborg Kommune',9440,'Aabybro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1368,'Region Nordjylland','Jammerbugt Kommune',9460,'Brovst');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1369,'Region Nordjylland','Brønderslev Kommune',9480,'Løkken');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1370,'Region Nordjylland','Jammerbugt Kommune',9480,'Løkken');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1371,'Region Nordjylland','Hjørring Kommune',9480,'Løkken');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1372,'Region Nordjylland','Jammerbugt Kommune',9490,'Pandrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1373,'Region Nordjylland','Jammerbugt Kommune',9492,'Blokhus');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1374,'Region Nordjylland','Jammerbugt Kommune',9493,'Saltum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1375,'Region Nordjylland','Rebild Kommune',9500,'Hobro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1376,'Region Nordjylland','Mariagerfjord Kommune',9500,'Hobro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1377,'Region Midtjylland','Viborg Kommune',9500,'Hobro');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1378,'Region Nordjylland','Rebild Kommune',9510,'Arden');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1379,'Region Nordjylland','Mariagerfjord Kommune',9510,'Arden');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1380,'Region Nordjylland','Rebild Kommune',9520,'Skørping');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1381,'Region Nordjylland','Rebild Kommune',9530,'Støvring');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1382,'Region Nordjylland','Aalborg Kommune',9530,'Støvring');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1383,'Region Nordjylland','Vesthimmerlands Kommune',9541,'Suldrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1384,'Region Nordjylland','Rebild Kommune',9541,'Suldrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1385,'Region Nordjylland','Mariagerfjord Kommune',9550,'Mariager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1386,'Region Midtjylland','Randers Kommune',9550,'Mariager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1387,'Region Nordjylland','Rebild Kommune',9560,'Hadsund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1388,'Region Nordjylland','Mariagerfjord Kommune',9560,'Hadsund');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1389,'Region Nordjylland','Rebild Kommune',9574,'Bælum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1390,'Region Nordjylland','Rebild Kommune',9575,'Terndrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1391,'Region Nordjylland','Vesthimmerlands Kommune',9600,'Aars');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1392,'Region Nordjylland','Rebild Kommune',9600,'Aars');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1393,'Region Nordjylland','Vesthimmerlands Kommune',9610,'Nørager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1394,'Region Nordjylland','Rebild Kommune',9610,'Nørager');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1395,'Region Nordjylland','Vesthimmerlands Kommune',9620,'Aalestrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1396,'Region Nordjylland','Rebild Kommune',9620,'Aalestrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1397,'Region Nordjylland','Mariagerfjord Kommune',9620,'Aalestrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1398,'Region Midtjylland','Viborg Kommune',9620,'Aalestrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1399,'Region Nordjylland','Vesthimmerlands Kommune',9631,'Gedsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1400,'Region Midtjylland','Viborg Kommune',9631,'Gedsted');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1401,'Region Nordjylland','Mariagerfjord Kommune',9632,'Møldrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1402,'Region Midtjylland','Viborg Kommune',9632,'Møldrup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1403,'Region Nordjylland','Vesthimmerlands Kommune',9640,'Farsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1404,'Region Nordjylland','Vesthimmerlands Kommune',9670,'Løgstør');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1405,'Region Nordjylland','Jammerbugt Kommune',9670,'Løgstør');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1406,'Region Nordjylland','Vesthimmerlands Kommune',9681,'Ranum');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1407,'Region Nordjylland','Jammerbugt Kommune',9690,'Fjerritslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1408,'Region Nordjylland','Brønderslev Kommune',9700,'Brønderslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1409,'Region Nordjylland','Jammerbugt Kommune',9700,'Brønderslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1410,'Region Nordjylland','Brønderslev Kommune',9740,'Jerslev J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1411,'Region Nordjylland','Hjørring Kommune',9740,'Jerslev J');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1412,'Region Nordjylland','Brønderslev Kommune',9750,'Østervrå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1413,'Region Nordjylland','Frederikshavn Kommune',9750,'Østervrå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1414,'Region Nordjylland','Hjørring Kommune',9750,'Østervrå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1415,'Region Nordjylland','Brønderslev Kommune',9760,'Vrå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1416,'Region Nordjylland','Hjørring Kommune',9760,'Vrå');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1417,'Region Nordjylland','Hjørring Kommune',9800,'Hjørring');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1418,'Region Nordjylland','Frederikshavn Kommune',9830,'Tårs');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1419,'Region Nordjylland','Hjørring Kommune',9830,'Tårs');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1420,'Region Nordjylland','Hjørring Kommune',9850,'Hirtshals');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1421,'Region Nordjylland','Frederikshavn Kommune',9870,'Sindal');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1422,'Region Nordjylland','Hjørring Kommune',9870,'Sindal');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1423,'Region Nordjylland','Frederikshavn Kommune',9881,'Bindslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1424,'Region Nordjylland','Hjørring Kommune',9881,'Bindslev');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1425,'Region Nordjylland','Frederikshavn Kommune',9900,'Frederikshavn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1426,'Region Nordjylland','Hjørring Kommune',9900,'Frederikshavn');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1427,'Region Nordjylland','Læsø Kommune',9940,'Læsø');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1428,'Region Nordjylland','Frederikshavn Kommune',9970,'Strandby');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1429,'Region Nordjylland','Frederikshavn Kommune',9981,'Jerup');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1430,'Region Nordjylland','Frederikshavn Kommune',9982,'Ålbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1431,'Region Nordjylland','Hjørring Kommune',9982,'Ålbæk');
INSERT INTO denmarkCities(CityID,Region,Commune,PostalCode,CityName) VALUES (1432,'Region Nordjylland','Frederikshavn Kommune',9990,'Skagen');
