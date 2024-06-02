-- Insertar valores en los catálogos
INSERT INTO EstatusCliente (descripcion) VALUES ('Activo'), ('Inactivo'), ('Bloqueado');
INSERT INTO EstatusOrdenCompra (descripcion) VALUES ('Nueva'), ('En Proceso'), ('Completada'), ('Cancelada');
INSERT INTO EstatusCorte (descripcion) VALUES ('Planeado'), ('En Proceso'), ('Completado'), ('Cancelado');
INSERT INTO EstatusInventario (descripcion) VALUES ('Disponible'), ('No Disponible');
INSERT INTO EstatusOrdenEntradaSalida (descripcion) VALUES ('Pendiente'), ('Procesada'), ('Completada');
INSERT INTO EstatusUsuario (descripcion) VALUES ('Activo'), ('Inactivo'), ('Bloqueado');
INSERT INTO EstatusMaquilador (descripcion) VALUES ('Activo'), ('Inactivo');
INSERT INTO EstatusProducto (descripcion) VALUES ('Disponible'), ('No Disponible');
INSERT INTO TiposUsuario (descripcion) VALUES ('Admin'), ('Operador'), ('Visita');
INSERT INTO Tallas (descripcion) VALUES ('XS'), ('S'), ('M'), ('L'), ('XL'), ('XXL');
INSERT INTO Colores (descripcion) VALUES ('Rojo'), ('Azul'), ('Verde'), ('Amarillo'), ('Negro'), ('Blanco');
