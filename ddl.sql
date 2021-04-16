--
-- TABLE: "PROVEEDOR"
--
CREATE SEQUENCE id_proveedor_seq;

CREATE TABLE "PROVEEDOR" (
  id_proveedor int NOT NULL DEFAULT nextval('id_proveedor_seq'),
  fecha_expiracion date NOT NULL,
  nombre varchar(40) NOT NULL,
  director varchar(40) NOT NULL,
  encargado varchar(40) NOT NULL,
  duracion time NULL,
  pais varchar(20) NOT NULL,
  ciudad varchar(40) NOT NULL,
  CONSTRAINT "PK_ID_PROVEEDOR" PRIMARY KEY (id_proveedor)
);

--
-- TABLE: "CATALOGO"
--
CREATE SEQUENCE id_catalogo_seq;

CREATE TABLE "CATALOGO" (
  id_catalogo int NOT NULL DEFAULT nextval('id_catalogo_seq'),
  nombre_seccion varchar(50) NOT NULL,
  CONSTRAINT "PK_ID_CATALOGO" PRIMARY KEY (id_catalogo)
);

--
-- TABLE: "STATUS"
--
CREATE SEQUENCE id_status_seq;

CREATE TABLE "STATUS" (
  id_status int NOT NULL DEFAULT nextval('id_status_seq'),
  descripcion varchar(100) NOT NULL,
  CONSTRAINT "PK_ID_STATUS" PRIMARY KEY (id_status)
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
  CONSTRAINT "PK_ID_TARJETA" PRIMARY KEY (id_tarjeta),
);

