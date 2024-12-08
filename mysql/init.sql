-- Создание базы данных
CREATE DATABASE IF NOT EXISTS ads_db;

-- Создание пользователя с паролем
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY '54321';
CREATE USER IF NOT EXISTS 'root'@'localhost' IDENTIFIED BY '12345';

-- Назначение прав пользователю
GRANT ALL PRIVILEGES ON ads_db.* TO 'user'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;

-- Применение изменений
FLUSH PRIVILEGES;

-- Создание таблицы ads
CREATE TABLE IF NOT EXISTS ads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    photos JSON NOT NULL,
    price DECIMAL(10, 2),
    created_at DATETIME NOT NULL
);



