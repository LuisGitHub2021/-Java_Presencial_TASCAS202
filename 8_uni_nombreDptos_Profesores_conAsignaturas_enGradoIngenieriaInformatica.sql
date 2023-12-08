USE universidad;

SELECT 

d.nombre,
pf.id_profesor

FROM departamento d
LEFT JOIN profesor pf
ON pf.id_departamento=d.id
JOIN asignatura a
ON a.id_profesor=pf.id_profesor
JOIN grado g
ON g.id=a.id_grado
WHERE g.nombre='Grado en Ingeniería Informática (Plan 2015)'
GROUP BY pf.id_profesor

