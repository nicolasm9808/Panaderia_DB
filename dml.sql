-- Inserción de datos en la tabla Categorias
INSERT INTO Categorias (categoria) 
VALUES ('Panadería'), ('Repostería'), ('Bebidas'), ('Salados'), ('Veganos');

-- Inserción de datos en la tabla Estados
INSERT INTO Estados (estado) 
VALUES ('Activo'), ('Descontinuado');

-- Inserción de datos en la tabla Productos
INSERT INTO Productos (nombre, precio, id_categoria, id_estado, inventario) 
VALUES ('Pan de Queso', 2000, 1, 1, 50), 
       ('Croissant', 3000, 1, 1, 30), 
       ('Torta de Chocolate', 15000, 2, 1, 10), 
       ('Café Americano', 2500, 3, 1, 100), 
       ('Empanada', 1800, 4, 2, 0);

-- Inserción de datos en la tabla Ciudades
INSERT INTO Ciudades (ciudad) 
VALUES ('Bogotá'), ('Medellín'), ('Bucaramanga'), ('Barranquilla'), ('Cartagena');

-- Inserción de datos en la tabla Direcciones
INSERT INTO Direcciones (direccion, id_ciudad) 
VALUES ('Calle 1 #2-3', 1), 
       ('Carrera 5 #10-15', 2), 
       ('Calle 12 #5-9', 3), 
       ('Carrera 7 #20-30', 4), 
       ('Calle 8 #10-11', 5);

-- Inserción de datos en la tabla Cargos
INSERT INTO Cargos (cargo, salario) 
VALUES ('Cajero', 1500000), 
       ('Panadero', 1800000), 
       ('Repostero', 1700000), 
       ('Barista', 1600000), 
       ('Gerente', 3000000);

-- Inserción de datos en la tabla Empleados
INSERT INTO Empleados (nombre, id_cargo, fecha_vinculacion, id_direccion) 
VALUES ('Juan Pérez', 1, '2023-01-15', 1), 
       ('María García', 2, '2022-06-25', 2), 
       ('Pedro Gómez', 3, '2023-03-10', 3), 
       ('Luisa Fernández', 4, '2022-11-12', 4), 
       ('Carlos Ramírez', 5, '2021-09-20', 5);

-- Inserción de datos en la tabla Clientes
INSERT INTO Clientes (nombre, id_direccion, telefono, correo) 
VALUES ('Ana Torres', 1, '3001112233', 'ana.torres@gmail.com'), 
       ('Jorge López', 2, '3004445566', 'jorge.lopez@gmail.com'), 
       ('Lucía Martínez', 3, '3007778899', 'lucia.martinez@gmail.com'), 
       ('Fernando Rivera', 4, '3001122334', 'fernando.rivera@gmail.com'), 
       ('Sofía Díaz', 5, '3005566778', 'sofia.diaz@gmail.com');

-- Inserción de datos en la tabla Descuentos
INSERT INTO Descuentos (nombre, porcentaje) 
VALUES ('Descuento 10%', 0.1), 
       ('Descuento 15%', 0.15), 
       ('Descuento 20%', 0.2), 
       ('Descuento 25%', 0.25), 
       ('Descuento 30%', 0.3);

-- Inserción de datos en la tabla Ventas
INSERT INTO Ventas (fecha, id_empleado, id_cliente, id_descuento, total) 
VALUES ('2024-10-01 14:30:00', 1, 1, 1, 10000), 
       ('2024-10-02 11:00:00', 2, 2, 2, 8000), 
       ('2024-10-03 16:45:00', 3, 3, NULL, 12000), 
       ('2024-10-04 13:15:00', 4, 4, 3, 15000), 
       ('2024-10-05 10:25:00', 5, 5, 4, 9500);

-- Inserción de datos en la tabla Productos_en_ventas
INSERT INTO Productos_en_ventas (id_venta, id_producto, cantidad, subtotal) 
VALUES (1, 1, 5, 7500), 
       (1, 2, 2, 2500), 
       (2, 3, 3, 5400), 
       (2, 4, 1, 2600), 
       (3, 5, 4, 4800), 
       (3, 1, 3, 7200), 
       (4, 2, 6, 15000), 
       (5, 3, 4, 7200), 
       (5, 4, 2, 4800);
       
-- Inserción de datos en la tabla Proveedores
INSERT INTO Proveedores (nombre, id_direccion, telefono, correo) 
VALUES ('Proveedor A', 1, '3009991111', 'proveedorA@gmail.com'), 
       ('Proveedor B', 2, '3008882222', 'proveedorB@gmail.com'), 
       ('Proveedor C', 3, '3007773333', 'proveedorC@gmail.com'), 
       ('Proveedor D', 4, '3006664444', 'proveedorD@gmail.com'), 
       ('Proveedor E', 5, '3005555555', 'proveedorE@gmail.com');

-- Inserción de datos en la tabla Ordenes_compras
INSERT INTO Ordenes_compras (fecha, id_proveedor, total, pedido_recibido) 
VALUES ('2024-09-15 09:00:00', 1, 50000, TRUE), 
       ('2024-09-16 10:30:00', 2, 30000, TRUE), 
       ('2024-09-17 14:00:00', 3, 15000, FALSE), 
       ('2024-09-18 11:15:00', 4, 20000, TRUE), 
       ('2024-09-19 13:45:00', 5, 25000, FALSE);

-- Inserción de datos en la tabla Ingredientes
INSERT INTO Ingredientes (nombre, precio, stock) 
VALUES ('Harina', 3000, 100), 
       ('Azúcar', 2000, 50), 
       ('Levadura', 1500, 30), 
       ('Leche', 5000, 20), 
       ('Chocolate', 4000, 40);

-- Inserción de datos en la tabla Ingredientes_en_orden
INSERT INTO Ingredientes_en_orden (id_orden_compra, id_ingrediente, cantidad, subtotal) 
VALUES (1, 1, 10, 30000), 
       (1, 2, 5, 10000), 
       (2, 3, 10, 5000), 
       (2, 4, 2, 20000), 
       (3, 5, 8, 15000), 
       (4, 2, 12, 24000), 
       (4, 1, 7, 21000), 
       (5, 4, 4, 20000);

-- Inserción de datos en la tabla Ingredientes_en_productos
INSERT INTO Ingredientes_en_productos (id_producto, id_ingrediente, es_principal, cantidad) 
VALUES (1, 1, TRUE, 2), 
       (2, 2, TRUE, 1), 
       (3, 1, TRUE, 3), 
       (4, 4, TRUE, 2), 
       (5, 5, FALSE, 1),
       (5, 1, TRUE, 2);
