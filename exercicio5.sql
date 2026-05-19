SELECT
    *
FROM
    tb_customers
WHERE
    customer_state
IN
    ('SP', 'RJ')


SELECT
    *
FROM
    tb_order_reviews
WHERE
    review_score
IN
    (3, 4, 5)