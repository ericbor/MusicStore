/***********************************************************
* Create the database named musicstore, its tables
************************************************************/

DROP DATABASE IF EXISTS musicstore;

CREATE DATABASE musicstore;

USE musicstore;

CREATE TABLE User (
  UserID INT NOT NULL AUTO_INCREMENT,
  Email VARCHAR(50),
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  
  PRIMARY KEY(UserID) 
);

INSERT INTO User 
  (Email, FirstName, LastName)
VALUES 
  ('jsmith@gmail.com', 'John', 'Smith'),
  ('andi@murach.com', 'Andrea', 'Steelman'), 
  ('joelmurach@yahoo.com', 'Joel', 'Murach');
 
CREATE TABLE UserPass (
  Username varchar(15) NOT NULL PRIMARY KEY,
  Password varchar(15) NOT NULL
);
  
INSERT INTO UserPass VALUES ('andrea', 'sesame'),
                            ('joel', 'sesame'),
                            ('anne', 'sesame');
                          
CREATE TABLE UserRole (   
  Username VARCHAR(15) NOT NULL,
  Rolename VARCHAR(15) NOT NULL,

  PRIMARY KEY (Username, Rolename)
);
  
INSERT INTO UserRole VALUES ('andrea', 'service'),
                            ('andrea', 'programmer'),
                            ('joel', 'programmer');

CREATE TABLE Customer (
    CustomerID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    CompanyName VARCHAR(50),
    Address1 VARCHAR(50),
    Address2 VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip VARCHAR(50),
    Country VARCHAR(50),
    CreditCardType VARCHAR(50),
    CreditCardNumber VARCHAR(50),
    CreditCardExpirationDate VARCHAR(50),
  
    PRIMARY KEY (CustomerID)
);
  
CREATE TABLE Invoice(
    InvoiceID INT NOT NULL AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    InvoiceDate DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    TotalAmount FLOAT NOT NULL DEFAULT '0',
    IsProcessed enum('y','n') DEFAULT NULL,
  
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);
  
CREATE TABLE LineItem(
    LineItemID INT NOT NULL AUTO_INCREMENT,
    InvoiceID INT NOT NULL DEFAULT '0',
    ProductID INT NOT NULL DEFAULT '0',
    Quantity INT NOT NULL DEFAULT '0',
  
    PRIMARY KEY (LineItemID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice (InvoiceID)
);
  
CREATE TABLE Product(
    ProductID INT NOT NULL AUTO_INCREMENT,
    ProductCode VARCHAR(10) NOT NULL DEFAULT '',
    ProductTitle VARCHAR(100) NOT NULL DEFAULT '',
	ProductAlbum VARCHAR(100) NOT NULL DEFAULT '',
	ProductType VARCHAR(50) NOT NULL DEFAULT '',
    ProductDescription VARCHAR(1000) NOT NULL DEFAULT '',
    ProductPrice DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  
    PRIMARY KEY (ProductID)
);
  
INSERT INTO Product VALUES 
  ('1', '8601', '86 (the band)', 'True Life Songs and Pictures', 'Audio CD',
  'The debut album from 86 (the band), True Life Songs and Pictures rocks and twangs in equal measure. Filled with banjo, one-string bass, fiddle, and 3-part harmonies, this semi-rock, semi-country, semi-bluegrass album covers a lot of ground.',
  '11.95'),
  ('2', 'pf01', 'Paddlefoot', 'The first CD', 'Audio CD',
  'This 68-minute opus from San Francisco''s Paddlefoot doesn''t pull any punches.  The result is somewhere between The Pogues, Camper Van Beethoven, and Uncle Tupelo.',
  '12.95'),
  ('3', 'pf02', 'Paddlefoot', 'The second CD', 'Audio CD',
  'The second CD from San Francisco''s Paddlefoot finds the band maturing as it roams through much of the same musical terrain as the previous CD. While this album occasionally rocks, it also has its introspective and bittersweet moments.',
  '13.95'),
  ('4', 'jr01', 'Joe Rut', 'Genuine Wood Grained Finish', 'Audio CD',
  'The debut album from Joe Rut rambles from Byrds-esque folk pop of "Filter" to the country sounds of "Find My Way Marie" to psychedelic Brit-pop tunes like "A Place In All This." This well-crafted album is unique and cohesive, revealing its many layers on repeated listens.',
  '14.95');
  
CREATE TABLE Song(
  SongID INT NOT NULL AUTO_INCREMENT,
  ProductID INT NOT NULL,
  SongTitle VARCHAR(100) NOT NULL DEFAULT '',
  Playble TINYINT NOT NULL DEFAULT 0,

  PRIMARY KEY (SongID),
  FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

INSERT INTO Song VALUES
  ('1', '4', 'Filter', '1'),
  ('2', '4', 'Find My Way Marie', '0'),
  ('3', '4', 'Hole', '0'),
  ('4', '4', '1400 Years', '0'),
  ('5', '4', 'So Long Lazy Ray', '1'),
  ('6', '4', 'A Tuna Is a Damn Big Fish', '0'),
  ('7', '4', 'El Dorado', '0'),
  ('8', '4', 'Dream of You', '0'),
  ('9', '4', 'This Sea Is Full of Monsters', '0'),
  ('10', '4', 'A Place in All This', '0'),
  ('11', '4', 'GTTSWMD', '0'),
  ('12', '4', 'AM Land', '0'),
  ('13', '4', 'Whole Month of Sundays', '0'),
  ('14', '4', 'Penny From a Poor Man', '0'),
  
  ('15', '2', 'Pete and Jimmy', '0'),
  ('16', '2', 'Whiskey Before Breakfast', '1'),
  ('17', '2', 'Fishing Rod', '0'),
  ('18', '2', 'The Murphy-Ryan Polkas', '0'),
  ('19', '2', 'John Henry"s Blues', '0'),
  ('20', '2', '64 Corvair, Part 2', '1'),
  ('21', '2', 'Racoons Like Moonshine, Too', '0'),
  ('22', '2', 'Shelf Life', '0'),
  ('23', '2', 'Hey Chris', '0'),
  ('24', '2', 'Tiny House', '0'),
  ('25', '2', 'Strum Along Slow', '0'),
  ('26', '2', 'She"s Moving Back Home', '0'),
  ('27', '2', 'When I Was Nine', '0'),
  ('28', '2', 'Kangaroo"s Paw', '0'),
  ('29', '2', 'Sound of the Fiddle', '0'),
  ('30', '2', 'Amatxi Smiled', '0'),
  ('31', '2', 'Yeah', '0'),
  ('32', '2', 'Dashboard Waltz', '0'),
  ('33', '2', 'Rock and Roll Scene', '0'),
  
  ('34', '3', 'Neon Lights', '1'),
  ('35', '3', 'Just About Midnight', '0'),
  ('36', '3', 'Tank Hill', '1'),
  ('37', '3', 'et the Possums Play Possum', '0'),
  ('38', '3', 'Find Me', '0'),
  ('39', '3', 'Take a Picture', '0'),
  ('40', '3', 'Billy Banjo', '0'),
  ('41', '3', 'Most of the Time', '0'),
  ('42', '3', 'Armenian Wedding', '0'),
  ('43', '3', 'West Portal', '0'),
  ('44', '3', 'Twist Away', '0'),
  ('45', '3', 'Kern County Waltz', '0'),
  ('46', '3', 'Distance', '0'),
  ('47', '3', 'Sunshine on the Trees', '0'),
  
  ('48', '1', 'How to Get There', '0'),
  ('49', '1', 'You Are a Star', '1'),
  ('50', '1', 'Don"t Make No Difference', '1'),
  ('51', '1', 'Unidentified Fiddling Object', '0'),
  ('52', '1', 'Beat Up Old Car', '0'),
  ('53', '1', 'Wildflowers', '0'),
  ('54', '1', 'What You Whistle When You Walk Home', '0'),
  ('55', '1', 'Three Sheets to the Wind', '0'),
  ('56', '1', 'Singin" Drunk', '0'),
  ('57', '1', 'Morning Sun', '0'),
  ('58', '1', 'Don"t Close Your Eyes', '0');
  
 
CREATE TABLE Download (
    DownloadID INT NOT NULL AUTO_INCREMENT,
    UserID INT NOT NULL,
    DownloadDate DATETIME NOT NULL,
    ProductCode VARCHAR(10)  NOT NULL,
  
    PRIMARY KEY (DownloadID), 
    FOREIGN KEY (UserID) REFERENCES User (UserID)
);
 