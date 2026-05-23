SELECT
    payment_type,
    MIN(payment_value) AS valor_minimo,
    MAX(payment_value) AS valor_maximo
FROM
    tb_order_payments
WHERE
    payment_type IS NOT 'not_defined'
GROUP BY
    payment_type