USE universidad;

SELECT

ce.anyo_inicio as 'Año Inicio Curso Escolar',
count(distinct p.id) as 'Nº Alumnos Matriculados'

FROM asignatura a
JOIN alumno_se_matricula_asignatura ama
ON ama.id_asignatura=a.id
JOIN curso_escolar ce
ON ce.id=ama.id_curso_escolar
JOIN persona p
ON p.id=ama.id_alumno
WHERE p.tipo='alumno'

GROUP BY ce.anyo_inicio
