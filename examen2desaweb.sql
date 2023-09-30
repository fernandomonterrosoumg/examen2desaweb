--------------------------------------------------------
-- Archivo creado  - s�bado-septiembre-30-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AUDITORIA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EXAMEN2"."AUDITORIA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SECUENCIA_FACTURA
--------------------------------------------------------

   CREATE SEQUENCE  "EXAMEN2"."SECUENCIA_FACTURA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence VENTAS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EXAMEN2"."VENTAS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AUDITORIA_VENTAS
--------------------------------------------------------

  CREATE TABLE "EXAMEN2"."AUDITORIA_VENTAS" 
   (	"ID_AUDITORIA" NUMBER, 
	"FECHA_AUDITORIA" DATE, 
	"ID_VENTA" NUMBER, 
	"ID_FACTURA" NUMBER, 
	"ID_PRODUCTO" NUMBER, 
	"CANTIDAD" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CATEGORIAS
--------------------------------------------------------

  CREATE TABLE "EXAMEN2"."CATEGORIAS" 
   (	"ID_CATEGORIA" NUMBER, 
	"DESCRIPCION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "EXAMEN2"."CLIENTES" 
   (	"ID_CLIENTE" NUMBER, 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(100 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FACTURAS
--------------------------------------------------------

  CREATE TABLE "EXAMEN2"."FACTURAS" 
   (	"ID_FACTURA" NUMBER, 
	"FECHA" DATE DEFAULT SYSDATE, 
	"ID_CLIENTE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTOS
--------------------------------------------------------

  CREATE TABLE "EXAMEN2"."PRODUCTOS" 
   (	"ID_PRODUCTO" NUMBER, 
	"DESCRIPCION" VARCHAR2(100 BYTE), 
	"PRECIO" NUMBER(*,0), 
	"ID_CATEGORIA" NUMBER, 
	"ID_PROVEEDOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROVEEDORES
--------------------------------------------------------

  CREATE TABLE "EXAMEN2"."PROVEEDORES" 
   (	"ID_PROVEEDOR" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"COLUMN1" VARCHAR2(200 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VENTAS
--------------------------------------------------------

  CREATE TABLE "EXAMEN2"."VENTAS" 
   (	"ID_VENTA" NUMBER, 
	"ID_FACTURA" NUMBER, 
	"ID_PRODUCTO" NUMBER, 
	"CANTIDAD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into EXAMEN2.AUDITORIA_VENTAS
SET DEFINE OFF;
REM INSERTING into EXAMEN2.CATEGORIAS
SET DEFINE OFF;
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (1,'Categor�a1');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (2,'Categor�a2');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (3,'Categor�a3');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (4,'Categor�a4');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (5,'Categor�a5');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (6,'Categor�a6');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (7,'Categor�a7');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (8,'Categor�a8');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (9,'Categor�a9');
Insert into EXAMEN2.CATEGORIAS (ID_CATEGORIA,DESCRIPCION) values (10,'Categor�a10');
REM INSERTING into EXAMEN2.CLIENTES
SET DEFINE OFF;
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (1,'Cliente1','Direcci�n1','Tel�fono1');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (2,'Cliente2','Direcci�n2','Tel�fono2');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (3,'Cliente3','Direcci�n3','Tel�fono3');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (4,'Cliente4','Direcci�n4','Tel�fono4');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (5,'Cliente5','Direcci�n5','Tel�fono5');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (6,'Cliente6','Direcci�n6','Tel�fono6');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (7,'Cliente7','Direcci�n7','Tel�fono7');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (8,'Cliente8','Direcci�n8','Tel�fono8');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (9,'Cliente9','Direcci�n9','Tel�fono9');
Insert into EXAMEN2.CLIENTES (ID_CLIENTE,NOMBRE,DIRECCION,TELEFONO) values (10,'Cliente10','Direcci�n10','Tel�fono10');
REM INSERTING into EXAMEN2.FACTURAS
SET DEFINE OFF;
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (1,to_date('30/09/23','DD/MM/RR'),2);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (2,to_date('30/09/23','DD/MM/RR'),3);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (3,to_date('30/09/23','DD/MM/RR'),4);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (4,to_date('30/09/23','DD/MM/RR'),5);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (5,to_date('30/09/23','DD/MM/RR'),6);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (6,to_date('30/09/23','DD/MM/RR'),7);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (7,to_date('30/09/23','DD/MM/RR'),8);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (8,to_date('30/09/23','DD/MM/RR'),9);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (9,to_date('30/09/23','DD/MM/RR'),10);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (10,to_date('30/09/23','DD/MM/RR'),1);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (11,to_date('30/09/23','DD/MM/RR'),2);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (12,to_date('30/09/23','DD/MM/RR'),3);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (13,to_date('30/09/23','DD/MM/RR'),4);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (14,to_date('30/09/23','DD/MM/RR'),5);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (15,to_date('30/09/23','DD/MM/RR'),6);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (16,to_date('30/09/23','DD/MM/RR'),7);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (17,to_date('30/09/23','DD/MM/RR'),8);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (18,to_date('30/09/23','DD/MM/RR'),9);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (19,to_date('30/09/23','DD/MM/RR'),10);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (20,to_date('30/09/23','DD/MM/RR'),1);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (21,to_date('30/09/23','DD/MM/RR'),2);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (22,to_date('30/09/23','DD/MM/RR'),3);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (23,to_date('30/09/23','DD/MM/RR'),4);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (24,to_date('30/09/23','DD/MM/RR'),5);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (25,to_date('30/09/23','DD/MM/RR'),6);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (26,to_date('30/09/23','DD/MM/RR'),7);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (27,to_date('30/09/23','DD/MM/RR'),8);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (28,to_date('30/09/23','DD/MM/RR'),9);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (29,to_date('30/09/23','DD/MM/RR'),10);
Insert into EXAMEN2.FACTURAS (ID_FACTURA,FECHA,ID_CLIENTE) values (30,to_date('30/09/23','DD/MM/RR'),1);
REM INSERTING into EXAMEN2.PRODUCTOS
SET DEFINE OFF;
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (1,'Producto1',10,2,2);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (2,'Producto2',20,3,3);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (3,'Producto3',30,4,4);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (4,'Producto4',40,5,5);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (5,'Producto5',50,1,6);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (6,'Producto6',60,2,7);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (7,'Producto7',70,3,8);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (8,'Producto8',80,4,9);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (9,'Producto9',90,5,10);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (10,'Producto10',100,1,1);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (11,'Producto11',110,2,2);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (12,'Producto12',120,3,3);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (13,'Producto13',130,4,4);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (14,'Producto14',140,5,5);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (15,'Producto15',150,1,6);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (16,'Producto16',160,2,7);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (17,'Producto17',170,3,8);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (18,'Producto18',180,4,9);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (19,'Producto19',190,5,10);
Insert into EXAMEN2.PRODUCTOS (ID_PRODUCTO,DESCRIPCION,PRECIO,ID_CATEGORIA,ID_PROVEEDOR) values (20,'Producto20',200,1,1);
REM INSERTING into EXAMEN2.PROVEEDORES
SET DEFINE OFF;
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (1,'Proveedor1','Columna11','Tel�fono1');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (2,'Proveedor2','Columna12','Tel�fono2');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (3,'Proveedor3','Columna13','Tel�fono3');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (4,'Proveedor4','Columna14','Tel�fono4');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (5,'Proveedor5','Columna15','Tel�fono5');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (6,'Proveedor6','Columna16','Tel�fono6');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (7,'Proveedor7','Columna17','Tel�fono7');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (8,'Proveedor8','Columna18','Tel�fono8');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (9,'Proveedor9','Columna19','Tel�fono9');
Insert into EXAMEN2.PROVEEDORES (ID_PROVEEDOR,NOMBRE,COLUMN1,TELEFONO) values (10,'Proveedor10','Columna110','Tel�fono10');
REM INSERTING into EXAMEN2.VENTAS
SET DEFINE OFF;
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (1,3,5,2);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (2,5,6,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (3,6,3,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (4,10,5,4);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (5,4,4,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (6,5,5,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (7,8,3,4);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (8,10,2,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (9,9,4,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (10,6,4,4);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (11,3,7,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (12,9,9,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (13,7,3,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (14,8,7,4);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (15,4,1,2);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (16,9,9,2);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (17,5,4,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (18,6,5,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (19,9,2,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (20,8,10,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (21,2,9,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (22,3,8,2);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (23,7,10,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (24,8,3,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (25,5,1,2);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (26,9,9,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (27,9,3,4);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (28,6,1,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (29,9,1,4);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (30,1,6,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (31,10,8,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (32,1,10,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (33,10,1,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (34,9,7,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (35,5,9,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (36,3,5,2);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (37,1,7,3);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (38,7,4,1);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (39,8,10,5);
Insert into EXAMEN2.VENTAS (ID_VENTA,ID_FACTURA,ID_PRODUCTO,CANTIDAD) values (40,7,3,2);
--------------------------------------------------------
--  DDL for Index CATEGORIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."CATEGORIAS_PK" ON "EXAMEN2"."CATEGORIAS" ("ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."CLIENTES_PK" ON "EXAMEN2"."CLIENTES" ("ID_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FACTURAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."FACTURAS_PK" ON "EXAMEN2"."FACTURAS" ("ID_FACTURA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."PRODUCTOS_PK" ON "EXAMEN2"."PRODUCTOS" ("ID_PRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROVEEDORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."PROVEEDORES_PK" ON "EXAMEN2"."PROVEEDORES" ("ID_PROVEEDOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008387
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."SYS_C008387" ON "EXAMEN2"."AUDITORIA_VENTAS" ("ID_AUDITORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VENTAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."VENTAS_PK" ON "EXAMEN2"."VENTAS" ("ID_VENTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008387
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."SYS_C008387" ON "EXAMEN2"."AUDITORIA_VENTAS" ("ID_AUDITORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CATEGORIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."CATEGORIAS_PK" ON "EXAMEN2"."CATEGORIAS" ("ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."CLIENTES_PK" ON "EXAMEN2"."CLIENTES" ("ID_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FACTURAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."FACTURAS_PK" ON "EXAMEN2"."FACTURAS" ("ID_FACTURA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."PRODUCTOS_PK" ON "EXAMEN2"."PRODUCTOS" ("ID_PRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROVEEDORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."PROVEEDORES_PK" ON "EXAMEN2"."PROVEEDORES" ("ID_PROVEEDOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VENTAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAMEN2"."VENTAS_PK" ON "EXAMEN2"."VENTAS" ("ID_VENTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TR_VENTAS_ID_VENTA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "EXAMEN2"."TR_VENTAS_ID_VENTA" 
BEFORE INSERT ON VENTAS
FOR EACH ROW
BEGIN
    SELECT ventas_seq.NEXTVAL INTO :NEW.ID_VENTA FROM DUAL;
END;
/
ALTER TRIGGER "EXAMEN2"."TR_VENTAS_ID_VENTA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR_VENTAS_ID_VENTA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "EXAMEN2"."TR_VENTAS_ID_VENTA" 
BEFORE INSERT ON VENTAS
FOR EACH ROW
BEGIN
    SELECT ventas_seq.NEXTVAL INTO :NEW.ID_VENTA FROM DUAL;
END;
/
ALTER TRIGGER "EXAMEN2"."TR_VENTAS_ID_VENTA" ENABLE;
--------------------------------------------------------
--  Constraints for Table AUDITORIA_VENTAS
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."AUDITORIA_VENTAS" ADD PRIMARY KEY ("ID_AUDITORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIAS
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."CATEGORIAS" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN2"."CATEGORIAS" ADD CONSTRAINT "CATEGORIAS_PK" PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."CLIENTES" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN2"."CLIENTES" ADD CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("ID_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FACTURAS
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."FACTURAS" MODIFY ("ID_FACTURA" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN2"."FACTURAS" ADD CONSTRAINT "FACTURAS_PK" PRIMARY KEY ("ID_FACTURA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."PRODUCTOS" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN2"."PRODUCTOS" ADD CONSTRAINT "PRODUCTOS_PK" PRIMARY KEY ("ID_PRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVEEDORES
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."PROVEEDORES" MODIFY ("ID_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN2"."PROVEEDORES" ADD CONSTRAINT "PROVEEDORES_PK" PRIMARY KEY ("ID_PROVEEDOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VENTAS
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."VENTAS" MODIFY ("ID_VENTA" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN2"."VENTAS" ADD CONSTRAINT "VENTAS_PK" PRIMARY KEY ("ID_VENTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACTURAS
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."FACTURAS" ADD CONSTRAINT "FACTURAS_FK1" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "EXAMEN2"."CLIENTES" ("ID_CLIENTE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE "EXAMEN2"."PRODUCTOS" ADD CONSTRAINT "PRODUCTOS_FK1" FOREIGN KEY ("ID_PROVEEDOR")
	  REFERENCES "EXAMEN2"."PROVEEDORES" ("ID_PROVEEDOR") ENABLE;
  ALTER TABLE "EXAMEN2"."PRODUCTOS" ADD CONSTRAINT "PRODUCTOS_FK2" FOREIGN KEY ("ID_CATEGORIA")
	  REFERENCES "EXAMEN2"."CATEGORIAS" ("ID_CATEGORIA") ENABLE;
