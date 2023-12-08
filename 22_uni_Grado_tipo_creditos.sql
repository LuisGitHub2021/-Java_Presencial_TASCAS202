USE universidad;

SELECT 

g.nombre AS 'Grado',
a.tipo AS 'Tipo Asignatura',
sum(a.creditos) AS 'Créditos'

FROM grado g
LEFT JOIN asignatura a
ON g.id=a.id_grado
GROUP BY g.nombre, a.tipo
ORDER BY g.nombre


