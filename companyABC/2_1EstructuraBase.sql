CREATE TABLE PAGOS(
    pagos_id INT NOT NULL PRIMARY KEY,
    factura_id INT  NOT NULL ,
    direccion VARCHAR(255) NOT NULL,
    tipoTarjeta VARCHAR(50) NOT NULL,
    numTarjeta INT NOT NULL,
    clave INT NOT NULL,
    fechaVencimiento INT NOT NULL
);
CREATE TABLE STOCK(
    stock_id INT  NOT NULL PRIMARY KEY,
    productos_id INT NOT NULL,
    proveedor_id INT NULL
);
CREATE TABLE PROVEEDOR(
    proveedor_id INT  NOT NULL  PRIMARY KEY,
    productos_id INT NOT NULL,
    nameProductor VARCHAR(255) NOT NULL,
    industry VARCHAR(255) NOT NULL
)
;CREATE TABLE PEDIDOS(
    pedidos_id INT NOT NULL  PRIMARY KEY,
    productos_id INT NOT NULL,
    proveedor_id INT NULL
)
;CREATE TABLE CLIENTES(
    documento INT NOT NULL PRIMARY KEY,
    nameCliente VARCHAR(255) NOT NULL,
    lastNameCliente VARCHAR(255) NULL,
    phoneCliente INT NULL,
    pedidos_id INT NOT NULL,
    facturas_id INT NOT NULL,
    envios_id INT NOT NULL
);
CREATE TABLE FACTURA(
    facutra_id INT NOT NULL PRIMARY KEY,
    pedidos_id INT NOT NULL ,
    nameCliente VARCHAR(255) NULL,
    cliente_id INT NOT NULL
);
CREATE TABLE ENVIOS(
    envios_id INT NOT NULL PRIMARY KEY,
    factura_id INT NOT NULL,
    pedidos_id INT NOT NULL,
    pagos_id INT NOT NULL
);
CREATE TABLE PRODUCTOS(
    productos_id INT NOT NULL PRIMARY KEY,
    proveedores_id INT NOT NULL
);
CREATE TABLE VENTA(
    venta_id INT NOT NULL PRIMARY KEY,
    cliente_id INT  NOT NULL ,
    factura_id INT NOT NULL,
    phone INT NULL,
    pedidos_id INT NOT NULL
);