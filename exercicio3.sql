SELECT
    *
FROM
    tb_customers
WHERE
    customer_state = 'SP'
OR
    customer_state = 'RJ'


SELECT
    *
FROM
    tb_order_reviews
WHERE
    review_score = 4
OR
    review_score = 5