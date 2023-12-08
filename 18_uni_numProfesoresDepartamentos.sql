USE universidad;

SELECT 

d.nombre,
count(pf.id_profesor) Profesores 

FROM persona p
JOIN profesor pf
ON p.id=pf.id_profesor
JOIN departamento d
ON d.id=pf.id_departamento
GROUP BY d.nombre
ORDER BY Profesores  DESC
