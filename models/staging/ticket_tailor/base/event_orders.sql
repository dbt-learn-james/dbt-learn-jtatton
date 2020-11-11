with final as (
    select
        order_id,
        raw.ticket_tailor.orders
    from
        {{ ref('stg_ticket_orders') }}
)

select * from final