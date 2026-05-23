SELECT
    product_category_name,
    avg(product_weight_g)
FROM
    tb_products
WHERE
    product_category_name = 'perfumaria'
GROUP BY
    product_category_name





SELECT
    product_category_name,
    sum(product_photos_qty),
    avg(product_length_cm)
FROM
    tb_products
WHERE
    product_category_name LIKE '%construcao%'





SELECT
    product_category_name,
    sum(product_photos_qty),
    avg(product_length_cm)
FROM
    tb_products
WHERE
    product_category_name LIKE '%construcao%'
GROUP BY
    product_category_name

