USE universidad;

SELECT 

g.nombre,
count(a.id) Asignaturas 

FROM grado g
LEFT JOIN asignatura a
ON g.id=a.id_grado

GROUP BY g.nombre
ORDER BY Asignaturas  DESC
