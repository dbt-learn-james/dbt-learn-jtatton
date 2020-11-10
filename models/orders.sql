with payments_placed as (

    select 
        payment_id, 
        order_id, 
        sum(amount)/100 as amount 
    from {{ ref('stg_payments')}}
    where payment_status = 'success'
    group by 1, 2
),

orders_placed as (

    select * from {{ ref('stg_orders') }}

),

orders as (

    select
        customer_id,
        order_id,
        order_date,
        amount

    from orders_placed

    left join payments_placed using (order_id)
)

select * from orders