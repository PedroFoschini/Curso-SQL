SELECT
    *
FROM tb_orders
WHERE order_status = 'delivered'


SELECT
    *
FROM tb_customers
WHERE customer_state = 'SP'

SELECT
    *
FROM tb_order_payments
WHERE payment_type = 'credit_card'