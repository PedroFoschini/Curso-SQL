SELECT
    *
FROM
    tb_products
WHERE
    product_weight_g >= 600
AND    
    (
    product_category_name = 'perfumaria'
OR
    product_category_name = 'artes'
    )
    