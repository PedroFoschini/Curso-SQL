SELECT
    COUNT(
        review_id
    )
    AS
    'Reviews score >=4'
FROM
    tb_order_reviews
WHERE
    review_score >= 4


