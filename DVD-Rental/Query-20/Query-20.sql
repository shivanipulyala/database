SELECT rental.*
FROM rental
JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.email = 'john.doe@example.com';

-- select * from customer;

