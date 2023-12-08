USE tienda;

SELECT
p.nombre,
concat (p.precio, ' €'),
concat (p.precio, ' $')
FROM 
producto p