USE universidad;

SELECT  

pf.id_profesor,
p.nombre,
p.apellido1,
p.apellido2,
count(a.id)

FROM asignatura a
LEFT JOIN profesor pf
ON pf.id_profesor=a.id_profesor
LEFT JOIN persona p
ON p.id=pf.id_profesor
GROUP BY pf.id_profesor
ORDER BY count(a.id) DESC
