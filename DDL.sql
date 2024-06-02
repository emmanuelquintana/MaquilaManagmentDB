-- Crear tablas
CREATE TABLE Clientes (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    nombre_responsable VARCHAR(100) NOT NULL,
    nombre_contacto_cliente VARCHAR(100) NOT NULL,
    razon_social VARCHAR(100),
    constancia_fiscal VARCHAR(50),
    logo VARCHAR(255),
    telefono VARCHAR(20),
    direccion TEXT,
    correo_electronico VARCHAR(100) NOT NULL,
    estatus_cliente_id BIGINT
);

CREATE TABLE OrdenesCompra (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    cliente_id BIGINT,
    productos JSONB NOT NULL,
    notas_especiales TEXT,
    direccion_opcional TEXT,
    requerimientos_bordado TEXT,
    archivos JSONB,
    estatus_orden_compra_id BIGINT
);

CREATE TABLE Cortes (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    maquilador_id BIGINT,
    foto_producto VARCHAR(255),
    notas_especiales TEXT,
    talla_id BIGINT,
    color_id BIGINT,
    tipo_tela VARCHAR(50),
    estatus_corte_id BIGINT
);

CREATE TABLE Inventario (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    producto_id BIGINT,
    cantidad INT NOT NULL,
    estatus_inventario_id BIGINT
);

CREATE TABLE OrdenesEntradaSalida (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    maquilador_id BIGINT,
    productos JSONB NOT NULL,
    usuario_id BIGINT,
    tipo_movimiento VARCHAR(50),
    fecha TIMESTAMP NOT NULL,
    estatus_orden_entrada_salida_id BIGINT
);

CREATE TABLE Usuarios (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL,
    metodo_autenticacion VARCHAR(50),
    tipo_usuario_id BIGINT,
    estatus_usuario_id BIGINT
);

CREATE TABLE Maquiladores (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    capacidad_maquila VARCHAR(100),
    estatus_maquilador_id BIGINT
);

CREATE TABLE Productos (
    id BIGSERIAL PRIMARY KEY,
    uuid VARCHAR(36) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    talla_id BIGINT,
    color_id BIGINT,
    estatus_producto_id BIGINT
);

CREATE TABLE CatalogoEstatusCliente (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoEstatusOrdenCompra (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoEstatusCorte (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoEstatusInventario (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoEstatusOrdenEntradaSalida (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoEstatusUsuario (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoEstatusMaquilador (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoEstatusProducto (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoTiposUsuario (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoTallas (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE CatalogoColores (
    id BIGSERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

-- Agregar llaves foráneas
ALTER TABLE Clientes
ADD CONSTRAINT fk_estatus_cliente
FOREIGN KEY (estatus_cliente_id) REFERENCES CatalogoEstatusCliente(id);

ALTER TABLE OrdenesCompra
ADD CONSTRAINT fk_cliente_id
FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
ADD CONSTRAINT fk_estatus_orden_compra
FOREIGN KEY (estatus_orden_compra_id) REFERENCES CatalogoEstatusOrdenCompra(id);

ALTER TABLE Cortes
ADD CONSTRAINT fk_maquilador_id
FOREIGN KEY (maquilador_id) REFERENCES Maquiladores(id),
ADD CONSTRAINT fk_talla_id
FOREIGN KEY (talla_id) REFERENCES CatalogoTallas(id),
ADD CONSTRAINT fk_color_id
FOREIGN KEY (color_id) REFERENCES CatalogoColores(id),
ADD CONSTRAINT fk_estatus_corte
FOREIGN KEY (estatus_corte_id) REFERENCES CatalogoEstatusCorte(id);

ALTER TABLE Inventario
ADD CONSTRAINT fk_producto_id
FOREIGN KEY (producto_id) REFERENCES Productos(id),
ADD CONSTRAINT fk_estatus_inventario
FOREIGN KEY (estatus_inventario_id) REFERENCES CatalogoEstatusInventario(id);

ALTER TABLE OrdenesEntradaSalida
ADD CONSTRAINT fk_maquilador_id_entrada_salida
FOREIGN KEY (maquilador_id) REFERENCES Maquiladores(id),
ADD CONSTRAINT fk_usuario_id
FOREIGN KEY (usuario_id) REFERENCES Usuarios(id),
ADD CONSTRAINT fk_estatus_orden_entrada_salida
FOREIGN KEY (estatus_orden_entrada_salida_id) REFERENCES CatalogoEstatusOrdenEntradaSalida(id);

ALTER TABLE Usuarios
ADD CONSTRAINT fk_tipo_usuario
FOREIGN KEY (tipo_usuario_id) REFERENCES CatalogoTiposUsuario(id),
ADD CONSTRAINT fk_estatus_usuario
FOREIGN KEY (estatus_usuario_id) REFERENCES CatalogoEstatusUsuario(id);

ALTER TABLE Maquiladores
ADD CONSTRAINT fk_estatus_maquilador
FOREIGN KEY (estatus_maquilador_id) REFERENCES CatalogoEstatusMaquilador(id);

ALTER TABLE Productos
ADD CONSTRAINT fk_talla_producto
FOREIGN KEY (talla_id) REFERENCES CatalogoTallas(id),
ADD CONSTRAINT fk_color_producto
FOREIGN KEY (color_id) REFERENCES CatalogoColores(id),
ADD CONSTRAINT fk_estatus_producto
FOREIGN KEY (estatus_producto_id) REFERENCES CatalogoEstatusProducto(id);

-- Indices --
CREATE INDEX idx_clientes_uuid ON Clientes (uuid);
CREATE INDEX idx_clientes_nombre_responsable ON Clientes (nombre_responsable);
CREATE INDEX idx_clientes_correo_electronico ON Clientes (correo_electronico);
CREATE INDEX idx_clientes_estatus_cliente_id ON Clientes (estatus_cliente_id);

CREATE INDEX idx_ordenes_compra_uuid ON OrdenesCompra (uuid);
CREATE INDEX idx_ordenes_compra_cliente_id ON OrdenesCompra (cliente_id);
CREATE INDEX idx_ordenes_compra_estatus_orden_compra_id ON OrdenesCompra (estatus_orden_compra_id);

CREATE INDEX idx_cortes_uuid ON Cortes (uuid);
CREATE INDEX idx_cortes_maquilador_id ON Cortes (maquilador_id);
CREATE INDEX idx_cortes_talla_id ON Cortes (talla_id);
CREATE INDEX idx_cortes_color_id ON Cortes (color_id);
CREATE INDEX idx_cortes_estatus_corte_id ON Cortes (estatus_corte_id);

CREATE INDEX idx_inventario_uuid ON Inventario (uuid);
CREATE INDEX idx_inventario_producto_id ON Inventario (producto_id);
CREATE INDEX idx_inventario_estatus_inventario_id ON Inventario (estatus_inventario_id);

CREATE INDEX idx_ordenes_entrada_salida_uuid ON OrdenesEntradaSalida (uuid);
CREATE INDEX idx_ordenes_entrada_salida_maquilador_id ON OrdenesEntradaSalida (maquilador_id);
CREATE INDEX idx_ordenes_entrada_salida_usuario_id ON OrdenesEntradaSalida (usuario_id);
CREATE INDEX idx_ordenes_entrada_salida_estatus_orden_entrada_salida_id ON OrdenesEntradaSalida (estatus_orden_entrada_salida_id);

CREATE INDEX idx_usuarios_uuid ON Usuarios (uuid);
CREATE INDEX idx_usuarios_correo_electronico ON Usuarios (correo_electronico);
CREATE INDEX idx_usuarios_tipo_usuario_id ON Usuarios (tipo_usuario_id);
CREATE INDEX idx_usuarios_estatus_usuario_id ON Usuarios (estatus_usuario_id);

CREATE INDEX idx_maquiladores_uuid ON Maquiladores (uuid);
CREATE INDEX idx_maquiladores_nombre ON Maquiladores (nombre);
CREATE INDEX idx_maquiladores_estatus_maquilador_id ON Maquiladores (estatus_maquilador_id);

CREATE INDEX idx_productos_uuid ON Productos (uuid);
CREATE INDEX idx_productos_nombre ON Productos (nombre);
CREATE INDEX idx_productos_talla_id ON Productos (talla_id);
CREATE INDEX idx_productos_color_id ON Productos (color_id);
CREATE INDEX idx_productos_estatus_producto_id ON Productos (estatus_producto_id);
