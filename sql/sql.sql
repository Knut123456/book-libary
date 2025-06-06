DROP DATABASE IF EXISTS BokLibary;
CREATE DATABASE BokLibary;

use BokLibary;

CREATE TABLE IF NOT EXISTS book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Bok VARCHAR(50) NOT NULL,
    Kildespråk VARCHAR(50) NOT NULL,
    oversettelse VARCHAR(50) NOT NULL,
    kunde_id int
);


CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL, 
    email VARCHAR(100) NOT NULL,
    password VARCHAR(1000) NOT NULL,
    role ENUM('admin','user') DEFAULT 'user'
);