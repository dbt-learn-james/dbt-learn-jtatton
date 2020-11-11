select
    id as order_id,
    status as order_status,
    event_summary
from
    {{ source('ticket_tailor', 'orders') }}