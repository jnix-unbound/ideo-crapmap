REATE TABLE Pledges
(
  id int(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  pledgetext varchar(160),
  created timestamp
);

CREATE TABLE FacebookUsers
(
  fb_id int(50) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  firstname varchar(30) NOT NULL,
  lastname varchar(30),
  created timestamp
);

CREATE TABLE Location
(
  id int(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  latitude decimal(7,5),
  longitude decimal(8,5),
  description varchar(1000),
  name varchar(50),
  created timestamp
);

CREATE TABLE PhoneUsers
(
  id int(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  phonenumber varchar(20),
  created timestamp
);

CREATE TABLE CrapHistory
(
  id int(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  quantity int,
  sighting tinyint,
  location_id int,
  phoneuser_id int,
  facebookuser_id int,
  created timestamp
);

CREATE TABLE PledgeLocations
(
  id int(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  location_id int,
  pledge1 int,
  pledge2 int,
  pledge3 int,
  created timestamp
);

CREATE TABLE UserPledges
(
  id int(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id int(50),
  location_id int(50),
  pledge_id int(50),
  phonenumber_id int(20),
  created timestamp
);

