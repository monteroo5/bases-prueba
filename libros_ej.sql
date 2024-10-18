DROP DATABASE IF EXISTS libros;
CREATE DATABASE libros;
USE libros;

CREATE TABLE Autor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  dni VARCHAR(10) UNIQUE KEY
);

CREATE TABLE Tienda (
  cif VARCHAR(20) PRIMARY KEY,
  ubicacion VARCHAR(30),
  web VARCHAR(30)
);

CREATE TABLE Libro (
  id_autor INT FOREIGN KEY,
  cif_tienda VARCHAR(10),
  isbn INT PRIMARY KEY,
  titulo VARCHAR(20)
  genero VARCHAR(50) DEFAULT 'Fantasia',
  precio DOUBLE,
  CHECK (precio > 50),
  fecha_publicacion DATE,
  CHECK (fecha_publicacion < '01-01-2014')
);
