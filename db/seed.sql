-- \c cities_dev;

-- INSERT INTO cities (city, country, image, has_visited, ticket_price) VALUES
-- ('Dhaka', 'Bangladesh', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/2.%E0%A6%B6%E0%A6%BE%E0%A6%AA%E0%A6%B2%E0%A6%BE_%E0%A6%9A%E0%A6%A4%E0%A7%8D%E0%A6%AC%E0%A6%B0.jpg/1920px-2.%E0%A6%B6%E0%A6%BE%E0%A6%AA%E0%A6%B2%E0%A6%BE_%E0%A6%9A%E0%A6%A4%E0%A7%8D%E0%A6%AC%E0%A6%B0.jpg', true, 650),
-- ('Nice', 'France', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Nizza-C%C3%B4te_d%27Azur.jpg/1920px-Nizza-C%C3%B4te_d%27Azur.jpg', false, 450),
-- ('New York City', 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1920px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg', true, 2.75);

-- INSERT INTO comments (comment_id, commenter, title, content)
-- VALUES
-- ('1', 'Sabri', 'My City!', 'I am going to go on vacation there with my family'),
-- ('2', 'Frantz', 'Southern French City', 'Nice is cleaner and much more beautiful than Paris'),
-- ('3', 'Andre', 'Pigeon City', 'I am tired of this city!'),
-- ('1', 'Samiha', 'Born and Raised', 'I have so much good childhood memories from this place'),
-- ('3', 'Andrew', 'I luv NY', 'I will never leave this place. It is my home'),
-- ('3', 'Laurence', 'Gotta go', 'Love this city, but it was time for me to go'),

\c cities_dev;


INSERT INTO cities (city, country, image, has_visited, ticket_price) VALUES
('Dhaka', 'Bangladesh', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/2.%E0%A6%B6%E0%A6%BE%E0%A6%AA%E0%A6%B2%E0%A6%BE_%E0%A6%9A%E0%A6%A4%E0%A7%8D%E0%A6%AC%E0%A6%B0.jpg/1920px-2.%E0%A6%B6%E0%A6%BE%E0%A6%AA%E0%A6%B2%E0%A6%BE_%E0%A6%9A%E0%A6%A4%E0%A7%8D%E0%A6%AC%E0%A6%B0.jpg', true, 75),
('Nice', 'France', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Nizza-C%C3%B4te_d%27Azur.jpg/1920px-Nizza-C%C3%B4te_d%27Azur.jpg', false, 97),
('New York City', 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1920px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg', true, 179),
('Nairobi', 'Kenya', 'https://www.micato.com/wp-content/uploads/2018/09/Nairobi_Skyline.jpg',false, 76),
('Tokyo', 'Japan', 'https://facts.net/wp-content/uploads/2023/06/45-facts-about-tokyo-1688094762.jpeg', true, 42),
('Jacmel', 'Haiti', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/JacmelView.jpg/1200px-JacmelView.jpg', true, 60),
('Marsa Matruh', 'Egypt', 'https://www.aviontourism.com/images/1920-900-fix/3925d501-d4e5-4421-9320-af302a071f9b', true, 78),
('Auckland', 'New Zealand', 'https://www.newzealand.com/assets/Tourism-NZ/Auckland/98618569ff/img-1536065871-6217-4403-p-10D1D0BD-B88E-AAB3-AE3F2E903EF65717-2544003__aWxvdmVrZWxseQo_CropResizeWzEyMDAsNjMwLDc1LCJqcGciXQ.jpg', false, 92),
('Rio de Janeiro', 'Brazil', 'https://content.r9cdn.net/rimg/dimg/54/ed/eb0f657a-lm-159298-16d6b936db3.jpg?crop=true&width=1020&height=498', true, 89)
;

INSERT INTO comments (city_id, commenter, title, content)
VALUES
(1, 'Sabri', 'My City!', 'I am going to go on vacation there with my family'),
(2, 'Frantz', 'Southern French City', 'Nice is cleaner and much more beautiful than Paris'),
(3, 'Andre', 'Pigeon City', 'I am tired of this city!'),
(1, 'Samiha', 'Born and Raised', 'I have so much good childhood memories from this place'),
(3, 'Andrew', 'I luv NY', 'I will never leave this place. It is my home'),
(3, 'Laurence', 'Gotta go', 'Love this city, but it was time for me to go'),
(7, 'Ahmed', 'Amazing Beaches', 'Anyone should go visit Marsa Matruh for the beaches alone'),
(5, 'Doreen', 'Honeymoon', 'I had my honeymoon there and it was magical'),
(6, 'Frantz', 'THE city to visit', 'There is so much beauty and history in that place'),
(9, 'Camila', 'Home', 'I miss this place, it was where I was raised and I have such great memories of this place'),
(9, 'Genesis', 'Learning', 'I have to go there to practice my Portuguese lol'),
(8, 'Thomas', 'Kangaroos?', 'Are there kangaroos in New Zealand? Either way, I am going!'),
(4, 'Malcolm', 'Lively city', 'I heard so much about this city. I am curious about it');
