INSERT INTO products(name, price, qty)
VALUES ('Pizza', 200, 10),
       ('Burger', 150, 20),
       ('Free', 120, 15),
       ('Tea', 100, 50),
       ('Cola', 100, 50),
       ('Coffee', 100, 50);

INSERT INTO managers (name, login, password, salary, plan, boss_id, deparment)
VALUES ('Vasya', 'fedya@000', 'fedya000', 100, 0, NULL, NULL),
       ('Petya', 'fedya@001', 'fedya001', 80, 80, 1, 'boys'),
       ('Vanya', 'fedya@002', 'fedya002', 60, 60, 2, 'boys'),
       ('Dasha', 'fedya@003', 'fedya003', 90, 90, 1, 'girls'),
       ('Sasha', 'fedya@004', 'fedya004', 70, 70, 4, 'girls'),
       ('Masha', 'fedya@005', 'fedya005', 50, 50, 5, 'girls');

INSERT INTO customers(name, phone, password)
VALUES ('Zhenya', '+99200000001', 'zhenya000');

INSERT INTO sales (manager_id, customer_id)
VALUES (1, DEFAULT),
       (2, DEFAULT),
       (3, DEFAULT),
       (4, 1),
       (4, 1),
       (5, DEFAULT),
       (5, DEFAULT);

INSERT INTO sale_positions(sale_id, products_id, name, qty, price)
VALUES
-- Vasya, Pizza, 5шт по 200
(1, 1, 'Pizza', 5, 200),
-- Vasya, 'Burger', 5шт по 200
(1, 2, 'Burger', 5, 200),

-- Petya, Free, 10шт по 120
(2, 3, 'Free', 10, 120),

-- Vanya, Free, 10шт по 120
(3, 3, 'Free', 10, 120),

-- Dasha, Coffee, 20шт по 150
(4, 6, 'Coffee', 20, 150),

-- Dasha, Coffee, 20шт по 150
(5, 6, 'Coffee', 20, 150),

-- Masha, Coffee, 20шт по 150
(6, 6, 'Coffee', 20, 150),

-- Masha, Cola, 20шт по 150
(7, 5, 'Cola', 10, 100);
