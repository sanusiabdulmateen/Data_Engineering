INSERT INTO publishers (publisher_id, name, location) VALUES
(1, 'Penguin Random House', 'New York'),
(2, 'HarperCollins', 'New York'),
(3, 'Simon and Schuster', 'New York'),
(4, 'Bloomsbury Publishing', 'London');

INSERT INTO authors (author_id, first_name, last_name, email, phone_number, date_of_birth) VALUES
(1, 'Michael', 'Turner', 'michael.turner@example.com', '555 1001', '1975-03-14'),
(2, 'Sarah', 'Bennett', 'sarah.bennett@example.com', '555 1002', '1982-07-09'),
(3, 'Daniel', 'Osei', 'daniel.osei@example.com', '555 1003', '1988-11-21'),
(4, 'Laura', 'Chen', 'laura.chen@example.com', '555 1004', '1990-05-02'),
(5, 'James', 'Whitfield', 'james.whitfield@example.com', '555 1005', '1978-09-30'),
(6, 'Fatima', 'Al-Sayed', 'fatima.alsayed@example.com', '555 1006', '1985-01-17');

INSERT INTO books (book_id, book_name, publisher_id, edition, isbn, cost, publish_date, stock_quantity) VALUES
(1, 'The Silent Orbit', 1, '1st', '9781234567897', 15.99, '2022-03-10', 120),
(2, 'Whispers of the Tide', 2, '2nd', '9781234567898', 12.50, '2021-07-22', 80),
(3, 'Beyond the Horizon', 1, '1st', '9781234567899', 18.00, '2023-01-15', 45),
(4, 'Code and Consequence', 3, '1st', '9781234567900', 22.99, '2020-11-05', 60),
(5, 'The Last Ember', 2, '3rd', '9781234567901', 14.75, '2019-05-30', 30),
(6, 'Data Driven Dreams', 4, '1st', '9781234567902', 25.00, '2024-02-01', 90),
(7, 'Shadows in the Archive', 3, '2nd', '9781234567903', 16.20, '2022-09-18', 55),
(8, 'The Silent Orbit', 1, '2nd (Anniversary)', '9781234567904', 17.99, '2024-06-01', 40);

-- Book 8 reuses the title of book 1 on purpose, a reprint edition,
-- showing why book_name is not unique.

INSERT INTO book_authors (book_id, author_id) VALUES
(1, 1), (1, 5),
(2, 2),
(3, 1),
(4, 3),
(5, 4), (5, 6),
(6, 3), (6, 4),
(7, 2),
(8, 1), (8, 5);

INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, date_of_birth) VALUES
(1, 'Amaka', 'Johnson', 'amaka.johnson@example.com', '555 2001', '1993-04-18'),
(2, 'Tobi', 'Martins', 'tobi.martins@example.com', '555 2002', '1996-08-25'),
(3, 'Linda', 'Okoro', 'linda.okoro@example.com', '555 2003', '1991-12-02'),
(4, 'Peter', 'Adeyemi', 'peter.adeyemi@example.com', '555 2004', '1989-06-14'),
(5, 'Grace', 'Umeh', 'grace.umeh@example.com', '555 2005', '1998-02-27'),
(6, 'Samuel', 'Eze', 'samuel.eze@example.com', '555 2006', '1994-10-09');

INSERT INTO orders (order_id, customer_id, order_date, order_status) VALUES
(1, 1, '2024-01-10', 'Delivered'),
(2, 2, '2024-01-15', 'Shipped'),
(3, 1, '2024-02-01', 'Delivered'),
(4, 3, '2024-02-10', 'Pending'),
(5, 4, '2024-02-20', 'Delivered'),
(6, 5, '2024-03-01', 'Cancelled'),
(7, 2, '2024-03-05', 'Pending'),
(8, 6, '2024-03-10', 'Shipped');

INSERT INTO order_items (order_item_id, order_id, book_id, quantity, price) VALUES
(1, 1, 1, 2, 15.99),
(2, 1, 3, 1, 18.00),
(3, 2, 2, 1, 12.50),
(4, 3, 4, 1, 22.99),
(5, 3, 6, 1, 25.00),
(6, 4, 5, 3, 14.75),
(7, 5, 7, 2, 16.20),
(8, 6, 1, 1, 14.99),
(9, 7, 8, 1, 17.99),
(10, 8, 3, 2, 18.00),
(11, 8, 6, 1, 25.00);
