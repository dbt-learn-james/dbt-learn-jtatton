with event_orders as (
    select * from {{ ref('event_orders') }}
),

issued_tickets as (
    select * from {{ ref('event_tickets_issued') }}
),

events as (
    select * from {{ ref('stg_ticket_events') }}
),

tickets_sold_issued as (
    select * from
    events
    join event_orders using(event_id)
    left join issued_tickets using(event_id, order_id)
)

select * from tickets_sold_issued
