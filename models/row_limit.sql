select *
from {{ ref('dim_hosts_cleansed') }}
limit {{env_var('DBT_ROW_LIMIT')}}