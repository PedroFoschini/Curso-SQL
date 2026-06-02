SELECT
    DISTINCT
    CASE
        WHEN
            product_category_name = 'construcao_ferramentas_construcao'
        OR
            product_category_name = 'construcao_ferramentas_ferramentas'
        THEN
            'construcao'
        ELSE
            product_category_name
        END AS
            categorias_tratadas
FROM
    tb_products
ORDER BY
    product_category_name






SELECT
    DISTINCT
        CASE
            WHEN product_category_name LIKE '%construcao%' THEN 'construcao'
            WHEN product_category_name LIKE '%fashion%' THEN 'fashion'
            WHEN product_category_name LIKE '%moveis%' THEN 'moveis'
            WHEN product_category_name LIKE '%casa%' THEN 'casa'        
            WHEN product_category_name LIKE '%livros%' THEN 'livros'        
            ELSE product_category_name
        END AS categorias_tratadas
FROM
    tb_products
ORDER BY
    product_category_name













