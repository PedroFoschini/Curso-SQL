SELECT
    seller_state,
    CASE
        WHEN seller_state = 'SP' THEN 'São Paulo'
        WHEN seller_state = 'RJ' THEN 'Rio de Janeiro'
        WHEN seller_state = 'PR' THEN 'Paraná'
        WHEN seller_state = 'DF' THEN 'Distrito Federal'
    ELSE
        'Outro'
    END AS nome_estado    
FROM
    tb_sellers
GROUP BY
    nome_estado 