\c cities_dev;

INSERT INTO cities (city, country, image, has_visited, ticket_price) VALUES
('Dhaka', 'Bangladesh', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/2.%E0%A6%B6%E0%A6%BE%E0%A6%AA%E0%A6%B2%E0%A6%BE_%E0%A6%9A%E0%A6%A4%E0%A7%8D%E0%A6%AC%E0%A6%B0.jpg/1920px-2.%E0%A6%B6%E0%A6%BE%E0%A6%AA%E0%A6%B2%E0%A6%BE_%E0%A6%9A%E0%A6%A4%E0%A7%8D%E0%A6%AC%E0%A6%B0.jpg', true, 650),
('Nice', 'France', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Nizza-C%C3%B4te_d%27Azur.jpg/1920px-Nizza-C%C3%B4te_d%27Azur.jpg', false, 450),
('New York City', 'USA', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1920px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg', true, 2.75);

INSERT INTO comments (comment_id, commenter, title, content)
VALUES
('1', 'Sabri', 'My City!', 'I am going to go on vacation there with my family'),
('2', 'Frantz', 'Southern French City', 'Nice is cleaner and much more beautiful than Paris'),
('3', 'Andre', 'Pigeon City', 'I am tired of this city!'),
('1', 'Samiha', 'Born and Raised', 'I have so much good childhood memories from this place'),
('3', 'Andrew', 'I luv NY', 'I will never leave this place. It is my home'),
('3', 'Laurence', 'Gotta go', 'Love this city, but it was time for me to go'),
