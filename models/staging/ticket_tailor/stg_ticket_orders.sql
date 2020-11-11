select
    id as order_id,
    event_summary
from
    {{ source('ticket_tailor', 'orders') }}