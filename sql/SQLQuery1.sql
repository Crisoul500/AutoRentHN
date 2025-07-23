USE AutoRentHN;

SELECT * FROM Usuario;
SELECT * FROM Persona;
SELECT * FROM RolUsuario;
SELECT * FROM Vehiculo;
SELECT * FROM TipoVehiculo;
SELECT * FROM Marca;
SELECT * FROM Modelo;
SELECT * FROM UsoVehiculo;
SELECT * FROM ParqueoVehiculo;
SELECT * FROM Proveedor;
SELECT * FROM HorarioTrabajo;
SELECT * FROM Departamento;

SELECT id_Usuario, Correo, Contrasenia, Rol_id FROM Usuario WHERE Correo = 'diego@example.com';

SELECT v.id_vehiculo, ma.nombre AS marca_nombre, m.nombre AS modelo_nombre, Anio AS año, 
           tv.descripcion AS tipo_descripcion, uv.descripcion AS uso_descripcion,
           v.PrecioAlquiler, v.Estado
    FROM Vehiculo v
    INNER JOIN Modelo m ON v.Modelo_id = m.id_Modelo
    INNER JOIN Marca ma ON m.Marca_id = ma.id_Marca
    INNER JOIN TipoVehiculo tv ON v.TipoVehiculo_id = tv.id_TipoVehiculo
    INNER JOIN UsoVehiculo uv ON v.UsoVehiculo_id = uv.id_UsoVehiculo
	WHERE uv.descripcion = 'Alquiler' AND Disponibilidad = 1;

SELECT v.id_vehiculo, ma.nombre AS marca_nombre, m.nombre AS modelo_nombre, Anio AS año,
           tv.descripcion AS tipo_descripcion, uv.descripcion AS uso_descripcion,
           v.PrecioVenta, v.Estado
    FROM Vehiculo v
    JOIN Modelo m ON v.Modelo_id = m.id_Modelo
    JOIN Marca ma ON m.Marca_id = ma.id_Marca
    JOIN TipoVehiculo tv ON v.TipoVehiculo_id = tv.id_TipoVehiculo
    JOIN UsoVehiculo uv ON v.UsoVehiculo_id = uv.id_UsoVehiculo
	WHERE uv.descripcion = 'Venta' AND Disponibilidad = 1;

SELECT  v.id_Vehiculo, ma.nombre AS marca_nombre, m.nombre AS modelo_nombre, v.Anio AS anio,
		v.VIN AS vin, v.Motor AS motor, v.MatriculaPlaca AS placa, 
		tv.nombreTipo AS tipo_nombre, tv.descripcion AS tipo_descripcion, 
		uv.descripcion AS uso_descripcion, v.PrecioVenta AS precio_de_venta, 
		v.PrecioAlquiler AS precio_de_alquiler, v.Estado AS estado, 
		v.TipoCombustible AS tipo_de_combustible
    FROM Vehiculo v
    INNER JOIN Modelo m ON v.Modelo_id = m.id_Modelo
    INNER JOIN Marca ma ON m.Marca_id = ma.id_Marca
    INNER JOIN TipoVehiculo tv ON v.TipoVehiculo_id = tv.id_TipoVehiculo
    INNER JOIN UsoVehiculo uv ON v.UsoVehiculo_id = uv.id_UsoVehiculo
	WHERE v.id_Vehiculo = 11;

SELECT v.id_vehiculo, ma.nombre AS marca_nombre, m.nombre AS modelo_nombre, Anio AS anio, 
           tv.descripcion AS tipo_descripcion, uv.descripcion AS uso_descripcion, v.PrecioVenta,
           v.PrecioAlquiler, v.Estado
    FROM Vehiculo v
    INNER JOIN Modelo m ON v.Modelo_id = m.id_Modelo
    INNER JOIN Marca ma ON m.Marca_id = ma.id_Marca
    INNER JOIN TipoVehiculo tv ON v.TipoVehiculo_id = tv.id_TipoVehiculo
    INNER JOIN UsoVehiculo uv ON v.UsoVehiculo_id = uv.id_UsoVehiculo
	WHERE Disponibilidad = 1;
