/*
  --// CAJERO
  --// CATALOGO
  --//COMPRA
  -- EMPLEADO
  -- GERENTE
  -- HISTORICO_PROD
  -- MEMBRESIA
  -- PRODUCTO
  -- PROVEEDOR
  -- STATUS
  -- SURTE_CATALOGO
  -- TARJETA
*/

---
--- Update CAJERO
---
UPDATE "CAJERO" SET bachillerato = true WHERE id_empleado = 3;
UPDATE "CAJERO" SET bachillerato = true WHERE id_empleado = 7;

---
--- Update CATALOGO
---
UPDATE "CATALOGO" SET nombre_seccion = 'SECCION 4 ACTUALIZADA' WHERE id_catalogo = 4;
UPDATE "CATALOGO" SET nombre_seccion = 'SECCION 5 ACTUALIZADA' WHERE id_catalogo = 5;

---
--- Update COMPRA
---
UPDATE "COMPRA" SET cantidad_productos = 10 WHERE id_compra = 4;
UPDATE "COMPRA" SET cantidad_productos = 10 WHERE id_compra = 5;