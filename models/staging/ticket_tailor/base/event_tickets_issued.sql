with final as (
    select
        issue_id,
        event_id,
        order_id
    from
        {{ ref('stg_ticket_issued_tickets') }}
    where
        issue_status = 'valid'
)

select * from final