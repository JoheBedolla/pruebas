CREATE TABLE categoria_libro (
	CODIGO INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	NOMBRE TEXT NOT NULL
);

CREATE TABLE `libro` (
`ID` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
`ISBN` TEXT NOT NULL,
`TITULO`TEXT NOT NULL,
`DESCRIPCION` TEXT NOT NULL DEFAULT "",
`AUTOR`INTEGER NOT NULL DEFAULT 1,
`precio` INTEGER,
`categoria_id` INTEGER,
FOREIGN KEY(`AUTOR`) REFERENCES `autor`(`ID`),
FOREIGN KEY(`categoria_id`) REFERENCES `categoria_libro`(`CODIGO`)
);


--Copiar de una tabla a otra
CREATE TABLE libro_copia AS SELECT ISBN, TITULO from libro;

--Agregar columnas ALTER, también para agregar o quitar restricciones
ALTER TABLE libro
ADD precio INTEGER;

ALTER TABLE libro
ADD categoria_id INTEGER REFERENCES categoria_libro(ID); --Agregue columna con Foreign Key

--Borrar columna de Tabla 
ALTER TABLE libro
DROP COLUMN categoria_id

--Modificar tipo de dato de una columna
ALTER TABLE libro
ALTER COLUMN precio REAL;

--Agregar restriccion 
ALTER TABLE libro
ADD CONSTRAINT chk_price CHECK (precio>=0);

--Borrar tabla
DROP TABLE libro_copia;
--Borrar los datos de la tabla sin borrar la tabla
TRUNCATE TABLE libro_copia
