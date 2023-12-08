USE universidad;

SELECT 

a.nombre,
p.apellido1,
p.apellido2,
p.nombre

FROM persona p
JOIN profesor pf
ON p.id=pf.id_profesor
LEFT JOIN asignatura a
ON a.id_profesor=pf.id_profesor
WHERE a.id IS NULL
ORDER BY
a.nombre,
p.apellido1,
p.apellido2,
p.nombre,
p.fecha_nacimiento DESC
