USE universidad;

SELECT

p.tipo,
p.nif,
a.nombre,
ce.anyo_inicio,
ce.anyo_fin

FROM persona p
JOIN alumno_se_matricula_asignatura ama
ON p.id=ama.id_alumno
JOIN asignatura a
ON a.id=ama.id_asignatura
JOIN curso_escolar ce
ON ce.id=ama.id_curso_escolar
WHERE p.nif='26902806M'