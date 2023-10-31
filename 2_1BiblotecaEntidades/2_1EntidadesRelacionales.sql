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
)



ALTER TABLE FACTURACION ADD CONSTRAINT pk_facturacionID PRIMARY KEY(facturacion_id);
ALTER TABLE FACTURACION ADD facturacion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE CLIENTES ADD CONSTRAINT pk_cliente_id PRIMARY KEY(cliente_id);

ALTER TABLE STOCK ADD CONSTRAINT pk_stockid PRIMARY KEY(stock_id);

ALTER TABLE AUTORES ADD CONSTRAINT pk_authorId PRIMARY KEY(author_id);

ALTER TABLE REGISTRO ADD CONSTRAINT pk_registroId PRIMARY KEY(registro_id);