USE universidad;

SELECT

p.nombre,
p.apellido1,
p.apellido2,
p.tipo,
p.fecha_nacimiento

FROM persona p
WHERE p.tipo='alumno'
AND p.fecha_nacimiento
BETWEEN '1999-01-01' 
AND '1999-12-31' 

