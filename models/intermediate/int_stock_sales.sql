SELECT
    product_id,
    price,
    quantity,
    price * quantity AS revenue
FROM {{ ref("stg_raw__sales")}}
JOIN {{ ref("stg_raw__stock")}}
USING(product_id)