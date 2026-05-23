SELECT
    payment_type,
    SUM(payment_value)
FROM
    tb_order_payments
WHERE
    payment_type = 'credit_card'
GROUP BY
    payment_type



SELECT
    SUM(payment_installments) AS qtd_parcelas,
    SUM(payment_value) / SUM(payment_installments) AS media_parcelas
FROM
    tb_order_payments
WHERE
    payment_type = 'credit_card'