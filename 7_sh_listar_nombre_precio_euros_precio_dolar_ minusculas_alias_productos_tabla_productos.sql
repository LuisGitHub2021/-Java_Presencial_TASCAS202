USE tienda;

SELECT
lower (p.nombre) AS 'nom de producto',
concat (p.precio, ' €') AS 'euros',
concat (p.precio, ' $') AS 'dòlars'
FROM 
producto p