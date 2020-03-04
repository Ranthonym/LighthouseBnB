INSERT INTO users (name, email, password) 
VALUES ('John Doe', 'jdoe@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Art Vand', 'avand@gmail.com,$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Meg Orlend', 'megorlend@gmail.com,$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Everglade', 'description', 'https://media.gettyimages.com/photos/giant-panda-bear-picture-id475636556?s=2048x2048', 'https://media.gettyimages.com/photos/giant-panda-bear-picture-id475636556?s=2048x2048', 105, 2, 3, 3, 'Canada', 'Yonge Street', 'Toronto', 'Ontario', 'G4T 8K7', true),
(2, 'Stone Creek', 'description', 'https://media.gettyimages.com/photos/giant-panda-bear-picture-id475636556?s=2048x2048', 'https://media.gettyimages.com/photos/giant-panda-bear-picture-id475636556?s=2048x2048', 250, 3, 4, 5, 'Canada', 'King Street', 'Toronto', 'Ontario', 'M8T 3N7', true),
(3, 'Red Roof', 'description', 'https://media.gettyimages.com/photos/giant-panda-bear-picture-id475636556?s=2048x2048', 'https://media.gettyimages.com/photos/giant-panda-bear-picture-id475636556?s=2048x2048', 105, 2, 3, 3, 'Canada', 'Steeles Avenue', 'Toronto', 'Ontario', 'M7R 3H3', true);


INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 4, 'good'),
(2, 2, 2, 2, 'ok'),
(3, 3, 3, 5, 'great');
