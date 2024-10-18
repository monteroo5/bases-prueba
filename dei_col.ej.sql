DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

CREATE TABLE ej1 (
	a INT,
	b DATE,
	c VARCHAR(5),
);


-- INSERTAR:
-- 1. valores en a, b y c
INSERT INTO ej1 VALUES (1, '2023-01-01', 'hey');
-- 2. valores en orden b, c, a
INSERT INTO ej1 (b, c, a) VALUES ('2024-01-01','hola',2);
-- 3. valores en c y b
INSERT INTO ej1 (c, b) VALUES ('bye','2024-10-14');
-- 4. valor en b
INSERT INTO ej1 (b) VALUES ('2025-10-12');
INSERT INTO ej1 (b) VALUES ('2025-10-12');

SELECT * FROM ej1;

-- EJERCICIO 2
CREATE TABLE ej2 (
	a INT NOT NULL,
	b INT NOT NULL DEFAULT 0,
	c VARCHAR(5),
	d VARCHAR(5) DEFAULT 'Hola',
);
-- Insertar:
-- 1. Valores en a, b, d
INSERT INTO ej2 (a, b, d) VALUES (10, 20, 'Hola');
-- 2. Valores en a, b, c
INSERT INTO ej2 (a, b, c) VALUES (10, 20, 'Adios');
-- 3. Valores en c, a y default en b
INSERT INTO ej2 (c, a, b) VALUES ('palabra', 8, NULL);
-- 4. Valor en a con default en b y d
INSERT INTO ej2 (a) VALUES (9);
-- 5. Valor en a con NULL en d
INSERT INTO ej2 (a, d) VALUES (9, NULL);

SELECT * FROM ej2;

--EJERCICIO 3
CREATE TABLE ej3 (
	a INT AUTO_INCREMENT PRIMARY KEY,
	b VARCHAR(5) UNIQUE KEY,
	c VARCHAR(5) DEFAULT 'hola',
);

INSERT INTO ej3 (b, c)  VALUES
	('papap', 'prueba');
	('batman', 'cosa');
INSERT INTO ej3 VALUES
	(5, 'bla', 'pepe');
INSERT INTO ej3 VALUES
	('otra', 'mas');

SELECT * FROM ej3;
