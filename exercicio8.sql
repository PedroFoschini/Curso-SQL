SELECT
    product_id,
    product_width_cm * product_length_cm * product_height_cm
    AS
    'Volume'
FROM
    tb_products