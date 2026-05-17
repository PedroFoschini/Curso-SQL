SELECT
    *
FROM
    tb_products
WHERE
    product_category_name = 'perfumaria'
AND
    product_weight_g > 100


SELECT
    *
FROM
    tb_order_items
WHERE
    price > 50
AND
    freight_value < 15