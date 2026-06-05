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









# Ruim 1 - 2
# Neutro 3
# Boa 4 - 5

SELECT
    CASE
        WHEN review_score >= 1 AND review_score <= 2 then 'Ruim'
        WHEN review_score = 3 then 'Neutro'
        WHEN review_score in (4, 5) then 'Bom'
    ELSE
        'Sem score'
    END AS review_quali,
    COUNT(*) AS quantidade
FROM
    tb_order_reviews
GROUP BY
    review_quali
ORDER BY
    quantidade DESC







