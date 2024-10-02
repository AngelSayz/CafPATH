/*datos*/
INSERT INTO Path (starting_point, end_point, est_arrival, starting_date) 
VALUES ('Madrid', 'Barcelona', '2024-10-05', '2024-10-01'),
       ('Sevilla', 'Valencia', '2024-11-10', '2024-11-05'),
       ('Bilbao', 'Malaga', '2024-12-15', '2024-12-10');

INSERT INTO Warehouse (code, name, street, colony, number)
VALUES ('WH001', 'Main Warehouse', 'Calle 1', 'Colonia A', '101'),
       ('WH002', 'Secondary Warehouse', 'Calle 2', 'Colonia B', '202'),
       ('WH003', 'Backup Warehouse', 'Calle 3', 'Colonia C', '303');

INSERT INTO Item (code, name, description) 
VALUES ('IT001', 'Laptop', '15 inch gaming laptop'),
       ('IT002', 'Phone', 'Latest model smartphone'),
       ('IT003', 'Monitor', '24 inch 4K monitor');

INSERT INTO Insurance (policyNumber, insurance_type, coverage)
VALUES ('POL001', 'Full Coverage', 10000.00),
       ('POL002', 'Partial Coverage', 5000.00),
       ('POL003', 'Liability Only', 2000.00);

INSERT INTO role (code, name, privileges)
VALUES ('RL001', 'Admin', 'all_access'),
       ('RL002', 'Manager', 'view,edit'),
       ('RL003', 'User', 'view');

INSERT INTO User (username, password, role)
VALUES ('admin01', 'password123', 'RL001'),
       ('manager01', 'pass456', 'RL002'),
       ('user01', 'pass789', 'RL003');

INSERT INTO Client (name, lastname, surname, company, phone, street, colony, number, user)
VALUES ('Juan', 'Perez', 'Lopez', 'TechCorp', '555-1234', 'Calle 10', 'Colonia D', '100', 1),
       ('Ana', 'Garcia', 'Mendez', 'Innova', '555-5678', 'Calle 20', 'Colonia E', '200', 2),
       ('Luis', 'Hernandez', 'Ortiz', 'Transportes', '555-9876', 'Calle 30', 'Colonia F', '300', 3);

INSERT INTO Stock (code, name, amount, warehouse)
VALUES ('ST001', 'Electronics', 50, 'WH001'),
       ('ST002', 'Furniture', 20, 'WH002'),
       ('ST003', 'Appliances', 100, 'WH003');

INSERT INTO Incident (description, date, user)
VALUES ('Minor damage during transit', '2024-09-10', 1),
       ('Package lost', '2024-08-25', 2),
       ('Late delivery', '2024-07-15', 3);

INSERT INTO Vehicle (license_plate, model, max_capacity, path, warehouse)
VALUES ('ABC123', 'Truck Model A', 2000.00, 1, 'WH001'),
       ('XYZ789', 'Truck Model B', 3000.00, 2, 'WH002'),
       ('LMN456', 'Truck Model C', 1500.00, 3, 'WH003');

INSERT INTO Employees (name, lastname, surname, position, user, vehicle, warehouse)
VALUES ('Carlos', 'Gomez', 'Sanchez', 'Driver', 1, 1, 'WH001'),
       ('Maria', 'Lopez', 'Diaz', 'Operator', 2, 2, 'WH002'),
       ('Jose', 'Ramirez', 'Martinez', 'Supervisor', 3, 3, 'WH003');

INSERT INTO Shipment (date, delivery_date, client, incident, vehicle, path, insurance)
VALUES ('2024-10-01', '2024-10-05', 1, 1, 1, 1, 1),
       ('2024-11-05', '2024-11-10', 2, 2, 2, 2, 2),
       ('2024-12-10', '2024-12-15', 3, 3, 3, 3, 3);

INSERT INTO Record (date, location, status, shipment)
VALUES ('2024-10-01', 'Madrid', 'In Transit', 1),
       ('2024-11-06', 'Sevilla', 'Delayed', 2),
       ('2024-12-11', 'Bilbao', 'Delivered', 3);

INSERT INTO Assamble (employees, shipment)
VALUES (1, 1),
       (2, 2),
       (3, 3);

INSERT INTO Package (shipment, item)
VALUES (1, 'IT001'),
       (2, 'IT002'),
       (3, 'IT003');

INSERT INTO Inventory (stock, item)
VALUES ('ST001', 'IT001'),
       ('ST002', 'IT002'),
       ('ST003', 'IT003');