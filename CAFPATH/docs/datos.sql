INSERT INTO Path (num, starting_point, end_point, est_arrival, starting_date, id_ruta) VALUES 
(1, 'Almacen Principal', 'Cliente 1', '2024-11-01', '2024-10-15', 1),
(2, 'Almacen Materia Prima', 'Cliente 2', '2024-11-03', '2024-10-16', 2),
(3, 'Almacen Producto Terminado', 'Cliente 3', '2024-11-05', '2024-10-17', 3),
(4, 'Almacen Refacciones', 'Cliente 4', '2024-11-02', '2024-10-18', 4),
(5, 'Almacen Empaque', 'Cliente 5', '2024-11-04', '2024-10-19', 5),
(6, 'Almacen Principal', 'Cliente 6', '2024-11-07', '2024-10-20', 6),
(7, 'Almacen Materia Prima', 'Cliente 7', '2024-11-09', '2024-10-21', 7),
(8, 'Almacen Producto Terminado', 'Cliente 8', '2024-11-11', '2024-10-22', 8),
(9, 'Almacen Refacciones', 'Cliente 9', '2024-11-13', '2024-10-23', 9),
(10, 'Almacen Empaque', 'Cliente 10', '2024-11-15', '2024-10-24', 10);

INSERT INTO Warehouse (code, name, street, colony, number) VALUES 
('WH001', 'Almacen Principal', 'Industria', 'Centro', '101'),
('WH002', 'Almacen Materia Prima', 'Produccion', 'Norte', '202'),
('WH003', 'Almacen Producto Terminado', 'Distribucion', 'Sur', '303'),
('WH004', 'Almacen Refacciones', 'Repuestos', 'Este', '404'),
('WH005', 'Almacen Empaque', 'Embalaje', 'Oeste', '505');

INSERT INTO Item (code, name, description) VALUES 
('IT001', 'Tornillo M4', 'Tornillo de acero inoxidable M4 de 10mm'),
('IT002', 'Arandela 12mm', 'Arandela plana para uso general de 12mm'),
('IT003', 'Tuerca hexa M5', 'Tuerca hexagonal para pernos M5'),
('IT004', 'Lubricante ind', 'Lubricante para maquinaria pesada'),
('IT005', 'Filtro de aire', 'Filtro de aire para compresor'),
('IT006', 'Cinta adhesiva', 'Cinta industrial de 50 metros'),
('IT007', 'Caja de cartón', 'Caja cartón reforzada de 30x30x30cm'),
('IT008', 'Empaqueburbuja', 'Empaque de burbuja '),
('IT009', 'Palet de madera', 'Palet de madera estándar'),
('IT010', 'Placa de acero', 'Placa de acero inoxidable de 1x2m'),
('IT011', 'Resorte', 'Resorte de acero de alta resistencia');

INSERT INTO Insurance (num, policyNumber, insurance_type, coverage) VALUES 
(1, 'POL001', 'Seguro de carga', 10000.00),
(2, 'POL002', 'Seguro de responsabilidad civil', 20000.00),
(3, 'POL003', 'Seguro contra accidentes', 15000.00),
(4, 'POL004', 'Seguro de robo', 12000.00),
(5, 'POL005', 'Seguro de mercancías perecederas', 18000.00),
(6, 'POL006', 'Seguro de daño por agua', 16000.00),
(7, 'POL007', 'Seguro de daño por fuego', 25000.00),
(8, 'POL008', 'Seguro de rotura', 11000.00),
(9, 'POL009', 'Seguro de extravío', 13000.00),
(10, 'POL010', 'Seguro de maquinaria', 21000.00);

INSERT INTO Role (code, name, privileges) VALUES 
('R001', 'Supervisor', 'Administración y control de almacén'),
('R002', 'Operador', 'Manejo de materiales y equipos'),
('R003', 'Transportista', 'Entrega y recolección de mercancías'),
('R004', 'Cliente', 'Consultar informacionn de pedidos realizados');

INSERT INTO Users (num, username, password, role) VALUES 
(1, 'supervisor1', 'pass123', 'R001'),
(2, 'operador1', 'pass234', 'R002'),
(3, 'transportista1', 'pass345', 'R003'),
(4, 'supervisor2', 'pass456', 'R001'),
(5, 'operador2', 'pass567', 'R002'),
(6, 'transportista2', 'pass678', 'R003'),
(7, 'supervisor3', 'pass789', 'R001'),
(8, 'operador3', 'pass890', 'R002'),
(9, 'transportista3', 'pass901', 'R003'),
(10, 'supervisor4', 'pass012', 'R001'),
(11, 'operador4', 'pass1234', 'R002'),
(12, 'transportista4', 'pass2345', 'R003'),
(13, 'supervisor5', 'pass3456', 'R001'),
(14, 'operador5', 'pass4567', 'R002'),
(15, 'transportista5', 'pass5678', 'R003'),
(16, 'supervisor6', 'pass6789', 'R001'),
(17, 'operador6', 'pass7890', 'R002'),
(18, 'transportista6', 'pass8901', 'R003'),
(19, 'supervisor7', 'pass9012', 'R001'),
(20, 'operador7', 'pass0123', 'R002'),
(21, 'transportista7', 'pass12345', 'R003'),
(22, 'supervisor8', 'pass23456', 'R001'),
(23, 'operador8', 'pass34567', 'R002'),
(24, 'transportista8', 'pass45678', 'R003'),
(25, 'supervisor9', 'pass56789', 'R001'),
(26, 'operador9', 'pass67890', 'R002'),
(27, 'transportista9', 'pass78901', 'R003'),
(28, 'supervisor10', 'pass89012', 'R001'),
(29, 'operador10', 'pass90123', 'R002'),
(30, 'transportista10', 'pass01234', 'R003'),
(31, 'supervisor11', 'pass234567', 'R001'),
(32, 'operador11', 'pass345678', 'R002'),
(33, 'transportista11', 'pass456789', 'R003'),
(34, 'supervisor12', 'pass567890', 'R001'),
(35, 'operador12', 'pass678901', 'R002'),
(36, 'transportista12', 'pass789012', 'R003'),
(37, 'supervisor13', 'pass890123', 'R001'),
(38, 'operador13', 'pass901234', 'R002'),
(39, 'transportista13', 'pass012345', 'R003'),
(40, 'supervisor14', 'pass1234567', 'R001'),
(41, 'operador14', 'pass2345678', 'R002'),
(42, 'transportista14', 'pass3456789', 'R003'),
(43, 'supervisor15', 'pass4567890', 'R001'),
(44, 'operador15', 'pass5678901', 'R002'),
(45, 'transportista15', 'pass6789012', 'R003'),
(46, 'supervisor16', 'pass7890123', 'R001'),
(47, 'operador16', 'pass8901234', 'R002'),
(48, 'transportista16', 'pass9012345', 'R003'),
(49, 'supervisor17', 'pass0123456', 'R001'),
(50, 'operador17', 'pass12345678', 'R002'),
(51, 'transportista17', 'pass23456789', 'R003'),
(52, 'supervisor18', 'pass34567890', 'R001'),
(53, 'operador18', 'pass45678901', 'R002'),
(54, 'transportista18', 'pass56789012', 'R003'),
(57, 'ahernandez', 'clientpass1', 'R004'),
(58, 'lgomez', 'clientpass2', 'R004'),
(59, 'mfernandez', 'clientpass3', 'R004'),
(60, 'pmartinez', 'clientpass4', 'R004'),
(61, 'sruiz', 'clientpass5', 'R004'),
(62, 'csanchez', 'clientpass6', 'R004'),
(63, 'mlopez', 'clientpass7', 'R004'),
(64, 'fdiaz', 'clientpass8', 'R004'),
(65, 'ivega', 'clientpass9', 'R004'),
(66, 'jramos', 'clientpass10', 'R004'),
(67, 'rlopez', 'clientpass50', 'R004');


INSERT INTO Client (num, name, lastname, surname, company, phone, street, colony, number, usernum, username, password) VALUES 
(1, 'Alberto', 'Hernandez', 'Perez', 'Manufacturas MEX', '5512345678', 'Av. Central', 'Centro', '101', 1, 'ahernandez', 'clientpass1'),
(2, 'Lucia', 'Gomez', 'Ramirez', 'Industrias ALFA', '5587654321', 'Calle Norte', 'Industrial', '202', 2, 'lgomez', 'clientpass2'),
(3, 'Maria', 'Fernandez', 'Lopez', 'Maquilas del Sol', '5523344556', 'Avenida Sur', 'Zona Industrial', '303', 3, 'mfernandez', 'clientpass3'),
(4, 'Pedro', 'Martinez', 'Garcia', 'Textiles S.A.', '5543210987', 'Calzada Ori', 'Ciudad', '404', 4, 'pmartinez', 'clientpass4'),
(5, 'Sofia', 'Ruiz', 'Santos', 'ElectronicMX', '5598765432', 'Circuito Pon', 'Nueva Zona', '505', 5, 'sruiz', 'clientpass5'),
(6, 'Carlos', 'Sanchez', 'Rivera', 'Centro de reparto', '5510987654', 'Blvd Norte', 'Comercial', '606', 6, 'csanchez', 'clientpass6'),
(7, 'Martha', 'Lopez', 'Flores', 'Importaciones Ltd.', '5576543210', 'Pasaje Oriente', 'Residencial', '707', 7, 'mlopez', 'clientpass7'),
(8, 'Francisco', 'Diaz', 'Vega', 'International Log', '5591234567', 'Reforma', 'Urbano', '808', 8, 'fdiaz', 'clientpass8'),
(9, 'Isabel', 'Vega', 'Castro', 'Automotriz S.A.', '5545678910', 'Circuito Int', 'Centro', '909', 9, 'ivega', 'clientpass9'),
(10, 'Juan', 'Ramos', 'Mora', 'Servicios de Calidad', '5588766543', 'Via Rapida', 'Moderna', '1010', 10, 'jramos', 'clientpass10'),
(11, 'Raul', 'Lopez', 'Gonzalez', 'Distribuciones S.A.', '5522334455', 'Calzada Sur', 'Comercial', '303', 11, 'rlopez', 'clientpass50');

INSERT INTO Stock (code, name, amount, warehouse) VALUES 
('ST001', 'Tornillo M4', 15000, 'WH001'),
('ST002', 'Arandela12mm', 25000, 'WH002'),
('ST003', 'Tuerca hexa', 20000, 'WH003'),
('ST004', 'Aceite indus', 8000, 'WH004'),
('ST005', 'Filtro de aire', 12000, 'WH005'),
('ST006', 'Cinta adhesiva', 30000, 'WH001'),
('ST007', 'Caja de cartón', 5000, 'WH002'),
('ST008', 'Empaque burbuja', 4500, 'WH003'),
('ST009', 'Palet de madera', 1000, 'WH004'),
('ST010', 'Placa acero', 800, 'WH005'),
('ST011', 'Resorte', 750, 'WH005');

INSERT INTO Incident (num, description, date, user) VALUES 
(1, 'Retraso en la entrega por tráfico', '2024-10-10', 1),
(2, 'Producto dañado durante el envío', '2024-10-11', 2),
(3, 'Ruta modificada por obras viales', '2024-10-12', 3),
(4, 'Incidente de seguridad en la carga', '2024-10-13', 4),
(5, 'Fallo mecánico en el vehículo', '2024-10-14', 5),
(6, 'Error en la dirección de entrega', '2024-10-15', 6),
(7, 'Demora en aduana', '2024-10-16', 7),
(8, 'Problemas de documentación', '2024-10-17', 8),
(9, 'Producto mal embalado', '2024-10-18', 9),
(10, 'Cambio de última hora en el cliente', '2024-10-19', 10),
(11, 'Condiciones climáticas adversas', '2024-10-30', 11);

INSERT INTO Vehicle (number, license_plate, model, max_capacity, path, warehouse) VALUES 
(1, 'ABC123', 'Camión 5 Ton', 5000.00, 1, 'WH001'),
(2, 'DEF456', 'Camioneta 3 Ton', 3000.00, 2, 'WH002'),
(3, 'GHI789', 'Camión 10 Ton', 10000.00, 3, 'WH003'),
(4, 'JKL012', 'Furgoneta 1 Ton', 1000.00, 4, 'WH004'),
(5, 'MNO345', 'Camión 8 Ton', 8000.00, 5, 'WH005'),
(6, 'PQR678', 'Camioneta 2 Ton', 2000.00, 6, 'WH001'),
(7, 'STU901', 'Furgoneta 1.5 Ton', 1500.00, 7, 'WH002'),
(8, 'VWX234', 'Camión 12 Ton', 12000.00, 8, 'WH003'),
(9, 'YZA567', 'Camioneta 2.5 Ton', 2500.00, 9, 'WH004'),
(10, 'BCD890', 'Camión 7 Ton', 7000.00, 10, 'WH005'),
(11, 'XYZ999', 'Camioneta 1.8 Ton', 1800.00, 10, 'WH001'),
(12, 'EFG123', 'Camión 15 Ton', 15000.00, 1, 'WH002'),
(13, 'HIJ456', 'Camioneta 4 Ton', 4000.00, 1, 'WH003'),
(14, 'KLM789', 'Furgoneta 2 Ton', 2000.00, 3, 'WH004'),
(15, 'NOP012', 'Camión 18 Ton', 18000.00, 4, 'WH005'),
(16, 'QRS345', 'Camioneta 3.5 Ton', 3500.00, 5, 'WH001'),
(17, 'TUV678', 'Camión 20 Ton', 20000.00, 6, 'WH002'),
(18, 'WXY901', 'Furgoneta 2.5 Ton', 2500.00, 7, 'WH003'),
(19, 'ZAB234', 'Camión 9 Ton', 9000.00, 8, 'WH004'),
(20, 'CDE567', 'Camioneta 5 Ton', 5000.00, 9, 'WH005'),
(21, 'FGH890', 'Camión 22 Ton', 22000.00, 10, 'WH001'),
(22, 'IJK111', 'Camioneta 3 Ton', 3000.00, 1, 'WH002'),
(23, 'LMN222', 'Furgoneta 3 Ton', 3000.00, 2, 'WH003'),
(24, 'OPQ333', 'Camión 13 Ton', 13000.00, 3, 'WH004'),
(25, 'RST444', 'Camioneta 4.5 Ton', 4500.00, 4, 'WH005'),
(26, 'UVW555', 'Camión 25 Ton', 25000.00, 5, 'WH001'),
(27, 'XYZ666', 'Furgoneta 2.8 Ton', 2800.00, 6, 'WH002'),
(28, 'ABC777', 'Camión 6 Ton', 6000.00, 7, 'WH003'),
(29, 'DEF888', 'Camioneta 4 Ton', 4000.00, 8, 'WH004'),
(30, 'GHI999', 'Camión 30 Ton', 30000.00, 9, 'WH005'),
(31, 'JKL000', 'Furgoneta 3.2 Ton', 3200.00, 10, 'WH001');

INSERT INTO Employees (num, name, lastname, surname, role, usernum, username, password, vehicle, warehouse) VALUES 
(1, 'Jose', 'Perez', 'Garcia', 'Supervisor', 1, 'jperez', 'emppass1', 1, 'WH001'),
(2, 'Ana', 'Gonzalez', 'Lopez', 'Operador', 2, 'agonzalez', 'emppass2', 2, 'WH002'),
(3, 'Carlos', 'Martinez', 'Diaz', 'Transportista', 3, 'cmartinez', 'emppass3', 3, 'WH003'),
(4, 'Marta', 'Sanchez', 'Reyes', 'Supervisor', 4, 'msanchez', 'emppass4', 4, 'WH004'),
(5, 'Luis', 'Hernandez', 'Rojas', 'Operador', 5, 'lhernandez', 'emppass5', 5, 'WH005'),
(6, 'Paula', 'Rodriguez', 'Mendez', 'Transportista', 6, 'prodriguez', 'emppass6', 6, 'WH001'),
(7, 'Juan', 'Lopez', 'Castro', 'Supervisor', 7, 'jlopz', 'emppass7', 7, 'WH002'),
(8, 'Sofia', 'Ramirez', 'Nunez', 'Operador', 8, 'sramirez', 'emppass8', 8, 'WH003'),
(9, 'Rafael', 'Fernandez', 'Cruz', 'Transportista', 9, 'rfernandez', 'emppass9', 9, 'WH004'),
(10, 'Gloria', 'Vazquez', 'Torres', 'Supervisor', 10, 'gvazquez', 'emppass10', 10, 'WH005'),
(11, 'Laura', 'Alvarez', 'Morales', 'Operador', 11, 'lalvarez', 'emppass11', 11, 'WH001');

INSERT INTO Shipment (num, date, delivery_date, client, incident, vehicle, path, insurance) VALUES 
(1, '2024-10-05', '2024-10-08', 1, 1, 1, 1, 1),
(2, '2024-10-06', '2024-10-09', 2, 2, 2, 2, 2),
(3, '2024-10-07', '2024-10-10', 3, 3, 3, 3, 3),
(4, '2024-10-08', '2024-10-11', 4, 4, 4, 4, 4),
(5, '2024-10-09', '2024-10-12', 5, 5, 5, 5, 5),
(6, '2024-10-10', '2024-10-13', 6, 6, 6, 6, 6),
(7, '2024-10-11', '2024-10-14', 7, 7, 7, 7, 7),
(8, '2024-10-12', '2024-10-15', 8, 8, 8, 8, 8),
(9, '2024-10-13', '2024-10-16', 9, 9, 9, 9, 9),
(10, '2024-10-14', '2024-10-17', 10, 10, 10, 10, 10),
(11, '2024-11-01', '2024-11-05', 11, 11, 11, 1, 1),
(12, '2024-10-15', '2024-10-18', 1, 1, 12, 2, 2),
(13, '2024-10-16', '2024-10-19', 2, NULL, NULL, NULL, 3),
(14, '2024-10-17', '2024-10-20', 3, NULL, NULL, NULL, 4),
(15, '2024-10-18', '2024-10-21', 4, NULL, NULL, NULL, 5),
(16, '2024-10-19', '2024-10-22', 5, NULL, NULL, NULL, 6),
(17, '2024-10-20', '2024-10-23', 6, NULL, NULL, NULL, 7),
(18, '2024-10-21', '2024-10-24', 7, NULL, NULL, NULL, 8),
(19, '2024-10-22', '2024-10-25', 8, NULL, NULL, NULL, 9),
(20, '2024-10-23', '2024-10-26', 9, NULL, NULL, NULL, 10),
(21, '2024-10-24', '2024-10-27', 10, NULL, NULL, NULL, 1),
(22, '2024-10-25', '2024-10-28', 11, NULL, NULL, NULL, 2),
(23, '2024-10-26', '2024-10-29', 1, NULL, NULL, NULL, 3),
(24, '2024-10-27', '2024-10-30', 2, NULL, NULL, NULL, 4),
(25, '2024-10-28', '2024-10-31', 3, NULL, NULL, NULL, 5),
(26, '2024-10-29', '2024-11-01', 4, NULL, NULL, NULL, 6),
(27, '2024-10-30', '2024-11-02', 5, NULL, NULL, NULL, 7),
(28, '2024-10-31', '2024-11-03', 6, NULL, NULL, NULL, 8),
(29, '2024-11-01', '2024-11-04', 7, NULL, NULL, NULL, 9),
(30, '2024-11-02', '2024-11-05', 8, NULL, NULL, NULL, 10),
(31, '2024-11-03', '2024-11-06', 9, NULL, NULL, NULL, 1),
(32, '2024-11-04', '2024-11-07', 10, NULL, NULL, NULL, 2),
(33, '2024-11-05', '2024-11-08', 11, NULL, NULL, NULL, 3),
(34, '2024-11-06', '2024-11-09', 1, NULL, NULL, NULL, 4),
(35, '2024-11-07', '2024-11-10', 2, NULL, NULL, NULL, 5),
(36, '2024-11-08', '2024-11-11', 3, NULL, NULL, NULL, 6),
(37, '2024-11-09', '2024-11-12', 4, NULL, NULL, NULL, 7),
(38, '2024-11-10', '2024-11-13', 5, NULL, NULL, NULL, 8),
(39, '2024-11-11', '2024-11-14', 6, NULL, NULL, NULL, 9),
(40, '2024-11-12', '2024-11-15', 7, NULL, NULL, NULL, 10),
(41, '2024-11-13', '2024-11-16', 8, NULL, NULL, NULL, 1),
(42, '2024-11-14', '2024-11-17', 9, NULL, NULL, NULL, 2),
(43, '2024-11-15', '2024-11-18', 10, NULL, NULL, NULL, 3);


INSERT INTO Record (date, location, status, client, shipment) VALUES

('2024-10-05', 'Almacén Principal', 'Pedido Realizado', 1, 1),
('2024-10-06', 'Almacén Principal', 'En Proceso', 1, 1),
('2024-10-07', 'Almacén M Prima', 'En Tránsito', 1, 1),
('2024-10-08', 'Almacén Principal', 'Entregado', 1, 1),

('2024-10-17', 'Almacén Principal', 'Pedido Realizado', 1, 2),
('2024-10-18', 'Almacén Principal', 'En Proceso', 1, 2),

('2024-10-06', 'Almacén M Prima', 'Pedido Realizado', 2, 3),
('2024-10-07', 'Almacén M Prima', 'En Proceso', 2, 3),
('2024-10-08', 'Almacén Producto', 'En Tránsito', 2, 3),
('2024-10-09', 'Almacén M Prima', 'Entregado', 2, 3),

('2024-10-18', 'Almacén Refacciones', 'Pedido Realizado', 2, 4),
('2024-10-19', 'Almacén Refacciones', 'En Proceso', 2, 4),

('2024-10-07', 'Almacén Producto', 'Pedido Realizado', 3, 5),
('2024-10-08', 'Almacén Producto', 'En Proceso', 3, 5),
('2024-10-09', 'Almacén Refacciones', 'En Tránsito', 3, 5),
('2024-10-10', 'Almacén Producto', 'Entregado', 3, 5),

('2024-10-19', 'Almacén Principal', 'Pedido Realizado', 3, 6),
('2024-10-20', 'Almacén Principal', 'En Proceso', 3, 6),

('2024-10-08', 'Almacén Refacciones', 'Pedido Realizado', 4, 7),
('2024-10-09', 'Almacén Refacciones', 'En Proceso', 4, 7),
('2024-10-10', 'Almacén Empaque', 'En Tránsito', 4, 7),
('2024-10-11', 'Almacén Refacciones', 'Entregado', 4, 7),

('2024-10-20', 'Almacén Producto', 'Pedido Realizado', 4, 8),
('2024-10-21', 'Almacén Producto', 'En Proceso', 4, 8),

('2024-10-09', 'Almacén Empaque', 'Pedido Realizado', 5, 9),
('2024-10-10', 'Almacén Empaque', 'En Proceso', 5, 9),
('2024-10-11', 'Almacén Principal', 'En Tránsito', 5, 9),
('2024-10-12', 'Almacén Empaque', 'Entregado', 5, 9),

('2024-10-21', 'Almacén Refacciones', 'Pedido Realizado', 5, 10),
('2024-10-22', 'Almacén Refacciones', 'En Proceso', 5, 10),

('2024-10-10', 'Almacén Principal', 'Pedido Realizado', 6, 11),
('2024-10-11', 'Almacén Principal', 'En Proceso', 6, 11),
('2024-10-12', 'Almacén M Prima', 'En Tránsito', 6, 11),
('2024-10-13', 'Almacén Principal', 'Entregado', 6, 11),

('2024-10-22', 'Almacén Refacciones', 'Pedido Realizado', 6, 12),
('2024-10-23', 'Almacén Refacciones', 'En Proceso', 6, 12),

('2024-10-11', 'Almacén M Prima', 'Pedido Realizado', 7, 13),
('2024-10-12', 'Almacén M Prima', 'En Proceso', 7, 13),
('2024-10-13', 'Almacén Producto', 'En Tránsito', 7, 13),
('2024-10-14', 'Almacén MateriaP', 'Entregado', 7, 13),

('2024-10-23', 'Almacén Principal', 'Pedido Realizado', 7, 14),
('2024-10-24', 'Almacén Principal', 'En Proceso', 7, 14),

('2024-10-12', 'Almacén Producto', 'Pedido Realizado', 8, 15),
('2024-10-13', 'Almacén Producto', 'En Proceso', 8, 15),
('2024-10-14', 'Almacén Refacciones', 'En Tránsito', 8, 15),
('2024-10-15', 'Almacén Producto', 'Entregado', 8, 15),

('2024-10-24', 'Almacén Principal', 'Pedido Realizado', 8, 16),
('2024-10-25', 'Almacén Principal', 'En Proceso', 8, 16),

('2024-10-13', 'Almacén Refacciones', 'Pedido Realizado', 9, 17),
('2024-10-14', 'Almacén Refacciones', 'En Proceso', 9, 17),
('2024-10-15', 'Almacén Empaque', 'En Tránsito', 9, 17),
('2024-10-16', 'Almacén Refacciones', 'Entregado', 9, 17),

('2024-10-27', 'Almacén M Prima', 'Pedido Realizado', 9, 18),
('2024-10-28', 'Almacén M Prima', 'En Proceso', 9, 18),

('2024-10-14', 'Almacén Empaque', 'Pedido Realizado', 10, 19),
('2024-10-15', 'Almacén Empaque', 'En Proceso', 10, 19),
('2024-10-16', 'Almacén Principal', 'En Tránsito', 10, 19),
('2024-10-17', 'Almacén Empaque', 'Entregado', 10, 19),

('2024-10-26', 'Almacén Refacciones', 'Pedido Realizado', 10, 20),
('2024-10-27', 'Almacén Refacciones', 'En Proceso', 10, 20),

('2024-11-01', 'Almacén Principal', 'Pedido Realizado', 11, 21),
('2024-11-02', 'Almacén Principal', 'En Proceso', 11, 21),
('2024-11-03', 'Almacén M Prima', 'En Tránsito', 11, 21),
('2024-11-04', 'Almacén Principal', 'Entregado', 11, 21),

('2024-11-13', 'Almacén Refacciones', 'Pedido Realizado', 11, 22),
('2024-11-14', 'Almacén Refacciones', 'En Proceso', 11, 22);

INSERT INTO Assamble (employees, shipment) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

INSERT INTO Package (shipment, item) VALUES
(1, 'IT001'),
(2, 'IT002'),
(2, 'IT003'),
(3, 'IT004'),
(4, 'IT005'),
(5, 'IT006'),
(6, 'IT007'),
(7, 'IT008'),
(8, 'IT009'),
(9, 'IT010');

INSERT INTO Inventory (stock, item) VALUES
('ST001', 'IT001'),
('ST002', 'IT002'),
('ST003', 'IT003'),
('ST004', 'IT004'),
('ST005', 'IT005'),
('ST006', 'IT006'),
('ST007', 'IT007'),
('ST008', 'IT008'),
('ST009', 'IT009'),
('ST010', 'IT010');

INSERT INTO RutaDetalles (ruta, id_vehiculo, fecha, orden_entrega, id_paquete, direccion_destino, id_ruta)
VALUES 
    (1, 1, '2024-10-29', 1, 1, 'Av. Siempre Viva 742, Springfield', 1),
    (2, 2, '2024-10-30', 2, 2, 'Calle Falsa 123, Springfield', 2),
    (3, 1, '2024-10-29', 3, 3, 'Calle de los Olmos 5, Springfield', 1),
    (4, 3, '2024-10-31', 4, 4, 'Paseo de la Reforma 100, Ciudad de México', 3),
    (5, 2, '2024-10-30', 5, 5, 'Avenida de la Libertad 45, Ciudad de México', 2),
    (6, 3, '2024-10-31', 6, 6, 'Boulevard de los sueños 77, Ciudad de México', 3);


