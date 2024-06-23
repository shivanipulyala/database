
SELECT * 
FROM customer 
WHERE create_date >= '2006-01-01'::date - INTERVAL '-30 days';