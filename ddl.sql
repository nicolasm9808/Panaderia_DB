CREATE DATABASE IF NOT EXISTS Panaderia;
USE Panaderia;

CREATE TABLE IF NOT EXISTS Categorias(
    id_categoria INTEGER PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Estados(
    id_estado INTEGER PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Productos(
    id_producto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    precio FLOAT NOT NULL,
    id_categoria INTEGER NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    id_estado INTEGER NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES Estados(id_estado),
    inventario INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Ciudades(
    id_ciudad INTEGER PRIMARY KEY AUTO_INCREMENT,
    ciudad VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Direcciones(
    id_direccion INTEGER PRIMARY KEY AUTO_INCREMENT,
    direccion VARCHAR(255) UNIQUE NOT NULL,
    id_ciudad INTEGER NOT NULL,
    FOREIGN KEY (id_ciudad) REFERENCES Ciudades(id_ciudad)
);

CREATE TABLE IF NOT EXISTS Cargos(
    id_cargo INTEGER PRIMARY KEY AUTO_INCREMENT,
    cargo VARCHAR(255) UNIQUE NOT NULL,
    salario FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Empleados(
    id_empleado INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    id_cargo INTEGER NOT NULL,
    FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo),
    fecha_vinculacion DATE,
    id_direccion INTEGER,
    FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion)
);

CREATE TABLE IF NOT EXISTS Clientes(
    id_cliente INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    id_direccion INTEGER NOT NULL,
    FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion),
    telefono VARCHAR(20),
    correo VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Descuentos(
    id_descuento INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) UNIQUE NOT NULL,
    porcentaje FLOAT
);

CREATE TABLE IF NOT EXISTS Ventas(
    id_venta INTEGER PRIMARY KEY AUTO_INCREMENT,
    fecha DATETIME NOT NULL,
    id_empleado INTEGER NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    id_descuento INTEGER,
    total FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Productos_en_ventas(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_venta INTEGER NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    id_producto INTEGER NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    cantidad INTEGER NOT NULL,
    subtotal FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Proveedores(
    id_proveedor INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    id_direccion INTEGER NOT NULL,
    FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion),
    telefono VARCHAR(20),
    correo VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Ordenes_compras(
    id_orden_compra INTEGER PRIMARY KEY AUTO_INCREMENT,
    fecha DATETIME NOT NULL,
    id_proveedor INTEGER NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor),
    total FLOAT NOT NULL,
    pedido_recibido BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS Ingredientes(
    id_ingrediente INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) UNIQUE NOT NULL,
    precio FLOAT NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Ingredientes_en_orden(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_orden_compra INTEGER NOT NULL,
    FOREIGN KEY (id_orden_compra) REFERENCES Ordenes_compras(id_orden_compra),
    id_ingrediente INTEGER NOT NULL,
    FOREIGN KEY (id_ingrediente) REFERENCES Ingredientes(id_ingrediente),
    cantidad INTEGER NOT NULL,
    subtotal FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Ingredientes_en_productos(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_producto INTEGER NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    id_ingrediente INTEGER NOT NULL,
    FOREIGN KEY (id_ingrediente) REFERENCES Ingredientes(id_ingrediente),
    es_principal BOOLEAN NOT NULL DEFAULT FALSE,
    cantidad INTEGER NOT NULL
);