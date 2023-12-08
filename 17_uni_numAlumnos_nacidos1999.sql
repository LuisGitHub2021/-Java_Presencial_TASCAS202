USE universidad;

SELECT 

count(p.tipo) AS 'Nº Alumnos de 1999'

FROM persona p
WHERE p.tipo='alumno'
AND p.fecha_nacimiento
BETWEEN '1999-01-01'
AND '1999-12-31'