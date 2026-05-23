SELECT
    product_category_name
FROM
    tb_products
WHERE
    product_category_name IS NOT NULL
GROUP BY
    product_category_name
ORDER BY
    product_category_name ASC




SELECT
    *
FROM
    tb_products
WHERE
    product_category_name = 'perfumaria'
ORDER BY
    product_weight_g DESC




SELECT
    product_category_name,
    COUNT(DISTINCT(product_id)) as qtd_produtos
FROM
    tb_products
GROUP BY
    product_category_name
ORDER BY
    qtd_produtos DESC
LIMIT 5