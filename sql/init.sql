drop database if exists data;
create DATABASE data;

use data;

create table if not exists people (
	_id INT NOT NULL AUTO_INCREMENT,
    ID char(100),
    Name char(100),
    Heigth char(100),
    Mass char(100),
    Hair_color char(100),
    Skin_color char(100),
    Eye_color char(100),
    Birth_year char(100),
    Gender char(100),
    Homeworld char(100),
    Films char(200),
    Species char(200),
    Vehicles char(200),
    Starships char(200),
    primary key(_id)
); 

create table if not exists planet (
	_id INT NOT NULL AUTO_INCREMENT,
    ID char(100),
    Name char(100),
    Rotation_period char(100),
    Orbital_period char(100),
    Diameter char(100),
    Climate char(100),
    Gravity char(100),
    Terrain char(100),
    Surface_water char(100),
    Population char(100),
    Residents char(200),
    Films char(200),
    primary key(_id)
); 

create table if not exists specie (
	_id INT NOT NULL AUTO_INCREMENT,
    ID char(100),
    Name char(100),
    Classification char(100),
    Designation char(100),
    Average_height char(100),
    Skin_colors char(100),
    Eye_colors char(100),
    Average_lifespan char(100),
    Homeworld char(100),
    Language char(100),
    People char(200),
    Films char(200),
    primary key(_id)
); 

# Actor is Character
create table if not exists film (
	_id INT NOT NULL AUTO_INCREMENT,
    ID char(100),
    Title char(100),
    Episode_id char(100),
    Opening_crawl text,
    Director char(100),
    Producer char(100),
    Release_data char(100),
    Actor char(200),
    Planets char(200),
    Starships char(200),
    Vehicles char(200),
    Species char(200),
    primary key(_id)
); 

create table if not exists starship (
	_id INT NOT NULL AUTO_INCREMENT,
    ID char(100),
    Name char(100),
    Model char(100),
    Manufacturer char(100),
    Cost_in_credits char(100),
    Length char(100),
    Max_atmosphering_speed char(100),
    Crew char(100),
    Passenger char(100),
    Cargo_capacity char(100),
    Consumables char(100),
    Hyperdrive_rating char(100),
    MGLT char(00),
    Starship_class char(100),
    Pilots char(200),
    Films char(200),
    primary key(_id)
); 

create table if not exists vehicle (
	_id INT NOT NULL AUTO_INCREMENT,
    ID char(100),
    Name char(100),
    Model char(100),
    Manufacturer char(100),
    Cost_in_credits char(100),
    Length char(100),
    Max_atmosphering_speed char(100),
    Crew char(100),
    Passenger char(100),
    Cargo_capacity char(100),
    Consumables char(100),
    Vehicle_class char(100),
    Pilots char(200),
    Films char(200),
    primary key(_id)
); 