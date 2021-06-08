/*
  --// CAJERO
  --// CATALOGO
  --// COMPRA
  --// EMPLEADO
  --// GERENTE
  --// HISTORICO_PROD
  -- MEMBRESIA
  --// PRODUCTO
  --// PROVEEDOR
  --// STATUS
  --// SURTE_CATALOGO
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
-- Insert into TARJETA
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

---
--- Insert into SURTE_CATALOGO
---
INSERT INTO "SURTE_CATALOGO"
(id_proveedor, id_catalogo, precio_venta)
VALUES
(1, 1, 50.0),
(2, 2, 60.0),
(3, 3, 70.0),
(4, 4, 80.0),
(5, 5, 90.0);

---
--- Insert into PRODUCTO
---
INSERT INTO "PRODUCTO"
(id_catalogo, id_status, fecha_status, nombre_comercial, marca, presentacion, fecha_adquisicion)
VALUES
(1, 1, '2022-09-01', 'Salchichas para Hot Dog', 'Fud', 'Ocho piezas', '2022-09-01'),
(2, 2, '2027-07-01', 'Medias noches', 'Bimbo', 'Ocho piezas', '2027-07-01'),
(3, 3, '2023-11-01', 'Jabon liquido', 'Bold', '4kg', '2023-11-01'),
(4, 4, '2026-04-01', 'Atun', 'Dolores', 'Individual', '2026-04-01'),
(5, 5, '2024-03-01', 'Frijoles', 'La Sierra', '400g', '2024-03-01');

---
--- Insert into HISTORICO_PROD
---
INSERT INTO "HISTORICO_PROD"
(id_produto, id_status, fecha_status)
VALUES
(1, 1, '2026-03-01'),
(2, 2, '2024-02-04'),
(3, 3, '2025-05-06'),
(4, 4, '2023-09-03'),
(5, 5, '2022-03-09');

---
--- Insert into EMPLEADO
---
INSERT INTO "EMPLEADO"
(id_catalogo, num_empleado, nombre, ap_paterno, ap_materno, correo, telefono, num_social, turno, direccion, tipo)
VALUES
(1, 'JAM1234501', 'Alfonso', 'Martínez', 'Baeza', 'alfonso@gmail.com', '5526303190', '238577294724', 'M', 'Carretera Lorem ipsum dolor sit, 175A 10ºH', 'C'),
(2, 'JAM1234502', 'Catalina', 'Rojo', 'Rojas', 'catalina@gmail.com', '5593407605', '675692324222', 'V', 'Acceso Lorem ipsum dolor sit, 297B 18ºA', 'G'),
(3, 'JAM1234503', 'Lisbet', 'Raya', 'Renedo', 'lisbet@gmail.com', '5527321527', '599879549949', 'N', 'Carretera Lorem ipsum dolor sit, 64A', 'C'),
(4, 'JAM1234504', 'Rodolfo', 'Hernandez', 'Perez', 'rodolfo@gmail.com', '5571618157', '662929232368', 'M', 'Vía Lorem ipsum dolor, 19A 8ºF', 'G'),
(5, 'JAM1234505', 'Maria', 'Rodriguez', 'Rivera', 'maria@gmail.com', '5535962755', '934375536393', 'V', 'Cañada Lorem, 296B 3ºE', 'C'),
(1, 'JAM1234506', 'Jose', 'Perea', 'Perez', 'jose@gmail.com', '5527304190', '696255384629', 'N', 'Carretera Lorem ipsum dolor sit, 175A 10ºH', 'G'),
(2, 'JAM1234507', 'Laura', 'Rojo', 'Rojas', 'Laura@gmail.com', '5593407605', '536354529896', 'M', 'Acceso Lorem ipsum dolor sit, 297B 18ºA', 'C'),
(3, 'JAM1234508', 'Lorena', 'Raya', 'Renedo', 'Lorena@gmail.com', '5527321527', '643453298292', 'V', 'Carretera Lorem ipsum dolor sit, 64A', 'G'),
(4, 'JAM1234509', 'Rodrigo', 'Hernandez', 'Perez', 'Rodrigo@gmail.com', '5571618157', '273762454698', 'N', 'Vía Lorem ipsum dolor, 19A 8ºF', 'C'),
(5, 'JAM1234510', 'Peter', 'Rodriguez', 'Rivera', 'Peter@gmail.com', '5535962755', '745987878749', 'M', 'Cañada Lorem, 296B 3ºE', 'G');

---
--- Insert into GERENTE
---
INSERT INTO "GERENTE"
(id_empleado, antiguedad)
VALUES
(2, 3),
(4, 4),
(6, 5),
(8, 6),
(10, 7);

---
--- Insert into CAJERO
---
INSERT INTO "CAJERO"
(id_empleado, id_supervisor, bachillerato, telefono)
VALUES
(1, 3, true, '5557628522'),
(3, 3, false, '5553582473'),
(5, 3, true, '5554282422'),
(7, 3, false, '5555578588'),
(9, 3, true, '5594393976');

---
--- Insert into COMPRA
---
INSERT INTO "COMPRA"
(id_empleado, id_produto, tipo_pago, cantidad_productos, factura, fecha, precio_unitario, hora)
VALUES
(1, 1, 'E', 4, true, '2022-05-04', 54.10, '04:15 PM'),
(3, 2, 'T', 5,  false, '2023-09-05', 64.20, '05:25 PM'),
(5, 3, 'E', 6, true, '2024-07-07', 74.30, '06:35 PM'),
(7, 4, 'T', 7,  false, '2025-04-01', 84.40, '07:45 PM'),
(9, 5, 'E', 8, true, '2026-01-03', 94.50, '08:55 PM');