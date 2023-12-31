-- Create a schema called Sales if it does not already exist.
CREATE SCHEMA IF NOT EXISTS Sales;

-- Create the customers table.
CREATE TABLE IF NOT EXISTS Sales.customers
(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Create the orders table.
CREATE TABLE IF NOT EXISTS Sales.orders
(
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Sales.customers(customer_id),
    order_date DATE,
    total_amount NUMERIC(10, 2)
);

-- populate the customers table
INSERT INTO 
    Sales.customers (first_name, last_name, email)
VALUES 
    ('John', 'Smith', 'john.smith@gmail.com'),
    ('Jane', 'Doe', 'jane.doe@gmail.com'),
    ('Michael', 'Johnson', 'michael.johnson@yahoo.com'),
    ('Emily', 'Davis', 'emily.davis@hotmail.com'),
    ('William', 'Brown', 'william.brown@gmail.com'),
    ('Olivia', 'Wilson', 'olivia.wilson@yahoo.com'),
    ('James', 'Garcia', 'james.garcia@hotmail.com'),
    ('Sophia', 'Martinez', 'sophia.martinez@gmail.com'),
    ('Benjamin', 'Anderson', 'benjamin.anderson@yahoo.com'),
    ('Isabella', 'Thomas', 'isabella.thomas@hotmail.com'),
    ('Daniel', 'Jackson', 'daniel.jackson@gmail.com'),
    ('Mia', 'White', 'mia.white@yahoo.com'),
    ('Ethan', 'Harris', 'ethan.harris@hotmail.com'),
    ('Charlotte', 'Martin', 'charlotte.martin@gmail.com'),
    ('Alexander', 'Thompson', 'alexander.thompson@yahoo.com'),
    ('Amelia', 'Garcia', 'amelia.garcia@hotmail.com'),
    ('Matthew', 'Davis', 'matthew.davis@gmail.com'),
    ('Abigail', 'Wilson', 'abigail.wilson@yahoo.com'),
    ('Joseph', 'Brown', 'joseph.brown@hotmail.com'),
    ('Samantha', 'Johnson', 'samantha.johnson@gmail.com'),
    ('Christopher', 'Miller', 'christopher.miller@yahoo.com'),
    ('Elizabeth', 'Anderson', 'elizabeth.anderson@hotmail.com'),
    ('Andrew', 'Thomas', 'andrew.thomas@gmail.com'),
    ('Victoria', 'Jackson', 'victoria.jackson@yahoo.com'),
    ('Joshua', 'White', 'joshua.white@hotmail.com'),
    ('Madison', 'Harris', 'madison.harris@gmail.com'),
    ('David', 'Martin', 'david.martin@yahoo.com'),
    ('Avery', 'Thompson', 'avery.thompson@hotmail.com'),
    ('Aiden', 'Garcia', 'aiden.garcia@gmail.com'),
    ('Grace', 'Davis', 'grace.davis@yahoo.com'),
    ('Lucas', 'Wilson', 'lucas.wilson@hotmail.com'),
    ('Chloe', 'Brown', 'chloe.brown@gmail.com'),
    ('Jackson', 'Johnson', 'jackson.johnson@yahoo.com'),
    ('Ella', 'Miller', 'ella.miller@hotmail.com'),
    ('Ryan', 'Anderson', 'ryan.anderson@gmail.com'),
    ('Natalie', 'Thomas', 'natalie.thomas@yahoo.com'),
    ('Owen', 'Jackson', 'owen.jackson@hotmail.com'),
    ('Lily', 'White', 'lily.white@gmail.com'),
    ('Caleb', 'Harris', 'caleb.harris@yahoo.com'),
    ('Aubrey', 'Martin', 'aubrey.martin@hotmail.com'),
    ('Luke', 'Thompson', 'luke.thompson@gmail.com'),
    ('Evelyn', 'Garcia', 'evelyn.garcia@yahoo.com'),
    ('Isaac', 'Davis', 'isaac.davis@hotmail.com'),
    ('Hannah', 'Wilson', 'hannah.wilson@gmail.com'),
    ('Gabriel', 'Brown', 'gabriel.brown@yahoo.com'),
    ('Aaliyah', 'Johnson', 'aaliyah.johnson@hotmail.com'),
    ('Oscar', 'Miller', 'oscar.miller@gmail.com'),
    ('Aria', 'Anderson', 'aria.anderson@yahoo.com'),
    ('Levi', 'Thomas', 'levi.thomas@hotmail.com'),
    ('Addison', 'Jackson', 'addison.jackson@gmail.com'),
    ('Mason', 'White', 'mason.white@yahoo.com'),
    ('Eleanor', 'Harris', 'eleanor.harris@hotmail.com'),
    ('Nora', 'Martin', 'nora.martin@gmail.com'),
    ('Landon', 'Thompson', 'landon.thompson@yahoo.com'),
    ('Ellie', 'Garcia', 'ellie.garcia@hotmail.com'),
    ('Cameron', 'Davis', 'cameron.davis@gmail.com'),
    ('Caroline', 'Wilson', 'caroline.wilson@yahoo.com'),
    ('Nicholas', 'Brown', 'nicholas.brown@hotmail.com'),
    ('Skylar', 'Johnson', 'skylar.johnson@gmail.com'),
    ('Leah', 'Miller', 'leah.miller@yahoo.com'),
    ('Brooklyn', 'Anderson', 'brooklyn.anderson@hotmail.com'),
    ('Connor', 'Thomas', 'connor.thomas@gmail.com'),
    ('Audrey', 'Jackson', 'audrey.jackson@yahoo.com'),
    ('Eli', 'White', 'eli.white@hotmail.com'),
    ('Sofia', 'Harris', 'sofia.harris@gmail.com'),
    ('Claire', 'Martin', 'claire.martin@yahoo.com'),
    ('Max', 'Thompson', 'max.thompson@hotmail.com'),
    ('Aurora', 'Garcia', 'aurora.garcia@gmail.com'),
    ('Adam', 'Davis', 'adam.davis@yahoo.com'),
    ('Stella', 'Wilson', 'stella.wilson@hotmail.com'),
    ('Henry', 'Brown', 'henry.brown@gmail.com'),
    ('Lillian', 'Johnson', 'lillian.johnson@yahoo.com'),
    ('Sebastian', 'Miller', 'sebastian.miller@hotmail.com'),
    ('Paisley', 'Anderson', 'paisley.anderson@gmail.com'),
    ('Julian', 'Thomas', 'julian.thomas@yahoo.com'),
    ('Genesis', 'Jackson', 'genesis.jackson@hotmail.com'),
    ('Mateo', 'White', 'mateo.white@gmail.com'),
    ('Naomi', 'Harris', 'naomi.harris@yahoo.com'),
    ('Ruby', 'Martin', 'ruby.martin@hotmail.com'),
    ('Wyatt', 'Thompson', 'wyatt.thompson@gmail.com'),
    ('Autumn', 'Garcia', 'autumn.garcia@yahoo.com'),
    ('Nathan', 'Davis', 'nathan.davis@hotmail.com'),
    ('Savannah', 'Wilson', 'savannah.wilson@gmail.com'),
    ('Ezra', 'Brown', 'ezra.brown@yahoo.com'),
    ('Penelope', 'Johnson', 'penelope.johnson@hotmail.com'),
    ('Asher', 'Miller', 'asher.miller@gmail.com'),
    ('Aaliyah', 'Anderson', 'aaliyah.anderson@yahoo.com'),
    ('Hunter', 'Thomas', 'hunter.thomas@hotmail.com'),
    ('Bella', 'Jackson', 'bella.jackson@gmail.com'),
    ('Grayson', 'White', 'grayson.white@yahoo.com'),
    ('Hazel', 'Harris', 'hazel.harris@hotmail.com'),
    ('Violet', 'Martin', 'violet.martin@gmail.com'),
    ('Leah', 'Thompson', 'leah.thompson@yahoo.com'),
    ('Arianna', 'Garcia', 'arianna.garcia@hotmail.com'),
    ('Isaiah', 'Davis', 'isaiah.davis@gmail.com'),
    ('Aaliyah', 'Wilson', 'aaliyah.wilson@yahoo.com'),
    ('Ezekiel', 'Brown', 'ezekiel.brown@hotmail.com'),
    ('Elena', 'Johnson', 'elena.johnson@gmail.com'),
    ('Josiah', 'Miller', 'josiah.miller@yahoo.com'),
    ('Avery', 'Anderson', 'avery.anderson@hotmail.com'),
    ('Eva', 'Thomas', 'eva.thomas@gmail.com'),
    ('Aiden', 'Jackson', 'aiden.jackson@yahoo.com'),
    ('Liam', 'White', 'liam.white@hotmail.com'),
    ('Aria', 'Harris', 'aria.harris@gmail.com'),
    ('Scarlett', 'Martin', 'scarlett.martin@yahoo.com'),
    ('Carter', 'Thompson', 'carter.thompson@hotmail.com'),
    ('Aubree', 'Garcia', 'aubree.garcia@gmail.com'),
    ('Josie', 'Davis', 'josie.davis@yahoo.com'),
    ('Aria', 'Wilson', 'aria.wilson@hotmail.com'),
    ('Micah', 'Brown', 'micah.brown@gmail.com'),
    ('Avery', 'Johnson', 'avery.johnson@yahoo.com'),
    ('Eliana', 'Miller', 'eliana.miller@hotmail.com'),
    ('Arianna', 'Anderson', 'arianna.anderson@gmail.com'),
    ('Ethan', 'Thomas', 'ethan.thomas@yahoo.com'),
    ('Aaliyah', 'Jackson', 'aaliyah.jackson@hotmail.com'),
    ('Mia', 'White', 'mia.white@gmail.com'),
    ('Avery', 'Harris', 'avery.harris@yahoo.com'),
    ('Aurora', 'Martin', 'aurora.martin@hotmail.com'),
    ('Cameron', 'Thompson', 'cameron.thompson@gmail.com'),
    ('Aubree', 'Garcia', 'aubree.garcia@yahoo.com'),
    ('Josie', 'Davis', 'josie.davis@hotmail.com'),
    ('Aria', 'Wilson', 'aria.wilson@gmail.com'),
    ('Micah', 'Brown', 'micah.brown@yahoo.com'),
    ('Avery', 'Johnson', 'avery.johnson@hotmail.com'),
    ('Eliana', 'Miller', 'eliana.miller@gmail.com'),
    ('Arianna', 'Anderson', 'arianna.anderson@yahoo.com'),
    ('Ethan', 'Thomas', 'ethan.thomas@hotmail.com'),
    ('Aaliyah', 'Jackson', 'aaliyah.jackson@gmail.com')
;

-- check how many customers are there
SELECT COUNT(*) FROM Sales.customers;

-- Check if there is any duplicate values in the customers table.
SELECT 
    first_name, 
    last_name, 
    email, 
    COUNT(*) AS count
FROM
    Sales.customers
GROUP BY
    first_name, 
    last_name, 
    email
HAVING
    COUNT(*) > 1
ORDER BY
    count DESC
;

-- populate the orders 
-- There are 128 customers, so we will randomly select 128 customer_id
-- randomly select order_date from 2019-01-01 to 2020-12-31
-- randomly select total_amount from 100 to 1000
INSERT INTO 
    Sales.orders (customer_id, order_date, total_amount)
SELECT
    (1 + floor(random() * 128)) AS customer_id,
    '2019-01-01'::date + (random() * ('2020-12-31'::date - '2019-01-01'::date))::int AS order_date,
    (100 + floor(random() * 900)) AS total_amount
FROM generate_series(1, 1000);

-- check how many orders are there
SELECT COUNT(*) FROM Sales.orders;

-- check if there is any duplicate values in the orders table.
SELECT 
    customer_id, 
    order_date, 
    total_amount, 
    COUNT(*) AS count
FROM
    Sales.orders
GROUP BY
    customer_id, 
    order_date, 
    total_amount
HAVING  
    COUNT(*) > 1    
ORDER BY
    count DESC
;
