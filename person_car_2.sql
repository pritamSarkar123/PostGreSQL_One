create table car (
	car_id UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
create table person (
	person_id UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150) UNIQUE,
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_id UUID REFERENCES car (car_id) ON DELETE SET NULL,
	UNIQUE(car_id)
);


insert into car (car_id, make, model, price) values (uuid_generate_v4(), 'Volkswagen', 'Jetta', '69034.24');
insert into car (car_id, make, model, price) values (uuid_generate_v4(), 'Scion', 'xB', '51376.47');
insert into car (car_id, make, model, price) values (uuid_generate_v4(), 'Chrysler', 'Cirrus', '73048.14');
insert into car (car_id, make, model, price) values (uuid_generate_v4(), 'Ford', 'Econoline E250', '71449.93');
insert into car (car_id, make, model, price) values (uuid_generate_v4(), 'Mitsubishi', 'Mirage', '50695.83');


insert into person (person_id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Hermione', 'McEntagart', 'hmcentagart0@tripadvisor.com', 'Agender', '2018-07-04', 'Brazil');
insert into person (person_id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Amalie', 'Mulder', 'amulder1@cnn.com', 'Bigender', '2020-01-25', 'France');
insert into person (person_id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Sayre', 'Mewes', 'smewes2@yellowbook.com', 'Female', '2017-07-26', 'Sweden');
insert into person (person_id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Linell', 'Skett', 'lskett3@wordpress.com', 'Female', '2019-06-17', 'Bulgaria');
insert into person (person_id, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Kiah', 'Sexcey', 'ksexcey4@cbc.ca', 'Genderqueer', '2018-01-24', 'Argentina');
