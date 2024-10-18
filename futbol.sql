create database futbol;
use futbol;

CREATE TABLE equipos (
	id INT PRIMARY KEY,
	nombre VARCHAR(100),
	ciudad VARCHAR
)

CREATE TABLE jugadores (
	dni VARCHAR PRIMARY KEY,
	nacionalidad VARCHAR,
	dorsal INT,
	altura FLOAT(),
	id_equipo INT,
	FOREIGN KEY (id_equipo) REFERENCES equipos(id)
);

INSERT INTO equipos values
('1902','Real Madrid','Madrid'),
	
	
	
