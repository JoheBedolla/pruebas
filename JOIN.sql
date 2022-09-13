SELECT * FROM libro L JOIN categoria_libro C ON L.ID = C.CODIGO;

SELECT * FROM libro L LEFT JOIN categoria_libro C ON L.ID = C.CODIGO; ---Registros de tabla izquierda más lo que coincidan
---muestra los libros aunque no tengan categoria
SELECT * FROM libro L INNER JOIN categoria_libro C ON L.ID = C.CODIGO; ---Registros que coinciden en ambas tablas