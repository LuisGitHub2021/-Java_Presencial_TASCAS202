USE universidad;

select

p.nombre,
p.apellido1,
p.apellido2,
p.tipo,
p.nif,
p.telefono

FROM persona p
WHERE p.tipo='profesor'
AND telefono IS NULL
AND p.nif LIKE '%K'


