{{
  config(
    materialized = 'incremental',
    transient = False,
    unique_key = 'result_id'
  )
}}

with empty_table as (
    select
        cast( null as string) as result_id,
        cast( null as string) as invocation_id,
        cast( null as string) as unique_id,
        cast( null as string) as database_name,
        cast( null as string) as schema_name,
        cast( null as string) as name,
        cast( null as string) as resource_type,
        cast( null as string) as status,
        cast( null as float64) as execution_time,
        cast( null as int) as rows_affected
)

select * from empty_table
-- This is a filter so we will never actually insert these values
where 1 = 0
