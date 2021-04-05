create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150) UNIQUE,
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_id BIGINT REFERENCES car (id) ON DELETE SET NULL,
	UNIQUE(car_id)
);


insert into car (id, make, model, price) values (1, 'Volkswagen', 'Jetta', '69034.24');
insert into car (id, make, model, price) values (2, 'Scion', 'xB', '51376.47');
insert into car (id, make, model, price) values (3, 'Chrysler', 'Cirrus', '73048.14');
insert into car (id, make, model, price) values (4, 'Ford', 'Econoline E250', '71449.93');
insert into car (id, make, model, price) values (5, 'Mitsubishi', 'Mirage', '50695.83');
insert into car (id, make, model, price) values (6, 'Jaguar', 'XK Series', '99831.51');
insert into car (id, make, model, price) values (7, 'Pontiac', 'Firefly', '20974.59');
insert into car (id, make, model, price) values (8, 'Volkswagen', 'Tiguan', '86038.48');
insert into car (id, make, model, price) values (9, 'Suzuki', 'XL-7', '80150.80');
insert into car (id, make, model, price) values (10, 'GMC', 'Acadia', '12808.61');


insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Hermione', 'McEntagart', 'hmcentagart0@tripadvisor.com', 'Agender', '2018-07-04', 'Brazil',10);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Amalie', 'Mulder', 'amulder1@cnn.com', 'Bigender', '2020-01-25', 'France',9);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Sayre', 'Mewes', 'smewes2@yellowbook.com', 'Female', '2017-07-26', 'Sweden',null);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Linell', 'Skett', 'lskett3@wordpress.com', 'Female', '2019-06-17', 'Bulgaria',null);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Kiah', 'Sexcey', 'ksexcey4@cbc.ca', 'Genderqueer', '2018-01-24', 'Argentina',7);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Willi', 'Ousbie', 'wousbie5@auda.org.au', 'Female', '2019-06-04', 'Portugal',null);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Cornall', 'Habert', 'chabert6@ameblo.jp', 'Genderqueer', '2018-05-18', 'Vietnam',5);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Ariel', 'Basilio', 'abasilio7@opensource.org', 'Non-binary', '2019-01-27', 'Indonesia',null);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Alameda', 'Lukock', 'alukock8@ca.gov', 'Genderqueer', '2020-07-27', 'Philippines',8);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Kris', 'Spridgen', null, 'Male', '2020-09-13', 'Russia',3);
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth,car_id) values ('Pritam', 'Sarkar', 'pritam@gmail.com', 'Male', '2020-09-13', 'Russia',2);
