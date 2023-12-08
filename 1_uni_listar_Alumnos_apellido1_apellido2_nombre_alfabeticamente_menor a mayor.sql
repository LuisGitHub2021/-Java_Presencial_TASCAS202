USE universidad;

SELECT

p.apellido1,
p.apellido2,
p.nombre,
p.fecha_nacimiento,
p.tipo

FROM persona p
WHERE p.tipo='alumno'
ORDER BY
p.apellido1,
p.apellido2,
p.nombre,
p.fecha_nacimiento DESC
