
-- БАЗА ДАНИХ
-- Можливість створення БД з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Можемо створити БД через візуальний інструмент, наприклад,
-- MySQL Workbench.
CREATE DATABASE demo_db;


-- ТАБЛИЦІ
-- Можливість створення таблиць БД, з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Попередньо, необхідно спроектувати таблиці та їх зв'язки,
-- на основі сутностей реального світу.
-- Можемо створити таблиці БД через візуальний інструмент, наприклад,
-- MySQL Workbench.

-- Для фінансових значень використано DECIMAL(M,D).
-- DECIMAL зберігає точні числові значення даних.
-- https://dev.mysql.com/doc/refman/8.0/en/fixed-point-types.html
-- M – максимальна кількість цифр (точність). Має діапазон від 1 до 65.
-- D – кількість цифр праворуч від коми (шкала). Має діапазон від 0 до 30
-- і не повинен перевищувати M.
-- https://dev.mysql.com/doc/refman/8.0/en/precision-math-decimal-characteristics.html
-- Грошовий вираз - цифрова інформація. Для грошових розрахунків FLOAT та DOUBLE
-- схильні до помилки округлення і можуть не підходити.
-- Для цього більше підходить DECIMAL (M, 2).
-- Однак, може не форматувати подання даних у HTML.

CREATE TABLE IF NOT EXISTS users (
        id INTEGER NOT NULL AUTO_INCREMENT,
        first_name VARCHAR(128) NOT NULL,
        last_name VARCHAR(128) NOT NULL,
		email VARCHAR(128) NOT NULL,
        PRIMARY KEY (id)
    )

--Вставка (создание) нового пользователя:
INSERT INTO users (first_name, last_name, email)
VALUES ('John', 'Doe', 'john.doe@example.com');

--Выборка всех пользователей:
SELECT * FROM users;

--Выборка пользователя по идентификатору (например, по ID = 1):
SELECT * FROM users WHERE id = 1;

--Обновление информации о пользователе с указанным ID (например, ID = 1):
UPDATE users
SET first_name = 'UpdatedFirstName', last_name = 'UpdatedLastName', email = 'updated.email@example.com'
WHERE id = 1;

--Удаление пользователя по идентификатору (например, по ID = 1):
DELETE FROM users WHERE id = 1;
