USE universidad;

SELECT

concat (p.apellido1, ' ' ,p.apellido2, ', ', p.nombre) Estudiantes,
count(a.id) as 'Nº Asignaturas',
'2018/2019' Curso


FROM persona p
JOIN alumno_se_matricula_asignatura ama
ON p.id=ama.id_alumno
JOIN curso_escolar ce
ON ce.id=ama.id_curso_escolar
JOIN asignatura a
ON a.id=ama.id_asignatura
WHERE ce.anyo_inicio='2018'
AND ce.anyo_fin='2019'
GROUP BY Estudiantes



