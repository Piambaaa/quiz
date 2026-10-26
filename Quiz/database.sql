
CREATE DATABASE IF NOT EXISTS cafe_aurora
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE cafe_aurora;

CREATE TABLE IF NOT EXISTS categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS productos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(255),
  precio DECIMAL(10,2) NOT NULL,
  categoria_id INT NOT NULL,
  disponible BOOLEAN NOT NULL DEFAULT TRUE,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO categorias (nombre) VALUES
('Café'), ('Postres'), ('Panadería')
ON DUPLICATE KEY UPDATE nombre = VALUES(nombre);

INSERT INTO productos (nombre, descripcion, precio, categoria_id) VALUES
('Latte Aurora', 'Espresso suave con leche cremosa', 8500, 1),
('Espresso doble', 'Café intenso y aromático', 6000, 1),
('Torta de chocolate', 'Torta artesanal de chocolate', 9000, 2),
('Pan artesanal', 'Pan recién horneado', 5000, 3);
