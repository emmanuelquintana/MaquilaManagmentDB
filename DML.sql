-- Insertar valores en los catálogos
INSERT INTO CatalogoEstatusCliente (descripcion) VALUES ('Activo'), ('Inactivo'), ('Bloqueado');
INSERT INTO CatalogoEstatusOrdenCompra (descripcion) VALUES ('Nueva'), ('En Proceso'), ('Completada'), ('Cancelada');
INSERT INTO CatalogoEstatusCorte (descripcion) VALUES ('Planeado'), ('En Proceso'), ('Completado'), ('Cancelado');
INSERT INTO CatalogoEstatusInventario (descripcion) VALUES ('Disponible'), ('No Disponible');
INSERT INTO CatalogoEstatusOrdenEntradaSalida (descripcion) VALUES ('Pendiente'), ('Procesada'), ('Completada');
INSERT INTO CatalogoEstatusUsuario (descripcion) VALUES ('Activo'), ('Inactivo'), ('Bloqueado');
INSERT INTO CatalogoEstatusMaquilador (descripcion) VALUES ('Activo'), ('Inactivo');
INSERT INTO CatalogoEstatusProducto (descripcion) VALUES ('Disponible'), ('No Disponible');
INSERT INTO CatalogoTiposUsuario (descripcion) VALUES ('Admin'), ('Operador'), ('Visita');
INSERT INTO CatalogoTallas (descripcion) VALUES ('XS'), ('S'), ('M'), ('L'), ('XL'), ('XXL');
INSERT INTO CatalogoColores (descripcion) VALUES ('Rojo'), ('Azul'), ('Verde'), ('Amarillo'), ('Negro'), ('Blanco');
