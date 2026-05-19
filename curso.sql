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