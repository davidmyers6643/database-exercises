CREATE DATABASE IF NOT EXISTS books_db;


USE books_db;

DROP TABLE IF EXISTS books;

CREATE TABBLE IF NOT EXISTS books (
in INT UNSIGNED NOT NULL AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
author VARCHAR(100) NOT NULL DEFULT 'Unknown',
date_published DATE NOT NULL,
description TEXT,
bestseller_weeks INT UNSIGNED NOT NULL DEFAULT 0,
PRIMARY KEY(id)
);


--
-- SELECT * FROM books
-- WHERE id = 1;
--
-- UPDATE books
-- SET author = 'Steve', title = 'The Facts of Life'
-- WHERE id = 1\G;
