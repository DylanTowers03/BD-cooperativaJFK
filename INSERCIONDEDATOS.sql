INSERT INTO empresa (dni, persona_contacto, num_empleados_totales) VALUES
('12345678A', 'Juan Perez', 5),
('23456789B', 'Maria Gomez', 10),
('34567890C', 'Pedro Rodriguez', 7),
('45678901D', 'Laura Fernandez', 3),
('56789012E', 'Carlos Hernandez', 12),
('67890123F', 'Ana Garcia', 8),
('78901234G', 'Javier Martinez', 6),
('89012345H', 'Sofia Lopez', 4),
('90123456I', 'Pablo Sanchez', 9),
('01234567J', 'Lucia Jimenez', 11);


INSERT INTO socios (nombre, cedula, telefono, direccion, email, salarioMensual, empresa_id) VALUES
('Juan Perez', 12345678, '+34 123456789', 'Calle Mayor 1', 'juan.perez@gmail.com', 2000.50, 1),
('Maria Gomez', 23456789, '+34 234567890', 'Plaza España 2', 'maria.gomez@hotmail.com', 1800.25, 1),
('Pedro Rodriguez', 34567890, '+34 345678901', 'Avenida Libertad 3', 'pedro.rodriguez@yahoo.es', 2200.75, 1),
('Laura Fernandez', 45678901, '+34 456789012', 'Calle San Miguel 4', 'laura.fernandez@gmail.com', 1950.80, 1),
('Carlos Hernandez', 56789012, '+34 567890123', 'Plaza Mayor 5', 'carlos.hernandez@hotmail.com', 2500.00, 1),
('Ana Garcia', 67890123, '+34 678901234', 'Calle Real 6', 'ana.garcia@yahoo.es', 2100.30, 1),
('Javier Martinez', 78901234, '+34 789012345', 'Avenida Europa 7', 'javier.martinez@gmail.com', 2400.60, 1),
('Sofia Lopez', 89012345, '+34 890123456', 'Calle Mayor 8', 'sofia.lopez@hotmail.com', 1900.70, 1),
('Pablo Sanchez', 90123456, '+34 901234567', 'Plaza España 9', 'pablo.sanchez@yahoo.es', 2300.40, 1),
('Lucia Jimenez', 12345678, '+34 012345678', 'Avenida Libertad 10', 'lucia.jimenez@gmail.com', 2050.35, 1);


INSERT INTO codeudor (cedula, nombre, apellido, ciudad, telefono, direccion, posible_cliente) VALUES
(12345678, 'Juan', 'Perez', 'Madrid', '+34 123456789', 'Calle Mayor 1', 1),
(23456789, 'Maria', 'Gomez', 'Barcelona', '+34 234567890', 'Plaza España 2', 0),
(34567890, 'Pedro', 'Rodriguez', 'Valencia', '+34 345678901', 'Avenida Libertad 3', 1),
(45678901, 'Laura', 'Fernandez', 'Sevilla', '+34 456789012', 'Calle San Miguel 4', 0),
(56789012, 'Carlos', 'Hernandez', 'Madrid', '+34 567890123', 'Plaza Mayor 5', 1),
(67890123, 'Ana', 'Garcia', 'Barcelona', '+34 678901234', 'Calle Real 6', 0),
(78901234, 'Javier', 'Martinez', 'Valencia', '+34 789012345', 'Avenida Europa 7', 1),
(89012345, 'Sofia', 'Lopez', 'Sevilla', '+34 890123456', 'Calle Mayor 8', 0),
(90123456, 'Pablo', 'Sanchez', 'Madrid', '+34 901234567', 'Plaza España 9', 1),
(12345678, 'Lucia', 'Jimenez', 'Barcelona', '+34 012345678', 'Avenida Libertad 10', 0);


INSERT INTO modalidad (ptiempo_estipulado, tasa_interes) VALUES
(12, 1.2),
(18, 1.5),
(24, 1.8),
(30, 2.0),
(36, 2.5),
(48, 3.0),
(60, 3.5),
(72, 4.0),
(84, 4.5),
(96, 5.0);


INSERT INTO prestamo (modalidad_id, socios_id, fecha_inicio, valor_prestamo, cuota_mensual, plazo_meses, codeudor_id) VALUES
(1, 1, '2022-01-01', 10000.00, 900, 12, 1),
(2, 2, '2022-02-01', 15000.00, 1000, 18, 2),
(3, 3, '2022-03-01', 20000.00, 1200, 24, 3),
(4, 4, '2022-04-01', 25000.00, 1500, 30, 4),
(5, 5, '2022-05-01', 30000.00, 1800, 36, 5),
(6, 6, '2022-06-01', 35000.00, 2100, 48, 6),
(7, 7, '2022-07-01', 40000.00, 2400, 60, 7),
(8, 8, '2022-08-01', 45000.00, 2700, 72, 8),
(9, 9, '2022-09-01', 50000.00, 3000, 84, 9),
(10, 10, '2022-10-01', 55000.00, 3300, 96, 10);
