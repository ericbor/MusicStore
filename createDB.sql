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
    ProductDescription VARCHAR(1000) NOT NULL DEFAULT '',
    ProductPrice DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  
    PRIMARY KEY (ProductID)
);
  
INSERT INTO Product VALUES 
  ('1', '8601', '86 (the band) - True Life Songs and Pictures',
  'The debut album from 86 (the band), True Life Songs and Pictures rocks and twangs in equal measure. Filled with banjo, one-string bass, fiddle, and 3-part harmonies, this semi-rock, semi-country, semi-bluegrass album covers a lot of ground.',
  '14.95'),
  ('2', 'pf01', 'Paddlefoot - The first CD',
  'This 68-minute opus from San Francisco''s Paddlefoot doesn''t pull any punches.  The result is somewhere between The Pogues, Camper Van Beethoven, and Uncle Tupelo.',
  '12.95'),
  ('3', 'pf02', 'Paddlefoot - The second CD',
  'The second CD from San Francisco''s Paddlefoot finds the band maturing as it roams through much of the same musical terrain as the previous CD. While this album occasionally rocks, it also has its introspective and bittersweet moments.',
  '14.95'),
  ('4', 'jr01', 'Joe Rut - Genuine Wood Grained Finish',
  'The debut album from Joe Rut rambles from Byrds-esque folk pop of "Filter" to the country sounds of "Find My Way Marie" to psychedelic Brit-pop tunes like "A Place In All This." This well-crafted album is unique and cohesive, revealing its many layers on repeated listens.',
  '14.95');

CREATE TABLE Song(
  SongID INT NOT NULL AUTO_INCREMENT,
  ProductID INT NOT NULL,
  SongTitle VARCHAR(100) NOT NULL DEFAULT '',

  PRIMARY KEY (SongID),
  FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

INSERT INTO Song VALUES
  ('1', '1', 'Filter'),
  ('2', '1', 'Find My Way Marie'),
  ('3', '1', 'Hole'),
  ('4', '1', '1400 Years'),
  ('5', '1', 'So Long Lazy Ray'),
  ('6', '1', 'A Tuna Is a Damn Big Fish'),
  ('7', '1', 'El Dorado'),
  ('8', '1', 'Dream of You'),
  ('9', '1', 'This Sea Is Full of Monsters'),
  ('10', '1', 'A Place in All This'),
  ('11', '1', 'GTTSWMD'),
  ('12', '1', 'AM Land'),
  ('13', '1', 'Whole Month of Sundays'),
  ('14', '1', 'Penny From a Poor Man');
  
CREATE TABLE Download (
    DownloadID INT NOT NULL AUTO_INCREMENT,
    UserID INT NOT NULL,
    DownloadDate DATETIME NOT NULL,
    ProductCode VARCHAR(10)  NOT NULL,
  
    PRIMARY KEY (DownloadID), 
    FOREIGN KEY (UserID) REFERENCES User (UserID)
);
 