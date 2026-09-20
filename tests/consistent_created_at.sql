with l as (
    select * from {{ ref('dim_listings_cleansed') }}
),

r as(
    select * from {{ ref('fct_reviews') }}
)

select 
l.*,
r.review_date
from l
inner join r on (l.listing_id = r.listing_id)
where (to_date(r.review_date)) < (to_date(l.created_at))