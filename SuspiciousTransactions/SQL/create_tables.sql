CREATE TABLE IF NOT EXISTS card_holder (
    cardholder_id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(80)
);
CREATE TABLE IF NOT EXISTS credit_card (
    card_number VARCHAR(20) NOT NULL PRIMARY KEY,
    cardholder_id INT NOT NULL
);
CREATE TABLE IF NOT EXISTS merchant (
    merchant_id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(80),
    merchant_category_id INT
);
CREATE TABLE IF NOT EXISTS merchant_category (
    merchant_category_id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(80)
);
CREATE TABLE IF NOT EXISTS transaction (
    transaction_id SERIAL NOT NULL PRIMARY KEY,
    date TIMESTAMP,
    amount DECIMAL,
    card_number VARCHAR(20),
    merchant_id INT
)