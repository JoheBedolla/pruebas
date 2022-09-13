SELECT * FROM LIBRO;

SELECT DISTINCT categoria_id FROM libro; --Valores distintos

SELECT * FROM libro 
WHERE precio>100;-- Para filtrar registros, también se puede usar Operadores Logicos


SELECT * FROM libro 
WHERE precio>90 AND precio <200;

SELECT * FROM libro
where NOT precio<100;

SELECT * FROM libro ORDER BY precio ASC; --Ordenar de forme ascendente o DESCENDENTE

SELECT * FROM libro ORDER BY precio ASC
LIMIT 1;

INSERT INTO categoria_libro (NOMBRE) VALUES ('Ciencia Ficción') --inserta un nuevo registro en la tabla

INSERT INTO categoria_libro VALUES (2, 'TERROR')

UPDATE categoria_libro SET NOMBRE = 'Terror' --Actualizar campos
WHERE CODIGO = 2;

DELETE FROM categoria_libro WHERE CODIGO = 2;

DELETE FROM categoria_libro

UPDATE libro SET (TITULO, AUTOR) VALUES("Alicia", 6)