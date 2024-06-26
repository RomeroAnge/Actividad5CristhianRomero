CREATE DATABASE GESTION_DE_VENTAS

CREATE TABLE VENTAS (
IDVENTA INT IDENTITY (1,1) NOT NULL,
FECHAVENTA DATETIME NOT NULL,
TOTALVENTA MONEY NOT NULL,
PRIMARY KEY (IDVENTA),
);

CREATE TABLE PRODUCTOS (
IDPRODUCTO INT IDENTITY (1,1) NOT NULL,
NOMBREPRODUCTO NVARCHAR(25) NOT NULL,
PRECIOUNITARIO MONEY NOT NULL,
PRIMARY KEY (IDPRODUCTO),
);


CREATE TABLE DETALLEVENTA (
IDDETALLEVENTA INT IDENTITY (1,1) NOT NULL,
IDVENTA INT NOT NULL,
IDPRODUCTO INT NOT NULL,
CANTIDAD INT NOT NULL,
PRECIOUNITARIO MONEY NOT NULL,
TOTALDETALLE MONEY NOT NULL,
PRIMARY KEY (IDDETALLEVENTA),
FOREIGN KEY (IDVENTA) REFERENCES VENTAS(IDVENTA),
FOREIGN KEY (IDPRODUCTO) REFERENCES PRODUCTOS(IDPRODUCTO)
);


INSERT INTO VENTAS VALUES('2022-02-01 14:00:00',200);
INSERT INTO VENTAS VALUES('2023-02-01 02:00:00',200);
SELECT * FROM VENTAS

INSERT INTO PRODUCTOS VALUES('Gaseosa',11.5);
INSERT INTO PRODUCTOS VALUES('Agua',12.5);
SELECT * FROM PRODUCTOS

INSERT INTO detalleventa VALUES(1, 1, 3, 11.5, 3*11.5);
INSERT INTO detalleventa VALUES(2, 2, 2, 12.5, 2*12.5);
SELECT * FROM DETALLEVENTA


