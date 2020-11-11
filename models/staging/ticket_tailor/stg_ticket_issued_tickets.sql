select
    id as issue_id,
    event_id
from
    {{ source('ticket_tailor', 'issued_tickets') }}