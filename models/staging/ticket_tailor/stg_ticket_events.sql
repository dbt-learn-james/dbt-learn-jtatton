select
    id as event_id,
    name as event_name
from {{ source('ticket_tailor', 'events') }}
