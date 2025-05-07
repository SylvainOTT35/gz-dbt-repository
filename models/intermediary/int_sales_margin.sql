-----rajouter le margin et le purchase_cost en faisant un join de sales et product--
SELECT *,
    ROUND(quantity*purchase_price,2) as purchase_cost,
    ROUND(revenue -(quantity*purchase_price),2) as margin
FROM {{ref('stg_raw__sales')}} 
INNER JOIN {{ref('stg_raw__product')}}
USING (products_id)
