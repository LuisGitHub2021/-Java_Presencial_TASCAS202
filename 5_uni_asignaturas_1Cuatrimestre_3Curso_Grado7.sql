USE universidad;

SELECT

a.nombre AS 'asignatura',
a.cuatrimestre,
a.curso,
g.id AS 'grado'
 
FROM asignatura a
JOIN grado g
ON a.id_grado=g.id
WHERE g.id=7
AND a.curso=3
AND a.cuatrimestre=1

