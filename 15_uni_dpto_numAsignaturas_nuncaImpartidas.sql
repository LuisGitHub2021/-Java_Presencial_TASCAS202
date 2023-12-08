USE universidad;

SELECT 

d.nombre AS 'Departamento',
count(a.nombre) AS 'Asignaturas no impartidas en ningun curso escolar'

FROM departamento d
LEFT JOIN profesor pf
ON d.id=pf.id_departamento
RIGHT JOIN asignatura a
ON a.id_profesor=pf.id_profesor
LEFT JOIN alumno_se_matricula_asignatura ama
ON ama.id_asignatura=a.id
LEFT JOIN curso_escolar ce
ON ce.id=ama.id_curso_escolar
WHERE ce.id IS NULL
GROUP BY d.nombre




