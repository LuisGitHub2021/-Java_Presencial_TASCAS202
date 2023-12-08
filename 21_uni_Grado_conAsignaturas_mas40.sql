USE universidad;

SELECT 

g.nombre,
count(a.id) as 'Nº Asignaturas'

FROM grado g
left JOIN asignatura a
ON g.id=a.id_grado
group by g.nombre
HAVING COUNT(a.id)>40




