---ajouter operational_margin avec join int_orders_margin avec stg_raw_ship---
SELECT
    date_date,
    orders_id,
    revenue,
    quantity,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost,
    ROUND(margin + shipping_fee - logcost - ship_cost,2) AS operational_margin
FROM {{ref("int_orders_margin")}}
LEFT JOIN {{ref("stg_raw__ship")}}
USING(orders_id)