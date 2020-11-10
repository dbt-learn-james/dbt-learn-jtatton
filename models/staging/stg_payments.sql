select
    id as payment_id,
    orderid as order_id,
    sum(amount)/100 as amount

from raw.stripe.payment
where status = 'success'
GROUP BY 1, 2