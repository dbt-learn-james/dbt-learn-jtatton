select
    id as issue_id,
    status as issue_status,
    event_id,
    order_id
from
    {{ source('ticket_tailor', 'issued_tickets') }}