USE universidad;

SELECT

p.nombre,
p.apellido1,
p.apellido2,
p.tipo,
p.telefono

FROM persona p
WHERE p.tipo='alumno'
AND telefono IS NULL

