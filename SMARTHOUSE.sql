DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS client_app;
DROP TABLE IF EXISTS consumption;
DROP TABLE IF EXISTS cameras;
DROP TABLE IF EXISTS suite;
DROP TABLE IF EXISTS multimidia;
DROP TABLE IF EXISTS garden;

CREATE TABLE user (
    id_user INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    password VARCHAR(6) NOT NULL,
    funct VARCHAR(25)
);

CREATE TABLE client_app (
    id_client_app INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    d_name VARCHAR(25) NOT NULL,
    d_status VARCHAR(10),
    description VARCHAR(50) NOT NULL,
    user_id INT NOT NULL,
     CONSTRAINT FK_client_app_user FOREIGN KEY (user_id) 
	  REFERENCES user (id_user)
);	

CREATE TABLE consumption(
	daily INT,
	weekly INT,
	device_id INT NOT NULL,
	CONSTRAINT FK_consumption FOREIGN KEY(device_id)
	REFERENCES client_app(id_client_app)
);

CREATE TABLE cameras(
	camera_id INT AUTO_INCREMENT,
	device_id2 INT,
	PRIMARY KEY(camera_id,device_id2),
	CONSTRAINT FK_cameras FOREIGN KEY(device_id2)
	REFERENCES client_app(id_client_app)
);

CREATE TABLE suite(
	suite_id INT AUTO_INCREMENT,
	device_id3 INT,
	PRIMARY KEY(suite_id, device_id3),
	CONSTRAINT FK_suite FOREIGN KEY (device_id3)
	REFERENCES client_app(id_client_app)
);

CREATE TABLE multimidia(
	multimidia_id INT AUTO_INCREMENT,
	device_id4 INT,
	PRIMARY KEY(multimidia_id, device_id4),
	CONSTRAINT FK_multimidia FOREIGN KEY (device_id4)
	REFERENCES client_app(id_client_app)
);

CREATE TABLE garden(
	garden_id INT AUTO_INCREMENT,
	watering_schedule DATE,
	device_id5 INT,
	PRIMARY KEY(garden_id, device_id5),
	CONSTRAINT FK_garden FOREIGN KEY (device_id5)
	REFERENCES client_app(id_client_app)
);
	
	
	
	
	
	
	
	
	
	
