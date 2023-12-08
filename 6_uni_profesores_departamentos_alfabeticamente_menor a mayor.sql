USE universidad;

SELECT 

p.apellido1,
p.apellido2,
p.nombre,
d.nombre

FROM persona p
JOIN profesor pf
ON p.id=pf.id_profesor
JOIN departamento d
ON d.id=pf.id_departamento
ORDER BY
p.apellido1,
p.apellido2,
p.nombre,
p.fecha_nacimiento DESC
