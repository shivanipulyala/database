with rental_history as (
   select
      customer_id
      ,rental_date
      ,return_date
      ,rental_date + interval '10 day' as ban_date
      ,coalesce(return_date, now())-rental_date as days_out
   from rental
)
select count(*) as number_of_lost_rentals
from rental_history where days_out >= interval '10 day'

-- select * from rental;