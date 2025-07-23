USE AutoRentHN;
GO

--Agregando Datos para los catalogos
INSERT INTO RolUsuario (Nombre, Descripcion) VALUES
('Administrador', 'Usuario con permisos completos'),
('Cliente', 'Usuario que alquila o compra veh�culos'),
('Empleado', 'Usuario que gestiona operaciones');
GO

INSERT INTO UsoVehiculo (Descripcion) VALUES
('Alquiler'),
('Venta');
GO

INSERT INTO HorarioTrabajo (Dia, HoraInicio, HoraFin) VALUES
('Lunes', '08:00:00', '17:00:00'),
('S�bado', '09:00:00', '13:00:00');
GO

INSERT INTO Marca (Nombre) VALUES
('Toyota'),
('Honda'),
('Ford'),
('Chevrolet');
GO

INSERT INTO TipoVehiculo (NombreTipo, Descripcion) VALUES
('Sed�n', 'Veh�culo de cuatro puertas para uso urbano'),
('SUV', 'Veh�culo utilitario deportivo'),
('Camioneta', 'Veh�culo de carga ligera');
GO

INSERT INTO TipoDocumento (Nombre, Codigo) VALUES
('Factura', '01'),
('Nota Cr�dito', '06'),
('Nota D�bito', '07'),
('Boleta Compra', '11');
GO

INSERT INTO Color (Nombre) VALUES
('Rojo'),
('Azul'),
('Negro'),
('Blanco');
GO

INSERT INTO TipoSeguro (Nombre, Disponibilidad) VALUES
('Cobertura Total', 'Disponible'),
('Cobertura Parcial', 'Disponible');
GO

INSERT INTO MetodoPago (Nombre) VALUES
('Efectivo'),
('Tarjeta de Cr�dito'),
('Transferencia Bancaria');
GO

INSERT INTO TipoExoneracion (Descripcion) VALUES
('Exoneraci�n Diplom�tica'),
('Exoneraci�n por Discapacidad'),
('Sin Exoneraci�n');
GO

INSERT INTO Pais (Nombre, Codigo_Pais) VALUES
('Honduras', 'HN');
GO

INSERT INTO Departamento (Nombre, Codigo_Departamento, Pais_id) VALUES
('Atl�ntida', '01', 1),
('Col�n', '02', 1),
('Comayagua', '03', 1),
('Cop�n', '04', 1),
('Cort�s', '05', 1),
('Choluteca', '06', 1),
('El Para�so', '07', 1),
('Francisco Moraz�n', '08', 1),
('Gracias a Dios', '09', 1),
('Intibuc�', '10', 1),
('Islas de la Bah�a', '11', 1),
('La Paz', '12', 1),
('Lempira', '13', 1),
('Ocotepeque', '14', 1),
('Olancho', '15', 1),
('Santa B�rbara', '16', 1),
('Valle', '17', 1),
('Yoro', '18', 1);
GO

INSERT INTO Ciudad (Nombre, Codigo_Ciudad, Departamento_id) VALUES
('La Ceiba', '0101', 1),               -- Atl�ntida
('Trujillo', '0201', 2),               -- Col�n
('Comayagua', '0301', 3),              -- Comayagua
('Santa Rosa de Cop�n', '0401', 4),    -- Cop�n
('San Pedro Sula', '0501', 5),         -- Cort�s
('Choluteca', '0601', 6),              -- Choluteca
('Yuscar�n', '0701', 7),               -- El Para�so
('Tegucigalpa', '0801', 8),            -- Francisco Moraz�n
('Puerto Lempira', '0901', 9),         -- Gracias a Dios
('La Esperanza', '1001', 10),          -- Intibuc�
('Roat�n', '1101', 11),                -- Islas de la Bah�a
('La Paz', '1201', 12),                -- La Paz
('Gracias', '1301', 13),               -- Lempira
('Nueva Ocotepeque', '1401', 14),      -- Ocotepeque
('Juticalpa', '1501', 15),             -- Olancho
('Santa B�rbara', '1601', 16),         -- Santa B�rbara
('Nacaome', '1701', 17),               -- Valle
('Yoro', '1801', 18);                  -- Yoro
GO

INSERT INTO Colonia (Nombre, Ciudad_id) VALUES
('La Ceiba Centro', 1),
('Trujillo Centro', 2),
('Comayagua Norte', 3),
('Santa Rosa Este', 4),
('San Pedro Sula Sur', 5),
('Choluteca Centro', 6),
('Yuscar�n Norte', 7),
('Tegucigalpa Centro', 8),
('Puerto Lempira', 9),
('La Esperanza Oeste', 10),
('Roat�n Sur', 11),
('La Paz Centro', 12),
('Gracias Norte', 13),
('Ocotepeque Este', 14),
('Juticalpa Centro', 15),
('Santa B�rbara Sur', 16),
('Nacaome Norte', 17),
('El Progreso Centro', 18);
GO

INSERT INTO Permiso (Nombre, Descripcion) VALUES
('Seleccionar Vehiculo', 'Permite seleccionar un vehiculo'),
('Crear Contrato', 'Permite crear nuevos contratos'),
('Editar Veh�culo', 'Permite modificar informaci�n de veh�culos');
GO

INSERT INTO Modelo (Marca_id, Nombre) VALUES
(1, 'Corolla'),
(1, 'Tacoma'),
(2, 'Civic'),
(2, 'Fit'),
(3,'Sentra'),
(3,'Frontier'),
(4,'Focus'),
(4,'Mustang');
GO

INSERT INTO ParqueoVehiculo (Lote, Referencia) VALUES
('Lote A1', 'Cerca de entrada principal'),
('Lote B2', 'Zona trasera');
GO

INSERT INTO Proveedor (NombreProveedor, RTN, ContactoNombre, Telefono, Correo, Direccion, TipoProveedor) VALUES
('Importadora AutoHN', '08011990123458', 'Ana G�mez', '504-9777-1234', 'contacto@autohn.com', 'Tegucigalpa', 'Distribuidor');
GO

INSERT INTO Vehiculo (Modelo_id, Anio, VIN, Motor, MatriculaPlaca, Disponibilidad, PrecioVenta, PrecioAlquiler, TipoVehiculo_id, Estado, TipoCombustible, UsoVehiculo_id, ParqueoVehiculo_id, Proveedor_id) VALUES
(1, 2023, '1HGCM82633A123456', '1.8L I4 DOHC 16V VVT-i', 'HND1234', 1, 250000.00, 150.00, 1, 'Nuevo', 'Gasolina', 1, 1, 1),
(3, 2022, '2HGFC2F59KH512345', '2.0L I4 DOHC 16V i-VTEC', 'HND5678', 1, 230000.00, 180.00, 1, 'Nuevo', 'Gasolina', 2, 2, 1);
GO

SELECT * FROM Marca;
SELECT * FROM Modelo;
SELECT * FROM Vehiculo;
SELECT * FROM UsoVehiculo;
SELECT * FROM TipoVehiculo;
SELECT * FROM ParqueoVehiculo;
SELECT * FROM Proveedor;

--Insert de un Empleado
INSERT INTO Direccion (Descripcion, Colonia_id) VALUES
('Calle Principal', 1);
GO
SELECT * FROM Direccion;

INSERT INTO Persona (PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Telefono, Direccion_id, Sexo) VALUES
('Mar�a', 'Luisa', 'Rodr�guez', 'L�pez', '504-9888-5678', 2, 'F');
GO

INSERT INTO Usuario (Correo, Contrasenia, InicioUso, FinUso, Rol_id, Persona_id) VALUES
('maria.rodriguez@autorent.com', '$2b$12$nzzYw0fr6xOQW5nRmFaIf.ITseX4JZyV0fA7uspb/PlUclIMPYMt.', '2025-07-11', NULL, 3, 2);
GO

INSERT INTO Empleado (Horario_id, Usuario_id, Estado) VALUES
(1, 2, 'Activo');
GO

SELECT * FROM Empleado;
SELECT * FROM Vehiculo;
SELECT * FROM Direccion;
SELECT * FROM Persona;
SELECT * FROM Usuario;
SELECT * FROM Cliente;
SELECT * FROM Proveedor;