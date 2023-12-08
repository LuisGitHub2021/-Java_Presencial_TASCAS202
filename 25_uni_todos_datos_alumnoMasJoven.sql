USE universidad;

SELECT 

ama.id_alumno AS 'ID Alumno',
p.nif,p.sexo,p.fecha_nacimiento AS 'Fecha Nacimiento' ,p.nombre,p.apellido1 AS 'Primer Aplelido',
p.apellido2 AS 'Segundo Apellido',p.telefono,p.direccion,p.ciudad,
g.nombre AS 'Grado',
a.nombre AS 'Asignatura', a.creditos, a.tipo AS 'Tipo Asignatura', a.curso, a.cuatrimestre,a.id_profesor AS 'ID Profesor',
ce.anyo_inicio AS 'Año Inicio Curso', ce.anyo_fin AS 'Año Fin Curso',
d.nombre AS 'Departamento'

FROM persona p
JOIN alumno_se_matricula_asignatura ama
ON p.id=ama.id_alumno
JOIN curso_escolar ce
ON ce.id=ama.id_curso_escolar
JOIN asignatura a
ON a.id=ama.id_asignatura
JOIN grado g
ON g.id=a.id_grado
JOIN profesor pf
ON pf.id_profesor=a.id_profesor
JOIN departamento d
ON d.id=pf.id_departamento

where p.fecha_nacimiento=(
select
max(p.fecha_nacimiento)
FROM persona p)



