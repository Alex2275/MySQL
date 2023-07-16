CREATE DATABASE IF NOT EXISTS sales;

USE sales;

CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT 
);

INSERT INTO sales( order_date, count_product)
VALUES
	('2022-01-01', 156),
    ('2022-01-02', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);
SELECT * FROM sales;

TRUNCATE TABLE sales;
 SELECT * FROM sales;

SELECT
id "id заказа",
-- count_product,

if(count_product<100, "Маленький заказ",
	if(count_product>=100 AND count_product<300, "Средний заказ",
		if(count_product>=300, "Большой заказ", "Неопределено"))) AS "Тип заказа"
FROM sales;

CREATE DATABASE IF NOT EXISTS orders;

USE orders;

CREATE TABLE IF NOT EXISTS orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    amount FLOAT  NULL,
    order_status VARCHAR(10)
);

SELECT * FROM orders;

INSERT INTO orders(employee_id, amount, order_status)
VALUES
(03, '15.00', 'OPEN'),
(01, '25.50', 'OPEN'),
(05, '100.70', 'GLOSED'),
(02, '22.18', 'OPEN'),
(04, '9.50', 'CANCTLLTD');

-- TRUNCATE TABLE orders;

SELECT * FROM orders;

SELECT order_status,
CASE 
	WHEN order_status = 'OPEN' THEN "Order is in open state" 
    WHEN order_status = 'GLOSED' THEN "Order is closed"
    WHEN order_status = 'CANCTLLTD' THEN "Order is cancelled"
END AS 'full_order_status:'
FROM orders;


/*
 Чем отличается 0 от NULL, -  
 0 - Это число 
 NULL - Это значение поля 
*/