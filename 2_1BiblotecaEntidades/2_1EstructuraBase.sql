CREATE TABLE FACTURACION(
	cliente_id INT NOT NULL,
	carritoDeCompra_id INT NOT NULL,
	libro_id INT NOT NULL
	facturacion_id AINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
);

CREATE TABLE CLIENTES(
	nameCliente VARCHAR(255) NOT NULL,
	directionCliente(255) NOT NULL,
	cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	idEmail VARCHAR(255) NOT NULL
	phoneNumClientes INT NOT NULL,
	carritoDeCompras_id INT NOT NULL
);

CREATE TABLE STOCK(
    cantidadDeLibros_id INT NOT NULL,
    stock_id INT NOT NULL PRIMARY KEY
);
CREATE TABLE AUTORES(
    author_id INT NOT NULL PRIMARY KEY,
    nameAuthor VARCHAR(100) NOT NULL,
    directionAuthor VARCHAR(100) NOT NULL,
    urlPag VARCHAR (200) NOT NULL
);
CREATE TABLE REGISTRO(
    registro_id INT NOT NULL PRIMARY KEY,
    cantidadLibros INT NOT NULL
);
CREATE TABLE VENTA (
    venta_id INT NOT NULL PRIMARY KEY,
    facturacion_id INT NOT NULL,
    cliente_id INT NOT NULL
);
CREATE TABLE ALMACENES (
    almacen_id INT NOT NULL PRIMARY KEY,
    codigo INT NOT NULL,
    directionAlmacen VARCHAR(255) NOT NULL,
    numPhone INT NOT NULL,
    stock_id INT NOT NULL,
    registro_id INT NOT NULL
);
CREATE TABLE CARRODECOMPRA(
    carritoDeCompra_id INT NOT NULL PRIMARY KEY,
    cliente_id INT NOT NULL,
    stock_id INT NOT NULL
);
CREATE TABLE Notificaciones(
    notificacion_id INT NOT NULL PRIMARY KEY,
    cliente_id INT NOT NULL,
    idEmailCliente VARCHAR(255) NULL
);
CREATE TABLE LIBRO(
    tituloLibro VARCHAR(255) NOT NULL,
    ISBN INT NOT NULL PRIMARY KEY,
    añoLibro INT NULL,
    precio DOUBLE(8, 2) NOT NULL,
    autor_id BIGINT NOT NULL,
    editor_id BIGINT NOT NULL
);
CREATE TABLE EDITORES(
    editor_id INT  NOT NULL PRIMARY KEY,
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