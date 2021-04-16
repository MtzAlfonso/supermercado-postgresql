--
-- TABLE: "PROVEEDOR"
--
CREATE TABLE "PROVEEDOR" (
  id_proveedor int NOT NULL,
  fecha_expiracion date NOT NULL,
  nombre varchar(40) NOT NULL,
  director varchar(40) NOT NULL,
  encargado varchar(40) NOT NULL,
  duracion time NULL,
  pais varchar(20) NOT NULL,
  ciudad varchar(40) NOT NULL,
  CONSTRAINT "PK_ID_PROVEEDOR" PRIMARY KEY (id_proveedor)
);

