CREATE TABLE PAGOS(
    pagos_id INT NOT NULL,
    factura_id INT  NOT NULL ,
    direccion VARCHAR(255) NOT NULL,
    tipoTarjeta VARCHAR(50) NOT NULL,
    numTarjeta INT NOT NULL,
    clave INT NOT NULL,
    fechaVencimiento INT NOT NULL
);
CREATE TABLE STOCK(
    stock_id INT  NOT NULL,
    productos_id INT NOT NULL,
    proveedor_id INT NULL
);
CREATE TABLE PROVEEDOR(
    proveedor_id INT  NOT NULL,
    productos_id INT NOT NULL,
    nameProductor VARCHAR(255) NOT NULL,
    industry VARCHAR(255) NOT NULL
)
;CREATE TABLE PEDIDOS(
    pedidos_id INT NOT NULL,
    productos_id INT NOT NULL,
    proveedor_id INT NULL
)
;CREATE TABLE CLIENTES(
    documento INT NOT NULL,
    nameCliente VARCHAR(255) NOT NULL,
    lastNameCliente VARCHAR(255) NULL,
    phoneCliente INT NULL,
    pedidos_id INT NOT NULL,
    facturas_id INT NOT NULL,
    envios_id INT NOT NULL
);
CREATE TABLE FACTURA(
    factura_id INT NOT NULL,
    pedidos_id INT NOT NULL ,
    nameCliente VARCHAR(255) NULL,
    cliente_id INT NOT NULL
);
CREATE TABLE ENVIOS(
    envios_id INT NOT NULL,
    factura_id INT NOT NULL,
    pedidos_id INT NOT NULL,
    pagos_id INT NOT NULL
);
CREATE TABLE PRODUCTOS(
    productos_id INT NOT NULL,
    proveedores_id INT NOT NULL
);
CREATE TABLE VENTA(
    venta_id INT NOT NULL,
    cliente_id INT  NOT NULL ,
    factura_id INT NOT NULL,
    phone INT NULL,
    pedidos_id INT NOT NULL
);

ALTER TABLE PAGOS ADD CONSTRAINT pk_pagos_id PRIMARY KEY (pagos_id);

ALTER TABLE STOCK ADD CONSTRAINT pk_stock_id PRIMARY KEY (stock_id);

ALTER TABLE PROVEEDOR ADD CONSTRAINT pk_proveedor_id PRIMARY KEY(proveedor_id);

ALTER TABLE PEDIDOS ADD CONSTRAINT pk_pedidos_id PRIMARY KEY(pedidos_id);

ALTER TABLE CLIENTES ADD CONSTRAINT pk_documento PRIMARY KEY(documento);

ALTER TABLE FACTURA ADD CONSTRAINT pk_factura_id PRIMARY KEY(factura_id);

ALTER TABLE ENVIOS ADD CONSTRAINT pk_envios_id PRIMARY KEY(envios_id);

ALTER TABLE PRODUCTOS ADD CONSTRAINT pk_productos_id PRIMARY KEY(productos_id);

ALTER TABLE VENTA ADD CONSTRAINT pk_venta_id PRIMARY KEY(venta_id);

