-- maak database aan
create database project1;
-- maak tabellen aan
	CREATE TABLE ACCOUNT(
		id INT NOT NULL AUTO_INCREMENT,
		gebruikersnaam VARCHAR(255) NOT NULL UNIQUE,
		email VARCHAR(255) NOT NULL UNIQUE,
		password VARCHAR(255) NOT NULL,
		PRIMARY KEY(ID)
	);

	CREATE TABLE PERSOON(
		id int NOT NULL AUTO_INCREMENT,
		account_id int NOT NULL AUTO_INCREMENT,
		voornaam VARCHAR(255) NOT NULL,
		tussenvoegsel VARCHAR(255),
		achternaam VARCHAR(255) NOT NULL,
		PRIMARY KEY(id),	
		FOREIGN KEY (account_id) REFERENCES account(id)
	);