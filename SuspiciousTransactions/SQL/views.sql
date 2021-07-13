CREATE VIEW transaction_amount_less_than_2 AS
    SELECT card_holder.cardholder_id,
        credit_card.card_number,
        transaction.transaction_id,
        transaction.date,
        transaction.amount
    FROM card_holder
        INNER JOIN credit_card ON card_holder.cardholder_id = credit_card.cardholder_id
        INNER JOIN transaction ON credit_card.card_number = transaction.card_number
    WHERE transaction.amount < 2.00;

CREATE VIEW transaction_count_under_2_by_card_number AS
    SELECT credit_card.card_number,
        SUM(transaction.amount)
    FROM card_holder
        INNER JOIN credit_card ON card_holder.cardholder_id = credit_card.cardholder_id
        INNER JOIN transaction ON credit_card.card_number = transaction.card_number
    WHERE transaction.amount < 2.00
    GROUP BY credit_card.card_number
    ORDER BY SUM(transaction.amount);

CREATE VIEW top_100_transactions_between_7_and_9 AS
    SELECT card_holder.cardholder_id,
        credit_card.card_number,
        transaction.transaction_id,
        transaction.date,
        transaction.amount
    FROM card_holder
        INNER JOIN credit_card ON card_holder.cardholder_id = credit_card.cardholder_id
        INNER JOIN transaction ON credit_card.card_number = transaction.card_number
    WHERE EXTRACT(HOUR FROM transaction.date) BETWEEN 7 AND 8 
    ORDER BY transaction.amount DESC LIMIT 100;

CREATE VIEW top_100_transactions_not_between_7_and_9 AS
    SELECT card_holder.cardholder_id,
        credit_card.card_number,
        transaction.transaction_id,
        transaction.date,
        transaction.amount
    FROM card_holder
        INNER JOIN credit_card ON card_holder.cardholder_id = credit_card.cardholder_id
        INNER JOIN transaction ON credit_card.card_number = transaction.card_number
    WHERE (EXTRACT(HOUR FROM transaction.date) BETWEEN 0 AND 6
    OR EXTRACT(HOUR FROM transaction.date) BETWEEN 9 AND 23)
    AND transaction.amount > 1000.0
    ORDER BY transaction.amount DESC LIMIT 100;

CREATE VIEW top_5_merchants_at_risk_for_fraud AS
    SELECT transaction.merchant_id,
        merchant.name,
        COUNT(transaction.date)
    FROM card_holder
        INNER JOIN credit_card ON card_holder.cardholder_id = credit_card.cardholder_id
        INNER JOIN transaction ON credit_card.card_number = transaction.card_number
        INNER JOIN merchant ON transaction.merchant_id = merchant.merchant_id
    WHERE transaction.amount < 2.00
    GROUP BY transaction.merchant_id, merchant.name
    ORDER BY COUNT(transaction.date) DESC LIMIT 5;