with final as (
    select
        order_id,
        order_status,
        event_summary:id as event_id
    from
        {{ ref('stg_ticket_orders') }}
)

select * from final
