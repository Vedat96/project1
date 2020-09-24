-- maak database aan
create database project1;
-- maak tabellen aan
	CREATE TABLE ACCOUNT(
		ID int not null auto_increment,
		email varchar(255) not null UNIQUE,
		password varchar(255) not null,
		PRIMARY KEY(ID)
	);

	CREATE TABLE PERSOON(
		ID int not null auto_increment PRIMARY KEY,
		voornaam varchar(255) not null,
		achternaam varchar(255) not null,
		PRIMARY KEY(ID),	
		FOREIGN KEY (ID) REFERENCES ACCOUNT(ID)
	);