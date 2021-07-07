-- Had to restructure tables for credit_card_number column
-- DROP TABLE credit_card;
-- DROP TABLE transaction;
-- Get card holders 2 & 18
SELECT card_holder.cardholder_id,
    transaction.amount,
    transaction.date
FROM card_holder
    INNER JOIN credit_card on card_holder.cardholder_id = credit_card.cardholder_id
    INNER JOIN transaction on transaction.card_number = credit_card.card_number
WHERE card_holder.cardholder_id in (2, 18);