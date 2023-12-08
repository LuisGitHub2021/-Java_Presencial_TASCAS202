USE universidad;

SELECT 

d.nombre,
p.apellido1,
p.apellido2,
p.nombre

FROM persona p
JOIN profesor pf
ON p.id=pf.id_profesor
LEFT JOIN departamento d
ON d.id=pf.id_departamento
ORDER BY
d.nombre,
p.apellido1,
p.apellido2,
p.nombre,
p.fecha_nacimiento DESC
