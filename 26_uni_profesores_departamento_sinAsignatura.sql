USE universidad;

SELECT 

p.nombre AS 'Nombre Profesor',
d.nombre AS 'Departamento',
a.nombre AS 'Asignatura'

FROM persona p
JOIN profesor pf
ON pf.id_profesor=p.id
JOIN departamento d
ON d.id=pf.id_departamento
LEFT JOIN asignatura a
ON a.id_profesor=pf.id_profesor
WHERE a.id IS NULL

 
