SELECT
    *
FROM 
    tb_order_payments
WHERE 
    payment_installments <= 3 
AND
    payment_type = 'boleto'
AND
    payment_value > 50



SELECT
    *
FROM
    tb_products
WHERE
    product_category_name = 'perfurmaria'
OR
    product_category_name = 'artes'



SELECT
    *
FROM
    tb_order_payments
WHERE
    payment_value > 100
AND
    (
    payment_type = 'boleto'
OR
    payment_type = 'voucher'
    )



SELECT
    *
FROM
    tb_products
WHERE
    product_category_name
IN
    ('perfumaria', 'artes')
AND
    product_photos_qty
IN
    (1, 2, 3)



SELECT
    DISTINCT(
    product_category_name
    )
FROM
    tb_products




SELECT
    *
FROM
    tb_products
WHERE
    product_category_name
LIKE
    '%construcao%'




SELECT
    order_id,
    review_comment_title,
    review_comment_message
FROM
    tb_order_reviews
WHERE
    review_comment_title
    IS NOT NULL
AND
    review_comment_message
    IS NULL



SELECT
    produtos.product_id
    AS
    'ID',
    produtos.product_category_name
    AS
    'CATEGORIA'
FROM
    tb_products
    AS
    produtos


SELECT
    COUNT(
        product_id
    )
    AS
    'Qtd Produtos'
FROM
    tb_products



SELECT
    COUNT(
        order_id
    )
    AS
    'Pedidos entregues'
FROM
    tb_orders
WHERE
    order_status = 'delivered'





SELECT
    COUNT(
        product_id
    )
    AS
    'Produtos construção'
FROM
    tb_products
WHERE
    product_category_name
LIKE
    '%construcao%'
AND
    product_weight_g > 350


SELECT
    COUNT(
    DISTINCT(
        order_id
    )
    )
    AS
    'Pedidos únicos',
    COUNT(
        order_id
    )
    AS
    'Contagem Total'
FROM
    tb_order_items



SELECT
    product_id,
    product_name_lenght,
    product_description_lenght,
    product_name_lenght + product_description_lenght
    AS
    'soma colunas',
    product_name_lenght - product_description_lenght
    AS
    'subtração colunas',
    product_name_lenght * product_description_lenght
    AS
    'multiplicação colunas',
    product_name_lenght + product_description_lenght
    AS
    'divisão colunas'
FROM
    tb_products




SELECT
    seller_state,
    COUNT(
        DISTINCT(
        seller_city
        )
    )
    AS
    'Quantidade de cidades'
FROM
    tb_sellers
GROUP BY
    seller_state


-- GROUP BY pode ser referênciado pela posição do select, no caso 1
SELECT
    order_id,
    COUNT(
        product_id
    )
FROM
    tb_order_items
GROUP BY
    1
    


SELECT
    DISTINCT(
        order_id
    ),
    COUNT(
        product_id
    )
    AS
    qtd_prod,
    SUM(
        price
    )
    AS
    'Valor total'
FROM
    tb_order_items
GROUP BY
    order_id
ORDER BY
    qtd_prod
    DESC



SELECT
    DISTINCT(order_id),
    COUNT(product_id) AS qtd_prod,
    SUM(price) AS 'Valor total',
    SUM(price) / COUNT(product_id) AS ticket_medio
FROM
    tb_order_items
GROUP BY
    order_id
ORDER BY
    qtd_prod ASC



SELECT
    payment_type,
    avg(payment_installments) AS media_qtd_parcelas,
    avg(payment_value) AS valor_medio_compra
FROM
    tb_order_payments
WHERE
    payment_type = 'credit_card'
GROUP BY
    payment_type




SELECT
    product_category_name,
    MIN(product_photos_qty) AS qtd_minima,
    MAX(product_photos_qty) AS qtd_maxima
FROM
    tb_products
WHERE
    product_category_name IS NOT NULL
GROUP BY
    product_category_name




SELECT
    customer_state,
    COUNT(DISTINCT(customer_city)) AS qtd_cidades
FROM
    tb_customers
GROUP BY
    customer_state
ORDER BY
    customer_city DESC





SELECT
    *
FROM (
    SELECT
        order_id,
        SUM(price) AS valor_total
    FROM
        tb_order_items
    GROUP BY
        order_id
)
WHERE
    valor_total >= 1000






SELECT
    order_id,
    SUM(price) as valor_total
FROM
    tb_order_items
GROUP BY
    order_id
HAVING
    valor_total >= 4000
ORDER BY
    valor_total DESC



