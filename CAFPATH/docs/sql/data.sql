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
('IT011', 'Resorte', 'Resorte de acero de alta resistencia'),
('IT012', 'Correa V', 'Correa de transmisión tipo V para motor'),
('IT013', 'Rueda 5in', 'Rueda de goma de 5 pulgadas'),
('IT014', 'Engranaje 20T', 'Engranaje de acero de 20 dientes'),
('IT015', 'Tubo PVC', 'Tubo de PVC de 2 pulgadas y 3 metros'),
('IT016', 'Panel LED', 'Panel de iluminación LED de 60x60cm'),
('IT017', 'Interruptor', 'Interruptor de encendido/apagado 10A'),
('IT018', 'Cable 10m', 'Cable eléctrico de 10 metros'),
('IT019', 'Rodamiento', 'Rodamiento de bolas de 20mm de diámetro'),
('IT020', 'Abrazadera', 'Abrazadera de acero ajustable'),
('IT021', 'Broca 8mm', 'Broca de acero rápido de 8mm de diámetro'),
('IT022', 'Codo 90°', 'Codo de acero inoxidable de 90°'),
('IT023', 'Manóm', 'Manómetro de alta precisión para 0-10'),
('IT024', 'Aceite h', 'Aceite para sistemas hidra'),
('IT025', 'Tornillo M6', 'Tornillo de acero inoxidable M6'),
('IT026', 'Guante térmico', 'Guantes de protección térmica'),
('IT027', 'Filtro de agua', 'Filtro purificador de agua'),
('IT028', 'Conector RJ45', 'Conector para cable de red RJ45'),
('IT029', 'Adaptador USB', 'Adaptador USB tipo C a USB 3.0'),
('IT030', 'Panel solar', 'Panel solar fotovoltaico de 100W'),
('IT031', 'Ventilador ind.', 'Ventilador industrial de 18 pulgadas'),
('IT032', 'Batería 12V', 'Batería de plomo ácido de 12V y 7Ah'),
('IT033', 'Sierra circular', 'Disco de sierra circular para metal'),
('IT034', 'Cuerda nylon', 'Cuerda de nylon de 50m y 8mm de grosor'),
('IT035', 'Alambre', 'Alambre de cobre para conexión eléctrica');

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
(1, 'jperez', 'emppass1', 'R001'),
(2, 'asanchez', 'emppass2', 'R001'),
(3, 'cramirez', 'emppass3', 'R001'),
(4, 'mlopez', 'emppass4', 'R001'),
(5, 'lgonzalez', 'emppass5', 'R001'),
(6, 'prodriguez', 'emppass6', 'R003'),
(7, 'smoreno', 'emppass7', 'R003'),
(8, 'dsilva', 'emppass8', 'R003'),
(9, 'rfernandez', 'emppass9', 'R003'),
(10, 'cgutierrez', 'emppass10', 'R003'),
(11, 'lalvarez', 'emppass11', 'R003'),
(12, 'jmendoza', 'emppass12', 'R003'),
(13, 'cdominguez', 'emppass13', 'R003'),
(14, 'lgomez', 'emppass14', 'R003'),
(15, 'mjimenez', 'emppass15', 'R003'),
(16, 'arojas', 'emppass16', 'R002'),
(17, 'nquintero', 'emppass17', 'R002'),
(18, 'vfigueroa', 'emppass18', 'R002'),
(19, 'ebautista', 'emppass19', 'R002'),
(20, 'rnieto', 'emppass20', 'R002'),
(21, 'mmartinez', 'emppass21', 'R002'),
(22, 'lescobar', 'emppass22', 'R002'),
(23, 'dvargas', 'emppass23', 'R002'),
(24, 'onunez', 'emppass24', 'R002'),
(25, 'smendez', 'emppass25', 'R002'),
(26, 'pcruz', 'emppass26', 'R003'),
(27, 'gortega', 'emppass27', 'R003'),
(28, 'fmora', 'emppass28', 'R003'),
(29, 'aruiz', 'emppass29', 'R003'),
(30, 'cherrera', 'emppass30', 'R003'),
(31, 'psoto', 'emppass31', 'R003'),
(32, 'vmarquez', 'emppass32', 'R003'),
(33, 'iacosta', 'emppass33', 'R003'),
(34, 'cdelgado', 'emppass34', 'R003'),
(35, 'rjimenez', 'emppass35', 'R003'),
(36, 'mfuentes', 'emppass36', 'R003'),
(37, 'acampos', 'emppass37', 'R003'),
(38, 'rsalinas', 'emppass38', 'R003'),
(39, 'svillalobos', 'emppass39', 'R003'),
(40, 'azavala', 'emppass40', 'R003'),
(41, 'jgarcia', 'emppass41', 'R002'),
(42, 'vlopez', 'emppass42', 'R002'),
(43, 'mgomez', 'emppass43', 'R002'),
(44, 'opadilla', 'emppass44', 'R002'),
(45, 'tvargas', 'emppass45', 'R002'),
(46, 'gbautista', 'emppass46', 'R002'),
(47, 'spena', 'emppass47', 'R002'),
(48, 'pnuñez', 'emppass48', 'R002'),
(49, 'amorales', 'emppass49', 'R002'),
(50, 'fnavarro', 'emppass50', 'R002'),
(51, 'rlopez', 'emppass51', 'R002'),
(52, 'nesparza', 'emppass52', 'R002'),
(53, 'emartinez', 'emppass53', 'R002'),
(54, 'ldominguez', 'emppass54', 'R002'),
(55, 'rmaldonado', 'emppass55', 'R002'),
(56, 'ahernandez', 'clientpass1', 'R004'),
(57, 'lgomez', 'clientpass2', 'R004'),
(58, 'mfernandez', 'clientpass3', 'R004'),
(59, 'pmartinez', 'clientpass4', 'R004'),
(60, 'sruiz', 'clientpass5', 'R004'),
(61, 'csanchez', 'clientpass6', 'R004'),
(62, 'mlopez', 'clientpass7', 'R004'),
(63, 'fdiaz', 'clientpass8', 'R004'),
(64, 'ivega', 'clientpass9', 'R004'),
(65, 'jramos', 'clientpass10', 'R004'),
(66, 'rlopez', 'clientpass50', 'R004');


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
('ST002', 'Arandela 12mm', 25000, 'WH002'),
('ST003', 'Tuerca hexa M5', 20000, 'WH003'),
('ST004', 'Lubricante ind', 8000, 'WH004'),
('ST005', 'Filtro de aire', 12000, 'WH005'),
('ST006', 'Cinta adhesiva', 30000, 'WH001'),
('ST007', 'Caja de cartón', 5000, 'WH002'),
('ST008', 'Empaque burbuja', 4500, 'WH003'),
('ST009', 'Palet de madera', 1000, 'WH004'),
('ST010', 'Placa de acero', 800, 'WH005'),
('ST011', 'Resorte', 750, 'WH001'),
('ST012', 'Correa V', 1500, 'WH002'),
('ST013', 'Rueda 5in', 500, 'WH003'),
('ST014', 'Engranaje 20T', 1200, 'WH004'),
('ST015', 'Tubo PVC', 300, 'WH005'),
('ST016', 'Panel LED', 200, 'WH001'),
('ST017', 'Interruptor', 10000, 'WH002'),
('ST018', 'Cable 10m', 5000, 'WH003'),
('ST019', 'Rodamiento', 3000, 'WH004'),
('ST020', 'Abrazadera', 1500, 'WH005'),
('ST021', 'Broca 8mm', 7000, 'WH001'),
('ST022', 'Codo 90°', 3500, 'WH002'),
('ST023', 'Manóm', 800, 'WH003'),
('ST024', 'Aceite h', 6000, 'WH004'),
('ST025', 'Tornillo M6', 18000, 'WH005'),
('ST026', 'Guante térmico', 2500, 'WH001'),
('ST027', 'Filtro de agua', 5000, 'WH002'),
('ST028', 'Conector RJ45', 20000, 'WH003'),
('ST029', 'Adaptador USB', 1500, 'WH004'),
('ST030', 'Panel solar', 200, 'WH005'),
('ST031', 'Ventilador ind.', 800, 'WH001'),
('ST032', 'Batería 12V', 1200, 'WH002'),
('ST033', 'Sierra circular', 400, 'WH003'),
('ST034', 'Cuerda nylon', 7500, 'WH004'),
('ST035', 'Alambre C', 6000, 'WH005');

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
(1, 'Jose', 'Perez', 'Garcia', 'R001', 1, 'jperez', 'emppass1', NULL, 'WH001'),
(2, 'Ana', 'Sanchez', 'Lopez', 'R001', 2, 'asanchez', 'emppass2', NULL, 'WH002'),
(3, 'Carlos', 'Ramirez', 'Diaz', 'R001', 3, 'cramirez', 'emppass3', NULL, 'WH003'),
(4, 'Marta', 'Lopez', 'Reyes', 'R001', 4, 'mlopez', 'emppass4', NULL, 'WH004'),
(5, 'Luis', 'Gonzalez', 'Rojas', 'R001', 5, 'lgonzalez', 'emppass5', NULL, 'WH005'),
(6, 'Paula', 'Rodriguez', 'Mendez', 'R003', 6, 'prodriguez', 'emppass6', NULL, 'WH001'),
(7, 'Santiago', 'Moreno', 'Perez', 'R003', 7, 'smoreno', 'emppass7', NULL, 'WH001'),
(8, 'Diana', 'Silva', 'Castillo', 'R003', 8, 'dsilva', 'emppass8', NULL, 'WH001'),
(9, 'Rafael', 'Fernandez', 'Cruz', 'R003', 9, 'rfernandez', 'emppass9', NULL, 'WH001'),
(10, 'Carmen', 'Gutierrez', 'Salazar', 'R003', 10, 'cgutierrez', 'emppass10', NULL, 'WH001'),
(11, 'Laura', 'Alvarez', 'Morales', 'R003', 11, 'lalvarez', 'emppass11', NULL, 'WH002'),
(12, 'Juan', 'Mendoza', 'Lopez', 'R003', 12, 'jmendoza', 'emppass12', NULL, 'WH002'),
(13, 'Carlos', 'Dominguez', 'Ruiz', 'R003', 13, 'cdominguez', 'emppass13', NULL, 'WH002'),
(14, 'Lucia', 'Gomez', 'Herrera', 'R003', 14, 'lgomez', 'emppass14', NULL, 'WH002'),
(15, 'Mario', 'Jimenez', 'Ortega', 'R003', 15, 'mjimenez', 'emppass15', NULL, 'WH002'),
(16, 'Andres', 'Rojas', 'Castro', 'R002', 16, 'arojas', 'emppass16', NULL, 'WH001'),
(17, 'Nora', 'Quintero', 'Vargas', 'R002', 17, 'nquintero', 'emppass17', NULL, 'WH001'),
(18, 'Victor', 'Figueroa', 'Paz', 'R002', 18, 'vfigueroa', 'emppass18', NULL, 'WH001'),
(19, 'Elena', 'Bautista', 'Solis', 'R002', 19, 'ebautista', 'emppass19', NULL, 'WH001'),
(20, 'Raul', 'Nieto', 'Pineda', 'R002', 20, 'rnieto', 'emppass20', NULL, 'WH001'),
(21, 'Maria', 'Martinez', 'Chavez', 'R002', 21, 'mmartinez', 'emppass21', NULL, 'WH002'),
(22, 'Luis', 'Escobar', 'Martinez', 'R002', 22, 'lescobar', 'emppass22', NULL, 'WH002'),
(23, 'Daniela', 'Vargas', 'Soto', 'R002', 23, 'dvargas', 'emppass23', NULL, 'WH002'),
(24, 'Oscar', 'Nunez', 'Fuentes', 'R002', 24, 'onunez', 'emppass24', NULL, 'WH002'),
(25, 'Sandra', 'Mendez', 'Gomez', 'R002', 25, 'smendez', 'emppass25', NULL, 'WH002'),
(26, 'Patricia', 'Cruz', 'Hernandez', 'R003', 26, 'pcruz', 'emppass26', NULL, 'WH003'),
(27, 'Gabriel', 'Ortega', 'Vargas', 'R003', 27, 'gortega', 'emppass27', NULL, 'WH003'),
(28, 'Fernando', 'Mora', 'Ruiz', 'R003', 28, 'fmora', 'emppass28', NULL, 'WH003'),
(29, 'Adriana', 'Ruiz', 'Lopez', 'R003', 29, 'aruiz', 'emppass29', NULL, 'WH003'),
(30, 'Cesar', 'Herrera', 'Santos', 'R003', 30, 'cherrera', 'emppass30', NULL, 'WH003'),
(31, 'Pablo', 'Soto', 'Nava', 'R003', 31, 'psoto', 'emppass31', NULL, 'WH004'),
(32, 'Valeria', 'Marquez', 'Duran', 'R003', 32, 'vmarquez', 'emppass32', NULL, 'WH004'),
(33, 'Ivan', 'Acosta', 'Campos', 'R003', 33, 'iacosta', 'emppass33', NULL, 'WH004'),
(34, 'Claudia', 'Delgado', 'Perez', 'R003', 34, 'cdelgado', 'emppass34', NULL, 'WH004'),
(35, 'Rosa', 'Jimenez', 'Ortiz', 'R003', 35, 'rjimenez', 'emppass35', NULL, 'WH004'),
(36, 'Miguel', 'Fuentes', 'Lara', 'R003', 36, 'mfuentes', 'emppass36', NULL, 'WH005'),
(37, 'Angela', 'Campos', 'Pineda', 'R003', 37, 'acampos', 'emppass37', NULL, 'WH005'),
(38, 'Ricardo', 'Salinas', 'Lozano', 'R003', 38, 'rsalinas', 'emppass38', NULL, 'WH005'),
(39, 'Sonia', 'Villalobos', 'Castro', 'R003', 39, 'svillalobos', 'emppass39', NULL, 'WH005'),
(40, 'Alberto', 'Zavala', 'Gonzalez', 'R003', 40, 'azavala', 'emppass40', NULL, 'WH005'),
(41, 'Julia', 'Garcia', 'Montoya', 'R002', 41, 'jgarcia', 'emppass41', NULL, 'WH003'),
(42, 'Victor', 'Lopez', 'Zamora', 'R002', 42, 'vlopez', 'emppass42', NULL, 'WH003'),
(43, 'Marisol', 'Gomez', 'Beltran', 'R002', 43, 'mgomez', 'emppass43', NULL, 'WH003'),
(44, 'Omar', 'Padilla', 'Valencia', 'R002', 44, 'opadilla', 'emppass44', NULL, 'WH003'),
(45, 'Teresa', 'Vargas', 'Mendoza', 'R002', 45, 'tvargas', 'emppass45', NULL, 'WH003'),
(46, 'Guillermo', 'Bautista', 'Ortega', 'R002', 46, 'gbautista', 'emppass46', NULL, 'WH004'),
(47, 'Silvia', 'Peña', 'Huerta', 'R002', 47, 'spena', 'emppass47', NULL, 'WH004'),
(48, 'Pedro', 'Nuñez', 'Lima', 'R002', 48, 'pnuñez', 'emppass48', NULL, 'WH004'),
(49, 'Andrea', 'Morales', 'Arenas', 'R002', 49, 'amorales', 'emppass49', NULL, 'WH004'),
(50, 'Francisco', 'Navarro', 'Quintero', 'R002', 50, 'fnavarro', 'emppass50', NULL, 'WH004'),
(51, 'Ruben', 'Lopez', 'Ibarra', 'R002', 51, 'rlopez', 'emppass51', NULL, 'WH005'),
(52, 'Nadia', 'Esparza', 'Ponce', 'R002', 52, 'nesparza', 'emppass52', NULL, 'WH005'),
(53, 'Enrique', 'Martinez', 'Segovia', 'R002', 53, 'emartinez', 'emppass53', NULL, 'WH005'),
(54, 'Luz', 'Dominguez', 'Paredes', 'R002', 54, 'ldominguez', 'emppass54', NULL, 'WH005'),
(55, 'Rosa', 'Maldonado', 'Valdez', 'R002', 55, 'rmaldonado', 'emppass55', NULL, 'WH005');

INSERT INTO Vehicle_Assignment (vehicle_number, employee_num, assigned_date) VALUES 
(6, 1, '2024-10-15');

INSERT INTO Shipment (num, date, delivery_date, client, incident, vehicle, path, insurance, warehouse) VALUES 
(1, '2024-10-05', '2024-10-08', 1, 1, 1, 1, 1, 'WH001'),
(2, '2024-10-06', '2024-10-09', 2, 2, 2, 2, 2, 'WH002'),
(3, '2024-10-07', '2024-10-10', 3, 3, 3, 3, 3, 'WH003'),
(4, '2024-10-08', '2024-10-11', 4, 4, 4, 4, 4, 'WH004'),
(5, '2024-10-09', '2024-10-12', 5, 5, 5, 5, 5, 'WH005'),
(6, '2024-10-10', '2024-10-13', 6, 6, 6, 6, 6, 'WH001'),
(7, '2024-10-11', '2024-10-14', 7, 7, 7, 7, 7, 'WH002'),
(8, '2024-10-12', '2024-10-15', 8, 8, 8, 8, 8, 'WH003'),
(9, '2024-10-13', '2024-10-16', 9, 9, 9, 9, 9, 'WH004'),
(10, '2024-10-14', '2024-10-17', 10, 10, 10, 10, 10, 'WH005'),
(11, '2024-11-01', '2024-11-05', 11, 11, 11, 1, 1, 'WH001'),
(12, '2024-10-15', '2024-10-18', 1, 1, 12, 2, 2, 'WH002'),
(13, '2024-10-16', '2024-10-19', 2, NULL, NULL, NULL, 3, 'WH003'),
(14, '2024-10-17', '2024-10-20', 3, NULL, NULL, NULL, 4, 'WH004'),
(15, '2024-10-18', '2024-10-21', 4, NULL, NULL, NULL, 5, 'WH005'),
(16, '2024-10-19', '2024-10-22', 5, NULL, NULL, NULL, 6, 'WH001'),
(17, '2024-10-20', '2024-10-23', 6, NULL, NULL, NULL, 7, 'WH002'),
(18, '2024-10-21', '2024-10-24', 7, NULL, NULL, NULL, 8, 'WH003'),
(19, '2024-10-22', '2024-10-25', 8, NULL, NULL, NULL, 9, 'WH004'),
(20, '2024-10-23', '2024-10-26', 9, NULL, NULL, NULL, 10, 'WH005'),
(21, '2024-10-24', '2024-10-27', 10, NULL, NULL, NULL, 1, 'WH001'),
(22, '2024-10-25', '2024-10-28', 11, NULL, NULL, NULL, 2, 'WH002'),
(23, '2024-10-26', '2024-10-29', 1, NULL, NULL, NULL, 3, 'WH003'),
(24, '2024-10-27', '2024-10-30', 2, NULL, NULL, NULL, 4, 'WH004'),
(25, '2024-10-28', '2024-10-31', 3, NULL, NULL, NULL, 5, 'WH005'),
(26, '2024-10-29', '2024-11-01', 4, NULL, NULL, NULL, 6, 'WH001'),
(27, '2024-10-30', '2024-11-02', 5, NULL, NULL, NULL, 7, 'WH002'),
(28, '2024-10-31', '2024-11-03', 6, NULL, NULL, NULL, 8, 'WH003'),
(29, '2024-11-01', '2024-11-04', 7, NULL, NULL, NULL, 9, 'WH004'),
(30, '2024-11-02', '2024-11-05', 8, NULL, NULL, NULL, 10, 'WH005'),
(31, '2024-11-03', '2024-11-06', 9, NULL, NULL, NULL, 1, 'WH001'),
(32, '2024-11-04', '2024-11-07', 10, NULL, NULL, NULL, 2, 'WH002'),
(33, '2024-11-05', '2024-11-08', 11, NULL, NULL, NULL, 3, 'WH003'),
(34, '2024-11-06', '2024-11-09', 1, NULL, NULL, NULL, 4, 'WH004'),
(35, '2024-11-07', '2024-11-10', 2, NULL, NULL, NULL, 5, 'WH005'),
(36, '2024-11-08', '2024-11-11', 3, NULL, NULL, NULL, 6, 'WH001'),
(37, '2024-11-09', '2024-11-12', 4, NULL, NULL, NULL, 7, 'WH002'),
(38, '2024-11-10', '2024-11-13', 5, NULL, NULL, NULL, 8, 'WH003'),
(39, '2024-11-11', '2024-11-14', 6, NULL, NULL, NULL, 9, 'WH004'),
(40, '2024-11-12', '2024-11-15', 7, NULL, NULL, NULL, 10, 'WH005'),
(41, '2024-11-13', '2024-11-16', 8, NULL, NULL, NULL, 1, 'WH001'),
(42, '2024-11-14', '2024-11-17', 9, NULL, NULL, NULL, 2, 'WH002'),
(43, '2024-11-15', '2024-11-18', 10, NULL, NULL, NULL, 3, 'WH003'),
(44, '2024-11-16', '2024-11-19', 11, NULL, NULL, NULL, 4, 'WH004'),
(45, '2024-11-17', '2024-11-20', 1, NULL, NULL, NULL, 5, 'WH005'),
(46, '2024-11-18', '2024-11-21', 2, NULL, NULL, NULL, 6, 'WH001'),
(47, '2024-11-19', '2024-11-22', 3, NULL, NULL, NULL, 7, 'WH002'),
(48, '2024-11-20', '2024-11-23', 4, NULL, NULL, NULL, 8, 'WH003'),
(49, '2024-11-21', '2024-11-24', 5, NULL, NULL, NULL, 9, 'WH004'),
(50, '2024-11-22', '2024-11-25', 6, NULL, NULL, NULL, 10, 'WH005'),
(51, '2024-11-23', '2024-11-26', 7, NULL, NULL, NULL, 1, 'WH001'),
(52, '2024-11-24', '2024-11-27', 8, NULL, NULL, NULL, 2, 'WH002'),
(53, '2024-11-25', '2024-11-28', 9, NULL, NULL, NULL, 3, 'WH003'),
(54, '2024-11-26', '2024-11-29', 10, NULL, NULL, NULL, 4, 'WH004'),
(55, '2024-11-27', '2024-11-30', 11, NULL, NULL, NULL, 5, 'WH005'),
(56, '2024-11-28', '2024-12-01', 1, NULL, NULL, NULL, 6, 'WH001'),
(57, '2024-11-29', '2024-12-02', 2, NULL, NULL, NULL, 7, 'WH002'),
(58, '2024-11-30', '2024-12-03', 3, NULL, NULL, NULL, 8, 'WH003'),
(59, '2024-12-01', '2024-12-04', 4, NULL, NULL, NULL, 9, 'WH004'),
(60, '2024-12-02', '2024-12-05', 5, NULL, NULL, NULL, 10, 'WH005');



INSERT INTO Record (date, location, status, client, shipment) VALUES

('2024-10-05', 'Almacén Principal', 'Pedido Realizado', 1, 1),
('2024-10-06', 'Almacén Principal', 'En Proceso', 1, 1),
('2024-10-07', 'Almacén M Prima', 'En Tránsito', 1, 1),
('2024-10-08', 'Almacén Principal', 'Entregado', 1, 1),

('2024-10-17', 'Almacén Principal', 'Pedido Realizado', 2, 2),
('2024-10-18', 'Almacén Principal', 'En Proceso', 2, 2),

('2024-10-06', 'Almacén M Prima', 'Pedido Realizado', 3, 3),
('2024-10-07', 'Almacén M Prima', 'En Proceso', 3, 3),
('2024-10-08', 'Almacén Producto', 'En Tránsito', 3, 3),
('2024-10-09', 'Almacén M Prima', 'Entregado', 3, 3),

('2024-10-18', 'Almacén Refacciones', 'Pedido Realizado', 4, 4),
('2024-10-19', 'Almacén Refacciones', 'En Proceso', 4, 4),

('2024-10-07', 'Almacén Producto', 'Pedido Realizado', 5, 5),
('2024-10-08', 'Almacén Producto', 'En Proceso', 5, 5),
('2024-10-09', 'Almacén Refacciones', 'En Tránsito', 5, 5),
('2024-10-10', 'Almacén Producto', 'Entregado', 5, 5),

('2024-10-19', 'Almacén Principal', 'Pedido Realizado', 6, 6),
('2024-10-20', 'Almacén Principal', 'En Proceso', 6, 6),

('2024-10-08', 'Almacén Refacciones', 'Pedido Realizado', 7, 7),
('2024-10-09', 'Almacén Refacciones', 'En Proceso', 7, 7),
('2024-10-10', 'Almacén Empaque', 'En Tránsito', 7, 7),
('2024-10-11', 'Almacén Refacciones', 'Entregado', 7, 7),

('2024-10-20', 'Almacén Producto', 'Pedido Realizado', 8, 8),
('2024-10-21', 'Almacén Producto', 'En Proceso', 8, 8),

('2024-10-09', 'Almacén Empaque', 'Pedido Realizado', 9, 9),
('2024-10-10', 'Almacén Empaque', 'En Proceso', 9, 9),
('2024-10-11', 'Almacén Principal', 'En Tránsito', 9, 9),
('2024-10-12', 'Almacén Empaque', 'Entregado', 9, 9),

('2024-10-21', 'Almacén Refacciones', 'Pedido Realizado', 10, 10),
('2024-10-22', 'Almacén Refacciones', 'En Proceso', 10, 10),

('2024-10-10', 'Almacén Principal', 'Pedido Realizado', 11, 11),
('2024-10-11', 'Almacén Principal', 'En Proceso', 11, 11),
('2024-10-12', 'Almacén M Prima', 'En Tránsito', 11, 11),
('2024-10-13', 'Almacén Principal', 'Entregado', 11, 11),

('2024-10-22', 'Almacén Refacciones', 'Pedido Realizado', 1, 12),
('2024-10-23', 'Almacén Refacciones', 'En Proceso', 1, 12),

('2024-10-11', 'Almacén M Prima', 'Pedido Realizado', 2, 13),
('2024-10-12', 'Almacén M Prima', 'En Proceso', 2, 13),
('2024-10-13', 'Almacén Producto', 'En Tránsito', 2, 13),
('2024-10-14', 'Almacén MateriaP', 'Entregado', 2, 13),

('2024-10-23', 'Almacén Principal', 'Pedido Realizado', 3, 14),
('2024-10-24', 'Almacén Principal', 'En Proceso', 3, 14),

('2024-10-12', 'Almacén Producto', 'Pedido Realizado', 4, 15),
('2024-10-13', 'Almacén Producto', 'En Proceso', 4, 15),
('2024-10-14', 'Almacén Refacciones', 'En Tránsito', 4, 15),
('2024-10-15', 'Almacén Producto', 'Entregado', 4, 15),

('2024-10-24', 'Almacén Principal', 'Pedido Realizado', 5, 16),
('2024-10-25', 'Almacén Principal', 'En Proceso', 5, 16),

('2024-10-13', 'Almacén Refacciones', 'Pedido Realizado', 6, 17),
('2024-10-14', 'Almacén Refacciones', 'En Proceso', 6, 17),
('2024-10-15', 'Almacén Empaque', 'En Tránsito', 6, 17),
('2024-10-16', 'Almacén Refacciones', 'Entregado', 6, 17),

('2024-10-27', 'Almacén M Prima', 'Pedido Realizado', 7, 18),
('2024-10-28', 'Almacén M Prima', 'En Proceso', 7, 18),

('2024-10-14', 'Almacén Empaque', 'Pedido Realizado', 8, 19),
('2024-10-15', 'Almacén Empaque', 'En Proceso', 8, 19),
('2024-10-16', 'Almacén Principal', 'En Tránsito', 8, 19),
('2024-10-17', 'Almacén Empaque', 'Entregado', 8, 19),

('2024-10-26', 'Almacén Refacciones', 'Pedido Realizado', 9, 20),
('2024-10-27', 'Almacén Refacciones', 'En Proceso', 9, 20),

('2024-11-01', 'Almacén Principal', 'Pedido Realizado', 10, 21),
('2024-11-02', 'Almacén Principal', 'En Proceso', 10, 21),
('2024-11-03', 'Almacén M Prima', 'En Tránsito', 10, 21),
('2024-11-04', 'Almacén Principal', 'Entregado', 10, 21),

('2024-11-13', 'Almacén Refacciones', 'Pedido Realizado', 11, 22),
('2024-11-14', 'Almacén Refacciones', 'En Proceso', 11, 22),

('2024-10-23', 'Almacén Principal', 'Pedido Realizado', 1, 23),
('2024-10-24', 'Almacén Principal', 'Pedido Realizado', 2, 24),
('2024-10-25', 'Almacén Principal', 'Pedido Realizado', 3, 25),
('2024-10-26', 'Almacén Principal', 'Pedido Realizado', 4, 26),
('2024-10-27', 'Almacén Principal', 'Pedido Realizado', 5, 27),
('2024-10-28', 'Almacén Principal', 'Pedido Realizado', 6, 28),
('2024-10-29', 'Almacén Principal', 'Pedido Realizado', 7, 29),
('2024-10-30', 'Almacén Principal', 'Pedido Realizado', 8, 30),
('2024-10-31', 'Almacén Principal', 'Pedido Realizado', 9, 31),
('2024-11-01', 'Almacén Principal', 'Pedido Realizado', 10, 32),
('2024-11-02', 'Almacén Principal', 'Pedido Realizado', 11, 33),
('2024-11-03', 'Almacén Principal', 'Pedido Realizado', 1, 34),
('2024-11-04', 'Almacén Principal', 'Pedido Realizado', 2, 35),
('2024-11-05', 'Almacén Principal', 'Pedido Realizado', 3, 36),
('2024-11-06', 'Almacén Principal', 'Pedido Realizado', 4, 37),
('2024-11-07', 'Almacén Principal', 'Pedido Realizado', 5, 38),
('2024-11-08', 'Almacén Principal', 'Pedido Realizado', 6, 39),
('2024-11-09', 'Almacén Principal', 'Pedido Realizado', 7, 40),
('2024-11-10', 'Almacén Principal', 'Pedido Realizado', 8, 41),
('2024-11-11', 'Almacén Principal', 'Pedido Realizado', 9, 42),
('2024-11-12', 'Almacén Principal', 'Pedido Realizado', 10, 43),
('2024-11-13', 'Almacén Principal', 'Pedido Realizado', 11, 44),
('2024-11-14', 'Almacén Principal', 'Pedido Realizado', 1, 45),
('2024-11-15', 'Almacén Principal', 'Pedido Realizado', 2, 46),
('2024-11-16', 'Almacén Principal', 'Pedido Realizado', 3, 47),
('2024-11-17', 'Almacén Principal', 'Pedido Realizado', 4, 48),
('2024-11-18', 'Almacén Principal', 'Pedido Realizado', 5, 49),
('2024-11-19', 'Almacén Principal', 'Pedido Realizado', 6, 50),
('2024-11-20', 'Almacén Principal', 'Pedido Realizado', 7, 51),
('2024-11-21', 'Almacén Principal', 'Pedido Realizado', 8, 52),
('2024-11-22', 'Almacén Principal', 'Pedido Realizado', 9, 53),
('2024-11-23', 'Almacén Principal', 'Pedido Realizado', 10, 54),
('2024-11-24', 'Almacén Principal', 'Pedido Realizado', 11, 55),
('2024-11-25', 'Almacén Principal', 'Pedido Realizado', 1, 56),
('2024-11-26', 'Almacén Principal', 'Pedido Realizado', 2, 57),
('2024-11-27', 'Almacén Principal', 'Pedido Realizado', 3, 58),
('2024-11-28', 'Almacén Principal', 'Pedido Realizado', 4, 59),
('2024-11-29', 'Almacén Principal', 'Pedido Realizado', 5, 60);

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
(1, 'IT002'),
(1, 'IT003'),
(1, 'IT004'),
(1, 'IT005'),
(2, 'IT002'),
(2, 'IT003'),
(2, 'IT006'),
(2, 'IT007'),
(2, 'IT008'),
(3, 'IT004'),
(3, 'IT005'),
(3, 'IT009'),
(3, 'IT010'),
(3, 'IT011'),
(4, 'IT001'),
(4, 'IT003'),
(4, 'IT005'),
(4, 'IT006'),
(4, 'IT007'),
(5, 'IT002'),
(5, 'IT004'),
(5, 'IT006'),
(5, 'IT009'),
(5, 'IT011'),
(6, 'IT001'),
(6, 'IT005'),
(6, 'IT006'),
(6, 'IT008'),
(6, 'IT010'),
(7, 'IT003'),
(7, 'IT005'),
(7, 'IT007'),
(7, 'IT008'),
(7, 'IT011'),
(8, 'IT002'),
(8, 'IT004'),
(8, 'IT007'),
(8, 'IT009'),
(8, 'IT010'),
(9, 'IT001'),
(9, 'IT003'),
(9, 'IT004'),
(9, 'IT006'),
(9, 'IT011'),
(10, 'IT002'),
(10, 'IT003'),
(10, 'IT004'),
(10, 'IT006'),
(10, 'IT009'),
(11, 'IT001'),
(11, 'IT005'),
(11, 'IT006'),
(11, 'IT007'),
(11, 'IT010'),
(12, 'IT002'),
(12, 'IT004'),
(12, 'IT005'),
(12, 'IT008'),
(12, 'IT011'),
(13, 'IT001'),
(13, 'IT003'),
(13, 'IT007'),
(13, 'IT009'),
(13, 'IT010'),
(14, 'IT002'),
(14, 'IT005'),
(14, 'IT006'),
(14, 'IT008'),
(14, 'IT011'),
(15, 'IT001'),
(15, 'IT004'),
(15, 'IT007'),
(15, 'IT009'),
(15, 'IT010'),
(16, 'IT002'),
(16, 'IT003'),
(16, 'IT004'),
(16, 'IT006'),
(16, 'IT011'),
(17, 'IT001'),
(17, 'IT003'),
(17, 'IT005'),
(17, 'IT008'),
(17, 'IT010'),
(18, 'IT002'),
(18, 'IT006'),
(18, 'IT007'),
(18, 'IT009'),
(18, 'IT011'),
(19, 'IT001'),
(19, 'IT004'),
(19, 'IT005'),
(19, 'IT008'),
(19, 'IT010'),
(20, 'IT003'),
(20, 'IT004'),
(20, 'IT006'),
(20, 'IT009'),
(20, 'IT011'),
(21, 'IT001'),
(21, 'IT004'),
(21, 'IT005'),
(21, 'IT007'),
(21, 'IT010'),
(22, 'IT002'),
(22, 'IT003'),
(22, 'IT006'),
(22, 'IT008'),
(22, 'IT011'),
(23, 'IT001'),
(23, 'IT003'),
(23, 'IT004'),
(23, 'IT009'),
(23, 'IT010'),
(24, 'IT002'),
(24, 'IT005'),
(24, 'IT006'),
(24, 'IT008'),
(24, 'IT009'),
(25, 'IT001'),
(25, 'IT002'),
(25, 'IT005'),
(25, 'IT007'),
(25, 'IT011'),
(26, 'IT003'),
(26, 'IT004'),
(26, 'IT008'),
(26, 'IT009'),
(26, 'IT010'),
(27, 'IT001'),
(27, 'IT004'),
(27, 'IT006'),
(27, 'IT008'),
(27, 'IT011'),
(28, 'IT002'),
(28, 'IT005'),
(28, 'IT007'),
(28, 'IT009'),
(28, 'IT010'),
(29, 'IT003'),
(29, 'IT005'),
(29, 'IT006'),
(29, 'IT008'),
(29, 'IT011'),
(30, 'IT001'),
(30, 'IT002'),
(30, 'IT004'),
(30, 'IT007'),
(30, 'IT010'),
(31, 'IT003'),
(31, 'IT006'),
(31, 'IT007'),
(31, 'IT009'),
(31, 'IT011'),
(32, 'IT002'),
(32, 'IT004'),
(32, 'IT005'),
(32, 'IT008'),
(32, 'IT010'),
(33, 'IT001'),
(33, 'IT003'),
(33, 'IT006'),
(33, 'IT007'),
(33, 'IT009'),
(34, 'IT002'),
(34, 'IT005'),
(34, 'IT008'),
(34, 'IT010'),
(34, 'IT011'),
(35, 'IT001'),
(35, 'IT004'),
(35, 'IT006'),
(35, 'IT009'),
(35, 'IT010'),
(36, 'IT002'),
(36, 'IT003'),
(36, 'IT007'),
(36, 'IT008'),
(36, 'IT011'),
(37, 'IT001'),
(37, 'IT005'),
(37, 'IT006'),
(37, 'IT009'),
(37, 'IT010'),
(38, 'IT003'),
(38, 'IT004'),
(38, 'IT005'),
(38, 'IT008'),
(38, 'IT011'),
(39, 'IT002'),
(39, 'IT003'),
(39, 'IT006'),
(39, 'IT009'),
(39, 'IT010'),
(40, 'IT001'),
(40, 'IT004'),
(40, 'IT007'),
(40, 'IT008'),
(40, 'IT011'),
(41, 'IT002'),
(41, 'IT003'),
(41, 'IT005'),
(41, 'IT009'),
(41, 'IT010'),
(42, 'IT001'),
(42, 'IT004'),
(42, 'IT006'),
(42, 'IT008'),
(42, 'IT011'),
(43, 'IT002'),
(43, 'IT005'),
(43, 'IT007'),
(43, 'IT009'),
(43, 'IT010'),
(44, 'IT003'),
(44, 'IT004'),
(44, 'IT006'),
(44, 'IT008'),
(44, 'IT011'),
(45, 'IT001'),
(45, 'IT003'),
(45, 'IT005'),
(45, 'IT007'),
(45, 'IT010'),
(46, 'IT002'),
(46, 'IT004'),
(46, 'IT006'),
(46, 'IT008'),
(46, 'IT011'),
(47, 'IT003'),
(47, 'IT005'),
(47, 'IT007'),
(47, 'IT009'),
(47, 'IT010'),
(48, 'IT001'),
(48, 'IT004'),
(48, 'IT006'),
(48, 'IT008'),
(48, 'IT011'),
(49, 'IT002'),
(49, 'IT003'),
(49, 'IT005'),
(49, 'IT009'),
(49, 'IT010'),
(50, 'IT001'),
(50, 'IT004'),
(50, 'IT006'),
(50, 'IT007'),
(50, 'IT011'),
(51, 'IT002'),
(51, 'IT003'),
(51, 'IT005'),
(51, 'IT008'),
(51, 'IT010'),
(52, 'IT001'),
(52, 'IT004'),
(52, 'IT006'),
(52, 'IT007'),
(52, 'IT009'),
(53, 'IT002'),
(53, 'IT005'),
(53, 'IT008'),
(53, 'IT010'),
(53, 'IT011'),
(54, 'IT001'),
(54, 'IT003'),
(54, 'IT006'),
(54, 'IT007'),
(54, 'IT010'),
(55, 'IT002'),
(55, 'IT004'),
(55, 'IT005'),
(55, 'IT008'),
(55, 'IT009'),
(56, 'IT001'),
(56, 'IT003'),
(56, 'IT006'),
(56, 'IT007'),
(56, 'IT011'),
(57, 'IT002'),
(57, 'IT004'),
(57, 'IT005'),
(57, 'IT008'),
(57, 'IT009'),
(58, 'IT001'),
(58, 'IT003'),
(58, 'IT006'),
(58, 'IT010'),
(58, 'IT011'),
(59, 'IT002'),
(59, 'IT004'),
(59, 'IT007'),
(59, 'IT008'),
(59, 'IT010'),
(60, 'IT001'),
(60, 'IT005'),
(60, 'IT006'),
(60, 'IT009'),
(60, 'IT011');

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


