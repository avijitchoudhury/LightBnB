INSERT INTO users (id, name, email, password)
VALUES (1, 'Eva Stanley', 'sebastianguerra@ymail.com', '$2a$10$FB
/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users (id, name, email, password)
VALUES (2, 'Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB
/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users (id, name, email, password)
VALUES(3, 'Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB
/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, city, province, street, post_code, active)
VALUES(1, 'blank corner', 'description', 'www.google.com/thumbnails', 'www.google.com/coverphoto', 1200, 6, 4, 8, 'Canada', 'Toronto', 'Ontario', '123 Jump Street', 'MK4D9J', true);

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, city, province, street, post_code, active)
VALUES(2, 'Habit mix', 'descrition', 'www.tsn.ca/thumbnails', 'www,tsn.ca/coverphoto', 1900, 4, 6, 12, 'Canada', 'Calgary', 'Alberta', '321 Not A Real Street', 'k1s3j4', true)

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, city, province, street, post_code, active)
VALUES(3, 'Headed Know', 'description', 'www.montreal.com/thumbnails', 'www.montreal.com/coverphotos', 2200, 5,8, 12, 'Canada', 'Montreal', 'Quebec', '123 Rue street', 'k9h8j4', false)

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES (2018-09-11, 2018-09-26, 313, 399),
(2019-01-04, 2019-02-01, 515, 628),
(2021-10-01, 2021-10-14, 217, 93);

INSERT INTO property_reviews (guest_id, reservation_id, property_id, rating, message)
VALUES(2, 10, 5, 3, 'message'),
(1, 1, 4, 4, 'message'),
(3, 3, 5, 5, 'message');

