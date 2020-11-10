select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    amount as amount,
    status as payment_status,
    created as payment_created

from {{ source('stripe', 'payment') }}