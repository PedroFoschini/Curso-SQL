SELECT
    product_category_name,
    COUNT(product_id) AS total_produtos
FROM
    tb_products
WHERE
    product_category_name = 'artes'



SELECT
    COUNT(product_id) AS total_produtos
FROM
    tb_products
WHERE
    (product_name_lenght * product_height_cm * product_width_cm / 1000) >= 5




SELECT
    COUNT(product_id) AS total_produtos
FROM
    tb_products
WHERE
    (product_name_lenght * product_height_cm * product_width_cm / 1000) < 1 AND product_category_name = 'beleza_saude'



SELECT
    product_category_name,
    AVG(product_description_lenght) AS media_descricao,
    MIN(product_description_lenght) AS min_descricao,
    MAX(product_description_lenght) AS max_descricao
FROM
    tb_products
WHERE
    product_category_name IS NOT NULL
GROUP BY
    product_category_name




SELECT
    product_category_name,
    AVG(product_description_lenght) AS media_descricao,
    MIN(product_description_lenght) AS min_descricao,
    MAX(product_description_lenght) AS max_descricao
FROM
    tb_products
WHERE
    product_category_name IS NOT NULL AND product_description_lenght >= 100
GROUP BY
    product_category_name



SELECT
    product_category_name,
    AVG(product_description_lenght) AS media_descricao,
    MIN(product_description_lenght) AS min_descricao,
    MAX(product_description_lenght) AS max_descricao
FROM
    tb_products
WHERE
    product_category_name IS NOT NULL AND product_description_lenght >= 100
GROUP BY
    product_category_name
HAVING
    AVG(product_description_lenght) >= 500



