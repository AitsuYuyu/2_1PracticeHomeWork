CREATE TABLE FACTURACION(
	facturacion_id int not null,
	cliente_id int not null,
	carritoDeCompra_id int not null,
	libro_id int not null
);

CREATE TABLE CLIENTES(
	cliente_id INT NOT NULL,
	nameCliente VARCHAR(255) NOT NULL,
	directionCliente(255) NOT NULL,
	idEmail VARCHAR(255) NOT NULL
	phoneNumClientes INT NOT NULL,
	carritoDeCompras_id INT NOT NULL
);

CREATE TABLE STOCK(
    cantidadDeLibros_id INT NOT NULL
	stock_id INT NOT NULL PRIMARY KEY
);
CREATE TABLE AUTORES(
    author_id INT NOT NULL,
    nameAuthor VARCHAR(100) NOT NULL,
    directionAuthor VARCHAR(100) NOT NULL,
    urlPag VARCHAR (200) NOT NULL
);
CREATE TABLE REGISTRO(
    registro_id INT NOT NULL,
    cantidadLibros INT NOT NULL
);
CREATE TABLE VENTA (
    venta_id INT NOT NULL,
    facturacion_id INT NOT NULL,
    cliente_id INT NOT NULL,
	precio INT NOT NULL
);
CREATE TABLE ALMACENES (
    almacen_id INT NOT NULL,
    codigo INT NOT NULL,
    directionAlmacen VARCHAR(255) NOT NULL,
    numPhone INT NOT NULL,
    stock_id INT NOT NULL,
    registro_id INT NOT NULL
);
CREATE TABLE CARRODECOMPRA(
    carritoDeCompra_id INT NOT NULL,
    cliente_id INT NOT NULL,
    stock_id INT NOT NULL
);
CREATE TABLE NOTIFICACIONES(
    notificacion_id INT NOT NULL,
    cliente_id INT NOT NULL,
    idEmailCliente VARCHAR(255) NULL
);
CREATE TABLE LIBRO(
    tituloLibro VARCHAR(255) NOT NULL,
    ISBN INT NOT NULL,
    añoLibro INT NULL,
    precio DOUBLE(8, 2) NOT NULL,
    autor_id BIGINT NOT NULL,
    editor_id BIGINT NOT NULL
);
CREATE TABLE EDITORES(
    editor_id INT  NOT NULL,
    nameEditor VARCHAR(255) NOT NULL,
    directionEditor VARCHAR(255) NOT NULL,
    numPhone INT NOT NULL,
    urlPag VARCHAR(255) NOT NULL
);
CREATE TABLE HISTORIALDECOMPRA(
    coipasDeLibros_id INT  NOT NULL,
    librosEnCarrito_id INT NOT NULL,
    historialDeCompra_id INT NOT NULL PRIMARY KEY
);
ALTER TABLE FACTURACION ADD CONSTRAINT pk_facturacionID PRIMARY KEY(facturacion_id);
ALTER TABLE FACTURACION ADD facturacion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE CLIENTES ADD CONSTRAINT pk_cliente_id PRIMARY KEY(cliente_id);

ALTER TABLE STOCK ADD CONSTRAINT pk_stockid PRIMARY KEY(stock_id);

ALTER TABLE AUTORES ADD CONSTRAINT pk_authorId PRIMARY KEY(author_id);

ALTER TABLE REGISTRO ADD CONSTRAINT pk_registroId PRIMARY KEY(registro_id);

ALTER TABLE VENTAS ADD CONSTRAINT pk_ventas_id PRIMARY KEY(ventas_id);

ALTER TABLE ALMACENES ADD CONSTRAINT pk_almacen_id PRIMARY KEY(almacen_id);

ALTER TABLE CARRITODECOMPRA ADD CONSTRAINT pk_carrito_id PRIMARY KEY(carritoDeCompra_id);

ALTER TABLE NOTIFICACIONES ADD CONSTRAINT pk_notificaciones_id PRIMARY KEY(notificacion_id);

ALTER TABLE LIBRO ADD CONSTRAINT pk_libro_id PRIMARY KEY(ISBN);

ALTER TABLE EDITORES ADD CONSTRAINT pk_editores_id PRIMARY KEY(editor_id);

ALTER TABLE HISTORIALDECOMPRA ADD CONSTRAINT pk_historial_id PRIMARY KEY(historialDeCompra_id)