{% set results_list = dbt_utils.get_column_values(ref('stg_payments'), 'payment_method') %}

with payments as (
select * from {{ ref('stg_payments') }}
), pivot as (
  -- can we omit the comma on the final element? Yes!
  -- can we automatically get all the values in the column dynamically? Yes!
  select
    order_id,
    {% for pm in results_list -%}
    sum(case when payment_method = '{{ pm }}' then amount else 0 end) as {{ pm }}_amount
    {%- if not loop.last -%} , {%- endif %}
    {% endfor %}
  from payments
  group by order_id
)
select *
from pivot