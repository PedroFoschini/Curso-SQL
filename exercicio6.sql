SELECT
    order_id,
    review_comment_message
FROM
    tb_order_reviews
WHERE
    review_comment_message
LIKE
    'Parabéns%'



SELECT
    order_id,
    review_comment_message
FROM
    tb_order_reviews
WHERE
    review_comment_message
LIKE
    '%Parabéns%'

