CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    book_name VARCHAR(50) NOT NULL,
    publisher_id INTEGER NOT NULL,
    edition VARCHAR(30),
    isbn VARCHAR(13) UNIQUE,
    cost DECIMAL(10,2) NOT NULL,
    publish_date DATE DEFAULT CURRENT_DATE,
    stock_quantity INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
