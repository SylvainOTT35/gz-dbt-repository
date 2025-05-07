-----mart pour la team finance----
SELECT
    date_date,
    Count(orders_id) AS nb_transaction,
    ROUND(SUM(revenue),2) AS revenue,
    ROUND(AVG(revenue),2) AS average_revenue,
    ROUND(SUM(margin),2) AS margin,
    ROUND(SUM(operational_margin),2) as operational_margin,
    ROUND(SUM(purchase_cost),2) AS purchase_cost,
    ROUND(SUM(shipping_fee),2) AS shipping_fee,
    ROUND(SUM(logcost),2) AS logcost,
    SUM(quantity) AS quantity
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC