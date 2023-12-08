USE tienda;

SELECT
p.nombre,
TRUNCATE(p.precio,0)

FROM 
producto p