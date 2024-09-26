CREATE DATABASE IF NOT EXISTS CAFPATH;

USE DATABASE CAFPATH;

CREATE TABLE IF NOT EXISTS Path (
    num int primary key auto_increment, 
    starting_point varchar(30) not null,
    end_point varchar(30) not null,
    est_arrival date not null,
    starting_date date not null
);

CREATE TABLE IF NOT EXISTS Warehouse (
    code varchar(6) primary key,
    name varchar(30) not null,
    street varchar(20) not null,
    colony varchar(20) not null,
    number varchar(20) not null
);

CREATE TABLE IF NOT EXISTS Item (
    code VARCHAR(6) primary key,
    name varchar(15) not null,
    description varchar(40)
);

CREATE TABLE IF NOT EXISTS Insurance (
    num int primary key auto_increment,
    policyNumber varchar(20) not null,
    insurance_type VARCHAR(50),
    coverage decimal(10,2)
);
CREATE TABLE IF NOT EXISTS role (
    code varchar(6) primary key,
    name varchar(20) not null,
    privileges varchar(50) not null
);
CREATE TABLE IF NOT EXISTS User (
    num INT primary key auto_increment,
    username varchar(20) not null,
    password varchar(20) not null,
    role varchar(6) not null,
    FOREIGN KEY (role) REFERENCES role(code)
);

CREATE TABLE IF NOT EXISTS Client (
    num INT primary key auto_increment,
    name varchar(20) not null,
    lastname varchar(20) not null,
    surname varchar(20),
    company varchar(20),
    phone varchar(15),
    street varchar(15),
    colony varchar(15),
    number varchar(15),
    user int not null,
    FOREIGN KEY (user) REFERENCES user(num)
);

CREATE TABLE IF NOT EXISTS Stock (
    code VARCHAR(6) primary key,
    name VARCHAR(15),
    amount int not null,
    warehouse varchar(6),
    FOREIGN key (warehouse) REFERENCES warehouse(code)
);

CREATE TABLE IF not EXISTS Incident (
    num INT primary key auto_increment,
    description VARCHAR(40) not null,
    date DATE not null,
    user INT not null,
    FOREIGN KEY (user) REFERENCES User(num)
);

CREATE TABLE IF NOT EXISTS Vehicle (
    number int primary key auto_increment,
    license_plate VARCHAR(15) not null,
    model varchar(20) not null,
    max_capacity decimal(10, 2) not null, 
    path int,
    warehouse varchar(6),
    FOREIGN KEY (path) REFERENCES Path(num),
    FOREIGN KEY (warehouse) REFERENCES Warehouse(code)
);

CREATE TABLE IF NOT EXISTS Employees (
    num INT primary key auto_increment,
    name varchar(20) not null,
    lastname varchar(20) not null,
    surname varchar(20),
    position varchar(15) not null,
    user int not null,
    vehicle int not null,
    warehouse varchar(6) not null,
    FOREIGN KEY (user) REFERENCES user(num),
    FOREIGN KEY (vehicle) REFERENCES Vehicle(number),
    FOREIGN KEY (warehouse) REFERENCES Warehouse(code)
);

CREATE TABLE  IF NOT EXISTS Shipment (
    num INT primary key auto_increment,
    date DATE not null,
    delivery_date DATE not null,
    client int not null,
    incident int not null,
    vehicle int not null,
    path int not null,
    insurance int not null,
    FOREIGN KEY (client) REFERENCES Client(num),
    FOREIGN KEY (incident) REFERENCES Incident(num),
    FOREIGN KEY (vehicle) REFERENCES Vehicle(number),
    FOREIGN KEY (path) REFERENCES Path(num),
    FOREIGN KEY (insurance) REFERENCES Insurance(num)
);

CREATE TABLE IF NOT EXISTS Record (
    num INT primary key auto_increment,
    date DATE not null,
    location varchar(20),
    status varchar(20),
    shipment int not null,
    FOREIGN KEY (shipment) REFERENCES Shipment(num)
);

CREATE TABLE IF NOT EXISTS Assamble (
    employees int not null,
    shipment int not null,
    primary key (employees, shipment),
    FOREIGN KEY (employees) REFERENCES Employees(num),
    FOREIGN KEY (shipment) REFERENCES Shipment(num)
);

CREATE TABLE IF NOT EXISTS Package (
    shipment int not null, 
    item VARCHAR(6) not null,
    primary key (shipment, item),
    FOREIGN KEY (shipment) REFERENCES Shipment(num),
    FOREIGN KEY (item) REFERENCES Item(code)
);

CREATE TABLE IF NOT EXISTS Inventory (
    stock VARCHAR(6) not null,
    item VARCHAR(6) not null,
    primary key (stock, item),
    FOREIGN KEY (item) REFERENCES Item(code),
    FOREIGN KEY (stock) REFERENCES Stock(code)
);






