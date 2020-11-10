select
    id as payment_id,
    orderid as order_id,
    amount as amount,
    status as payment_status,
    created as payment_created

from raw.stripe.payment