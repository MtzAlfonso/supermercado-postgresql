--
-- TABLE: "CAJERO"
--
CREATE TABLE "CAJERO" (
  id_empleado int NOT NULL,
  id_supervisor int,
  bachillerato boolean NOT NULL,
  telefono char(10) NOT NULL,
  CONSTRAINT "PK_CAJERO" PRIMARY KEY (id_empleado)
);

--
-- TABLE: "CATALOGO"
--
CREATE SEQUENCE id_catalogo_seq;

CREATE TABLE "CATALOGO" (
  id_catalogo int NOT NULL DEFAULT nextval('id_catalogo_seq'),
  nombre_seccion varchar(50) NOT NULL,
  CONSTRAINT "PK_CATALOGO" PRIMARY KEY (id_catalogo)
);

--
-- TABLE: "COMPRA"
--
CREATE SEQUENCE id_compra_seq;

CREATE TABLE "COMPRA" (
  id_compra int NOT NULL DEFAULT nextval('id_compra_seq'),
  id_empleado int NOT NULL,
  id_produto int NOT NULL,
  cantidad_productos int NOT NULL,
  factura boolean NOT NULL,
  fecha date NOT NULL,
  hora time NOT NULL,
  precio_total numeric(10, 2) GENERATED ALWAYS AS (cantidad_productos * precio_unitario) STORED,
  precio_unitario numeric(10, 2) NOT NULL,
  tipo_pago char(1) NOT NULL CHECK (tipo_pago IN ('E', 'T')),
  CONSTRAINT "PK_COMPRA" PRIMARY KEY (id_compra)
);

--
-- TABLE: "EMPLEADO"
--
CREATE SEQUENCE id_empleado_seq;

CREATE TABLE "EMPLEADO" (
  id_empleado int NOT NULL DEFAULT nextval('id_empleado_seq'),
  id_catalogo int NOT NULL,
  num_empleado varchar(10) NOT NULL UNIQUE,
  nombre varchar(20) NOT NULL,
  ap_paterno varchar(20) NOT NULL,
  ap_materno varchar(200) NOT NULL,
  correo varchar(50) NOT NULL,
  telefono char(10),
  num_social char(12) NOT NULL UNIQUE,
  turno char(1) NOT NULL CHECK (turno IN ('M','V','N')),
  direccion varchar(100) NOT NULL,
  tipo char(1) CHECK (tipo IN ('C', 'G')),
  CONSTRAINT "PK_EMPLEADO" PRIMARY KEY (id_empleado)
);

--
-- TABLE: "GERENTE"
--
CREATE TABLE "GERENTE" (
  id_empleado int NOT NULL,
  antiguedad int NOT NULL CHECK (antiguedad > 3),
  bono numeric(10, 2) GENERATED ALWAYS AS ((antiguedad * 1000) + 1500) STORED,
  CONSTRAINT "PK_CHILD_GERENTE" PRIMARY KEY (id_empleado)
);

--
-- TABLE: "HISTORICO_PROD"
--
CREATE SEQUENCE id_historico_prod;

CREATE TABLE "HISTORICO_PROD" (
  id_historico_prod int NOT NULL DEFAULT nextval('id_historico_prod'),
  id_produto int NOT NULL,
  id_status int NOT NULL,
  fecha_status date NOT NULL,
  CONSTRAINT "PK_HISTORICO_PROD" PRIMARY KEY (id_historico_prod)
);

--
-- TABLE: "MEMBRESIA"
--
CREATE TABLE "MEMBRESIA" (
  id_membresia int NOT NULL,
  id_compra int NOT NULL,
  num_tarjeta char(16) NOT NULL,
  nombre varchar(30) NOT NULL,
  ap_paterno varchar(30) NOT NULL,
  ap_materno varchar(30) NOT NULL,
  correo varchar(50) NOT NULL,
  direccion varchar(80) NOT NULL,
  edad char(3) NOT NULL,
  telefono char(10) NOT NULL,
  CONSTRAINT "PK_MEMBRESIA" PRIMARY KEY (id_membresia)
);

--
-- TABLE: "PRODUCTO"
--
CREATE SEQUENCE id_produto_seq;

CREATE TABLE "PRODUCTO" (
  id_produto int NOT NULL DEFAULT nextval('id_produto_seq'),
  id_catalogo int NOT NULL,
  id_status int NOT NULL,
  fecha_status date NOT NULL,
  nombre_comercial varchar(50) NOT NULL,
  marca varchar(50) NOT NULL,
  presentacion varchar(30) NOT NULL,
  fecha_adquisicion date NOT NULL,
  CONSTRAINT "PK_PRODUCTO" PRIMARY KEY (id_produto)
);

--
-- TABLE: "PROVEEDOR"
--
CREATE SEQUENCE id_proveedor_seq;

CREATE TABLE "PROVEEDOR" (
  id_proveedor int NOT NULL DEFAULT nextval('id_proveedor_seq'),
  fecha_expiracion date NOT NULL,
  nombre varchar(40) NOT NULL,
  director varchar(40),
  direccion varchar(50) NOT NULL,
  encargado varchar(40) NOT NULL,
  duracion date NOT NULL,
  pais varchar(20) NOT NULL,
  ciudad varchar(40) NOT NULL,
  CONSTRAINT "PK_PROVEEDOR" PRIMARY KEY (id_proveedor)
);

--
-- TABLE: "STATUS"
--
CREATE SEQUENCE id_status_seq;

CREATE TABLE "STATUS" (
  id_status int NOT NULL DEFAULT nextval('id_status_seq'),
  descripcion varchar(100) NOT NULL,
  CONSTRAINT "PK_STATUS" PRIMARY KEY (id_status)
);

--
-- TABLE: "SURTE_CATALOGO"
--
CREATE SEQUENCE id_surte_catalogo_seq;

CREATE TABLE "SURTE_CATALOGO" (
  id_surte_catalogo int NOT NULL DEFAULT nextval('id_surte_catalogo_seq'),
  id_proveedor int NOT NULL,
  id_catalogo int NOT NULL,
  precio_venta numeric(10, 2) NOT NULL,
  CONSTRAINT "PK_SURTE_CATALOGO" PRIMARY KEY (id_surte_catalogo)
);

--
-- TABLE: "TARJETA"
--
CREATE SEQUENCE id_tarjeta_seq;

CREATE TABLE "TARJETA" (
  id_tarjeta int NOT NULL DEFAULT nextval('id_tarjeta_seq'),
  num_tarjeta char(16) NOT NULL UNIQUE,
  fecha_expiracion date NOT NULL,
  ccv char(3) NOT NULL,
  CONSTRAINT "PK_TARJETA" PRIMARY KEY (id_tarjeta)
);

--
-- CREANDO REFERENCIAS CON LLAVES FORANEAS
--
-- TABLE: "CAJERO"
--
ALTER TABLE "CAJERO"
  ADD CONSTRAINT "FK_CAJERO_RECURSIVA" FOREIGN KEY (id_supervisor) REFERENCES "CAJERO" (id_empleado) ON DELETE CASCADE;

ALTER TABLE "CAJERO"
  ADD CONSTRAINT "FK_CAJERO_EMPLEADO" FOREIGN KEY (id_empleado) REFERENCES "EMPLEADO" (id_empleado) ON DELETE CASCADE;

--
-- TABLE: "COMPRA"
--
ALTER TABLE "COMPRA"
  ADD CONSTRAINT "FK_COMPRA_CAJERO" FOREIGN KEY (id_empleado) REFERENCES "CAJERO" (id_empleado) ON DELETE CASCADE;

ALTER TABLE "COMPRA"
  ADD CONSTRAINT "FK_COMPRA_PRODUCTO" FOREIGN KEY (id_produto) REFERENCES "PRODUCTO" (id_produto) ON DELETE CASCADE;

--
-- TABLE: "EMPLEADO"
--
ALTER TABLE "EMPLEADO"
  ADD CONSTRAINT "FK_EMPLEADO_CATALOGO" FOREIGN KEY (id_catalogo) REFERENCES "CATALOGO" (id_catalogo) ON DELETE CASCADE;

--
-- TABLE: "GERENTE"
--
ALTER TABLE "GERENTE"
  ADD CONSTRAINT "FK_GERENTE_EMPLEADO" FOREIGN KEY (id_empleado) REFERENCES "EMPLEADO" (id_empleado) ON DELETE CASCADE;

--
-- TABLE: "HISTORICO_PROD"
--
ALTER TABLE "HISTORICO_PROD"
  ADD CONSTRAINT "FK_HISTPROD_PROUDCTO" FOREIGN KEY (id_produto) REFERENCES "PRODUCTO" (id_produto) ON DELETE CASCADE;

ALTER TABLE "HISTORICO_PROD"
  ADD CONSTRAINT "FK_HISTPROD_STATUS" FOREIGN KEY (id_status) REFERENCES "STATUS" (id_status) ON DELETE CASCADE;

--
-- TABLE: "MEMBRESIA"
--
ALTER TABLE "MEMBRESIA"
  ADD CONSTRAINT "FK_MEMBRESIA_TARJETA" FOREIGN KEY (num_tarjeta) REFERENCES "TARJETA" (num_tarjeta) ON DELETE CASCADE;

ALTER TABLE "MEMBRESIA"
  ADD CONSTRAINT "FK_MEMBRESIA_COMPRA" FOREIGN KEY (id_compra) REFERENCES "COMPRA" (id_compra) ON DELETE CASCADE;

--
-- TABLE: "PRODUCTO"
--
ALTER TABLE "PRODUCTO"
  ADD CONSTRAINT "FK_PRODUCTO_STATUS" FOREIGN KEY (id_status) REFERENCES "STATUS" (id_status) ON DELETE CASCADE;

ALTER TABLE "PRODUCTO"
  ADD CONSTRAINT "FK_PRODUCTO_CATALOGO" FOREIGN KEY (id_catalogo) REFERENCES "CATALOGO" (id_catalogo) ON DELETE CASCADE;

--
-- TABLE: "SURTE_CATALOGO"
--
ALTER TABLE "SURTE_CATALOGO"
  ADD CONSTRAINT "FK_SURTECATALOGO_CATALOGO" FOREIGN KEY (id_catalogo) REFERENCES "CATALOGO" (id_catalogo) ON DELETE CASCADE;

ALTER TABLE "SURTE_CATALOGO"
  ADD CONSTRAINT "FK_SURTECATALOGO_PROVEEDOR" FOREIGN KEY (id_proveedor) REFERENCES "PROVEEDOR" (id_proveedor) ON DELETE CASCADE;

