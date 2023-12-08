USE universidad;

SELECT 

count(p.tipo) AS 'Nº Alumnos'

FROM persona p
WHERE p.tipo='alumno'