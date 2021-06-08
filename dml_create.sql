/*
  -- CAJERO
  --// CATALOGO
  -- COMPRA
  -- EMPLEADO
  -- GERENTE
  -- HISTORICO_PROD
  -- MEMBRESIA
  -- PRODUCTO
  --// PROVEEDOR
  --// STATUS
  -- SURTE_CATALOGO
  --// TARJETA
*/

--
-- Insert into PROVEEDOR
--
INSERT INTO "PROVEEDOR"
(fecha_expiracion, nombre, director, encargado, duracion, pais, ciudad, direccion)
VALUES
('2022-11-16', 'Bimbo', 'Robert Downey', 'Tony Stark', '2022-01-06', 'Mexico', 'CDMX', 'Calle 1 Col. Colonia 1'),
('2022-01-17', 'Sabritas', NULL, 'Otto Octavious', '2023-05-26', 'Mexico', 'CDMX', 'Calle 2 Col. Colonia 2'),
('2021-12-12', 'Gamesa', 'Tom Holland', 'Peter Parker', '2021-06-14', 'Mexico', 'CDMX', 'Calle 3 Col. Colonia 3'),
('2023-03-14', 'Fud', NULL, 'Red Richards', '2023-12-12', 'Mexico', 'CDMX', 'Calle 4 Col. Colonia 5'),
('2025-02-19', 'San Rafael', 'Ryan Raynolds', 'Wade Wilson', '2025-10-24', 'Mexico', 'CDMX', 'Calle 5 Col. Colonia 5');

--
-- Insert into PROVEEDOR
--
INSERT INTO "TARJETA"
(num_tarjeta, fecha_expiracion, ccv)
VALUES
(5596374388258012, '2022-09-01','170'),
(5431956871808425, '2027-07-01','973'),
(5362254023285509, '2023-11-01','577'),
(5516155418807093, '2026-04-01','184'),
(5395719140489078, '2024-03-01','984');


---
--- Insert into STATUS
---
INSERT INTO "STATUS"
(descripcion)
VALUES
('STATUS 1'),
('STATUS 2'),
('STATUS 3'),
('STATUS 4'),
('STATUS 5');

---
--- Insert into CATALOGO
---
INSERT INTO "CATALOGO"
(nombre_seccion)
VALUES
('SECCION 1'),
('SECCION 2'),
('SECCION 3'),
('SECCION 4'),
('SECCION 5');