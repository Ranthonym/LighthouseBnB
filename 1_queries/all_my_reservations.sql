SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;



-- Alternatve join path

-- SELECT reservations.*, properties.*, avg(property_reviews.rating) as average_rating
--  FROM property_reviews
--  JOIN properties ON property_reviews.property_id = properties.id
--  JOIN reservations ON properties.id = reservations.property_id
--  WHERE reservations.end_date < now()::date 
--  AND reservations.guest_id = 1
--  GROUP BY  properties.id, reservations.id
--  LIMIT 10;