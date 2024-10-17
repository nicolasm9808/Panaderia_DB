-- 1. **Consultas Simples (SELECT)**
--     1. Mostrar todos los productos disponibles en la panadería.
--     2. Listar todos los ingredientes de la panadería.
--     3. Mostrar todas las ventas realizadas en un día específico.
--     4. Listar todos los clientes registrados en la base de datos.
--     5. Mostrar todos los empleados de la panadería.
--     6. Mostrar todas las órdenes de compra a proveedores.
--     7. Listar todas las ventas superiores a $100.
--     8. Mostrar todos los productos que sean de tipo 'pan'.
--     9. Listar los proveedores con los que se trabaja regularmente.
--     10. Mostrar las órdenes de compra que están pendientes.
-- 2. **Consultas con JOIN**
--     1. Obtener todas las ventas con el detalle de los productos vendidos.
SELECT V.id_venta AS 'No. Venta', V.fecha AS Fecha, P.nombre AS Prodcuto, cantidad FROM Productos_en_ventas PV
JOIN Productos P ON P.id_producto = PV.id_producto
JOIN Ventas V ON V.id_venta = PV.id_venta
ORDER BY V.id_venta;
--     2. Mostrar los ingredientes utilizados en cada producto.
SELECT P.nombre AS Producto, GROUP_CONCAT(I.nombre SEPARATOR ', ') AS Ingredientes FROM Ingredientes_en_productos IP
JOIN Productos P ON P.id_producto = IP.id_producto
JOIN Ingredientes I ON I.id_ingrediente = IP.id_ingrediente
GROUP BY IP.id_producto;
--     3. Mostrar las ventas de cada empleado.
--     4. Listar los proveedores y los productos que les compramos.
--     5. Mostrar los clientes y sus respectivas compras.
--     6. Obtener las órdenes de compra junto con los proveedores correspondientes.
--     7. Mostrar el inventario actual de productos junto con el proveedor del ingrediente principal.
--     8. Listar los productos vendidos y el total de ingresos generados por cada uno.
--     9. Obtener las ventas con la información de los clientes que las realizaron.
--     10. Mostrar las órdenes de compra que incluyen productos que están agotados.
-- 3. **Consultas con Funciones de Agregación**
--     1. Calcular el total de ventas de la panadería.
--     2. Obtener el precio promedio de los productos vendidos.
--     3. Mostrar la cantidad total de productos vendidos por categoría.
--     4. Calcular el ingreso total generado en una semana específica.
--     5. Mostrar el total de ventas realizadas por un empleado específico.
--     6. Calcular la cantidad total de ingredientes utilizados en un producto.
--     7. Obtener el total de órdenes de compra realizadas en el último mes.
--     8. Mostrar la cantidad de clientes que han realizado compras en el último mes.
--     9. Calcular el costo total de los ingredientes comprados a un proveedor.
--     10. Mostrar el total de ventas en un día específico.
-- 4. **Consultas con Subconsultas**
--     1. Listar los productos que tienen un costo mayor al precio promedio de todos los productos.
--     2. Mostrar los empleados que han realizado más ventas que el promedio.
--     3. Obtener los clientes que han realizado más compras que el promedio.
--     4. Listar los proveedores cuyos productos tienen un precio superior al promedio.
--     5. Mostrar los productos que tienen un costo menor que el promedio de ingredientes.
-- 5. **Consultas con Filtros Avanzados**
--     1. Mostrar las ventas que se realizaron entre dos fechas específicas.
--     2. Listar los productos cuyo precio está entre $5 y $15.
--     3. Mostrar los proveedores que no han sido utilizados en los últimos tres meses.
--     4. Listar los clientes que no han realizado ninguna compra en los últimos seis meses.
--     5. Mostrar las ventas que fueron superiores a un monto específico y que incluyeron productos con descuentos.
-- 6. **Consultas de Actualización (UPDATE)**
--    1. Actualizar el precio de todos los productos de la categoría 'pan' en un 5%.
--     2. Modificar el inventario de un ingrediente específico después de una compra.
--     3. Actualizar el estado de una orden de compra después de que los productos han sido entregados.
--     4. Modificar los datos de un cliente específico.
--     5. Actualizar el salario de un empleado después de una revisión anual.
-- 7. **Consultas de Eliminación (DELETE)**
--     1. Eliminar las órdenes de compra que ya han sido entregadas hace más de un año.
--     2. Borrar los productos que han sido descontinuados.
--     3. Eliminar los registros de ventas de hace más de dos años.
--     4. Borrar los clientes que no han realizado compras en los últimos tres años.
--     5. Eliminar los proveedores que no han sido utilizados en más de dos años.