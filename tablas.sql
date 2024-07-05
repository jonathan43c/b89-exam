/*---------------eliminando las tablas-------*/
DROP TABLE IF EXISTS Comerciante, Remitente, Beneficiario, EstadoRemesa, Remesa;


/*---------------creando las tablas-----------*/
CREATE TABLE Comerciante (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE Remitente (
    id SERIAL PRIMARY KEY,
    tipo_documento VARCHAR(25) NOT NULL,
    numero_documento VARCHAR(15) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefono VARCHAR(15)
);

CREATE TABLE Beneficiario (
    id SERIAL PRIMARY KEY,
    tipo_documento VARCHAR(25) NOT NULL,
    numero_documento VARCHAR(15) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefono VARCHAR(15)
);

CREATE TABLE EstadoRemesa (
    id SERIAL PRIMARY KEY,
    nombre_estado VARCHAR(20) NOT NULL
);

CREATE TABLE Remesa (
    id SERIAL PRIMARY KEY,
    comerciante_id INT REFERENCES Comerciante(id),
    remitente_id INT REFERENCES Remitente(id),
    beneficiario_id INT REFERENCES Beneficiario(id),
    monto DECIMAL(10, 2) NOT NULL,
    moneda VARCHAR(10) NOT NULL,
    cuenta_bancaria VARCHAR(50) NOT NULL,
    estado_id INT REFERENCES EstadoRemesa(id),
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*----------------creando registros---------------*/

INSERT INTO Comerciante (nombre, email) VALUES
('Pepe', 'pepe@gmail.com'),
('Luis', 'luis@gmail.com'),
('Carlos', 'carlos@gmail.com');

INSERT INTO Remitente (tipo_documento, numero_documento, nombre, email, telefono) VALUES
('DNI', '12345678', 'Remitente 1', 'remitente1@gmail.com', '123456789'),
('DNI', '23456789', 'Remitente 2', 'remitente2@gmail.com', '234567890'),
('Carné de Extranjería', 'A12345678', 'Remitente 3', 'remitente3@gmail.com', '345678901');

INSERT INTO Beneficiario (tipo_documento, numero_documento, nombre, email, telefono) VALUES
('DNI', '34567890', 'Beneficiario 1', 'beneficiario1@gmail.com', '456789012'),
('DNI', '45678901', 'Beneficiario 2', 'beneficiario2@gmail.com', '567890123'),
('Pasaporte', 'B23456789', 'Beneficiario 3', 'beneficiario3@gmail.com', '678901234');

INSERT INTO EstadoRemesa (nombre_estado) VALUES
('Procesado'),
('Pendiente'),
('Fallido');


INSERT INTO Remesa (comerciante_id, remitente_id, beneficiario_id, monto, moneda, cuenta_bancaria, estado_id) VALUES
(1, 1, 1, 100.00, 'USD', '1234567890', 1),
(1, 2, 2, 200.00, 'USD', '2345678901', 2),
(2, 3, 3, 150.00, 'EUR', '3456789012', 3),
(2, 1, 1, 175.00, 'EUR', '4567890123', 1),
(3, 2, 2, 225.00, 'PEN', '5678901234', 2),
(3, 3, 3, 300.00, 'PEN', '6789012345', 3),
(1, 1, 2, 50.00, 'USD', '7890123456', 1),
(1, 2, 3, 120.00, 'USD', '8901234567', 2),
(2, 3, 1, 180.00, 'EUR', '9012345678', 3),
(2, 1, 3, 220.00, 'EUR', '0123456789', 1),
(3, 2, 1, 90.00, 'PEN', '1234509876', 2),
(3, 3, 2, 110.00, 'PEN', '2345609876', 3),
(1, 1, 3, 130.00, 'USD', '3456709876', 1),
(1, 2, 1, 140.00, 'USD', '4567809876', 2),
(2, 3, 2, 160.00, 'EUR', '5678909876', 3);