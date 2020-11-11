select
    id as event_id,
    name as ticket_name
from {{ source('ticket_tailor', 'events') }}
