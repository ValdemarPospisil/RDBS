INSERT INTO users (name, email, password) VALUES
    ('John Doe', 'johndoe@example.com', 'password123'),
    ('Jane Smith', 'janesmith@example.com', 'securepass'),
    ('Alice Brown', 'alicebrown@example.com', 'alice123'),
    ('Bob Johnson', 'bobjohnson@example.com', 'bobsecure'),
    ('Carol White', 'carolwhite@example.com', 'whitecarol456'),
    ('Dave Wilson', 'davewilson@example.com', 'davewilson789'),
    ('Emma Taylor', 'emmataylor@example.com', 'emmapass123'),
    ('Frank Harris', 'frankharris@example.com', 'frankhpass'),
    ('Grace Lee', 'gracelee@example.com', 'lee123grace'),
    ('Henry Clark', 'henryclark@example.com', 'henrypass'),
    ('Isabella Evans', 'isabellaevans@example.com', 'isabellapass'),
    ('Jack Walker', 'jackwalker@example.com', 'walkerpass'),
    ('Karen Young', 'karenyoung@example.com', 'karen123'),
    ('Liam Turner', 'liamturner@example.com', 'turnerpass'),
    ('Mia Roberts', 'miaroberts@example.com', 'miaroberts987'),
    ('Noah Scott', 'noahscott@example.com', 'noahpass123'),
    ('Olivia Green', 'oliviagreen@example.com', 'greenolivia'),
    ('Paul King', 'paulking@example.com', 'paulking567'),
    ('Quinn Hall', 'quinnhall@example.com', 'quinnhallpass'),
    ('Rachel Allen', 'rachelallen@example.com', 'rachel123');

   
   INSERT INTO writer (id_writer, name, surname) VALUES
    (1, 'J.K.', 'Rowling'),                  -- Harry Potter series
    (2, 'Brandon', 'Sanderson'),             -- Stormlight Archive & Mistborn
    (3, 'George R.R.', 'Martin'),            -- A Song of Ice and Fire
    (4, 'C.S.', 'Lewis'),                    -- The Chronicles of Narnia
    (5, 'Frank', 'Herbert'),                 -- Dune
    (6, 'Orson Scott', 'Card'),              -- Ender's Game
    (7, 'Neil', 'Gaiman'),                   -- American Gods
    (8, 'Harper', 'Lee'),                    -- To Kill a Mockingbird
    (9, 'Isaac', 'Asimov'),                  -- Foundation & I, Robot
    (10, 'Stephen', 'King'),                 -- The Dark Tower & other horror
    (11, 'Arthur Conan', 'Doyle'),           -- Sherlock Holmes series
    (12, 'J.R.R.', 'Tolkien'),               -- Lord of the Rings & The Hobbit
    (13, 'George', 'Orwell'),                -- 1984
    (14, 'Jane', 'Austen'),                  -- Pride and Prejudice
    (15, 'J.D.', 'Salinger'),                -- The Catcher in the Rye
    (16, 'F. Scott', 'Fitzgerald'),          -- The Great Gatsby
    (17, 'Herman', 'Melville'),              -- Moby-Dick
    (18, 'Cormac', 'McCarthy'),              -- The Road
    (19, 'Aldous', 'Huxley'),                -- Brave New World
    (20, 'Paulo', 'Coelho'),                 -- The Alchemist
    (21, 'Mary', 'Shelley'),                 -- Frankenstein
    (22, 'Oscar', 'Wilde'),                  -- The Picture of Dorian Gray
    (23, 'Gabriel Garcia', 'Marquez'),       -- One Hundred Years of Solitude
    (24, 'Kurt', 'Vonnegut'),                -- Slaughterhouse-Five
    (25, 'Leo', 'Tolstoy'),                  -- Anna Karenina
    (26, 'Fyodor', 'Dostoevsky'),            -- Crime and Punishment
    (27, 'Yann', 'Martel'),                  -- Life of Pi
    (28, 'Markus', 'Zusak'),                 -- The Book Thief
    (29, 'Joseph', 'Heller'),                -- Catch-22
    (30, 'Toni', 'Morrison'),                -- Beloved
    (31, 'Shirley', 'Jackson'),              -- The Haunting of Hill House
    (32, 'Josh', 'Malerman'),                -- Bird Box
    (33, 'Max', 'Brooks'),                   -- World War Z
    (34, 'Mark', 'Z. Danielewski'),          -- House of Leaves
    (35, 'William', 'Peter Blatty'),         -- The Exorcist
    (36, 'Stephen', 'King'),                 -- It, The Shining
    (37, 'Bram', 'Stoker'),                  -- Dracula
    (38, 'Rebecca', 'Skloot'),               -- The Immortal Life of Henrietta Lacks
    (39, 'Michelle', 'Obama'),               -- Becoming
    (40, 'Tara', 'Westover'),                -- Educated
    (41, 'Yuval Noah', 'Harari'),            -- Sapiens
    (42, 'David', 'McCullough'),             -- The Wright Brothers
    (43, 'Truman', 'Capote'),                -- In Cold Blood
    (44, 'Laura', 'Hillenbrand'),            -- Unbroken
    (45, 'Erik', 'Larson'),                  -- The Devil in the White City
    (46, 'Anne', 'Frank'),                   -- The Diary of a Young Girl
    (47, 'Rachel', 'Carson'),                -- Silent Spring
    (48, 'Agatha', 'Christie'),              -- Murder on the Orient Express
    (49, 'Dashiell', 'Hammett'),             -- The Maltese Falcon
    (50, 'Gillian', 'Flynn'),                -- Gone Girl
    (51, 'Stieg', 'Larsson');                -- The Girl with the Dragon Tattoo


   
INSERT INTO genre (name, description) VALUES
    ('Fantasy', 'A genre of speculative fiction set in a fictional universe, often inspired by real-world myth and folklore.'),
    ('Science Fiction', 'A genre dealing with imaginative concepts such as futuristic science, space exploration, time travel, and extraterrestrial life.'),
    ('Mystery', 'A genre focused on the investigation of a crime, often involving a detective or amateur sleuth.'),
    ('Horror', 'A genre intended to evoke fear, shock, or disgust, often involving supernatural elements.'),
    ('Romance', 'A genre centered on romantic relationships between characters, often with an emotionally satisfying ending.'),
    ('Thriller', 'A genre characterized by suspense, tension, and excitement, often involving danger or high stakes.'),
    ('Historical Fiction', 'A genre that reconstructs historical events and periods, often blending fictional and real characters.'),
    ('Biography', 'A narrative genre that details the life story of an individual, often a notable figure.'),
    ('Adventure', 'A genre involving action-filled stories, often with exploration, travel, and risk-taking.'),
    ('Non-Fiction', 'A genre based on factual information, providing insights into real events, people, and ideas.');

INSERT INTO series (name, description) VALUES
    ('Harry Potter', 'A series of seven fantasy novels that chronicles the lives of a young wizard, Harry Potter, and his friends as they face challenges in a magical world.'),
    ('The Stormlight Archive', 'An epic fantasy series set on the world of Roshar, where ancient legends, magic, and wars shape the fate of nations and individuals.'),
    ('Mistborn', 'A high fantasy series that follows people with special abilities in a world where ash falls from the sky and mist dominates the nights.'),
    ('A Song of Ice and Fire', 'A fantasy epic centered around the fight for the Iron Throne and the political and supernatural struggles of various factions.'),
    ('The Lord of the Rings', 'An epic high fantasy series following the journey to destroy a powerful ring and save Middle-earth.'),
    ('The Chronicles of Narnia', 'A series of seven fantasy novels set in the fictional realm of Narnia, which follows children who discover and explore this magical world.'),
    ('Foundation', 'A science fiction series about the struggle to preserve knowledge and rebuild civilization amidst the fall of a galactic empire.'),
    ('Sherlock Holmes', 'Detective fiction series featuring the legendary detective Sherlock Holmes and his investigations.'),
    ('Percy Jackson and the Olympians', 'A young adult fantasy series about Percy Jackson, a demigod son of Poseidon, and his adventures in the world of Greek mythology.'),
    ('Discworld', 'A humorous fantasy series set in a flat world balanced on the backs of four elephants who stand on the back of a giant turtle.'),
    ('The Dark Tower', 'A blend of horror, fantasy, and western that follows a gunslinger on a quest for the Dark Tower.'),
    ('Dune', 'A science fiction epic that explores themes of power, survival, and humanity on the desert planet of Arrakis.'),
    ('Enders Game', 'A science fiction series focusing on a young genius recruited to defend humanity from an alien threat.'),
    ('Wheel of Time', 'A high fantasy series centered around a group of young villagers drawn into a struggle between Light and Dark forces.');


   INSERT INTO book (name, pages, datePublished, ISBN, description, series_id) VALUES
    -- Harry Potter Series
    ('Harry Potter and the Philosopher''s Stone', 223, '1997-06-26', 9780747532699, 'The first book in the Harry Potter series, introducing Harry as he discovers he is a wizard.', 1),
    ('Harry Potter and the Chamber of Secrets', 251, '1998-07-02', 9780747538493, 'Harry returns to Hogwarts for his second year and faces the mystery of the Chamber of Secrets.', 1),
    ('Harry Potter and the Prisoner of Azkaban', 317, '1999-07-08', 9780747542155, 'Harry''s third year brings the arrival of Sirius Black, a fugitive with ties to his past.', 1),

    -- The Stormlight Archive Series
    ('The Way of Kings', 1007, '2010-08-31', 9780765326355, 'The first book in The Stormlight Archive, introducing the complex world of Roshar and its characters.', 2),
    ('Words of Radiance', 1088, '2014-03-04', 9780765326362, 'The second book in The Stormlight Archive, continuing the story of Kaladin, Shallan, and Dalinar.', 2),
    ('Oathbringer', 1243, '2017-11-14', 9780765326379, 'The third book in The Stormlight Archive, where characters must confront their pasts and dark secrets.', 2),

    -- Mistborn Series
    ('Mistborn: The Final Empire', 541, '2006-07-17', 9780765311788, 'In a world of ash and mist, a young street thief discovers she has incredible powers.', 3),
    ('Mistborn: The Well of Ascension', 590, '2007-08-21', 9780765316882, 'Vin and her allies must hold together their fragile empire as new threats emerge.', 3),
    ('Mistborn: The Hero of Ages', 572, '2008-10-14', 9780765316899, 'The concluding book of the first Mistborn trilogy, where everything Vin and her friends know is challenged.', 3),

    -- A Song of Ice and Fire Series
    ('A Game of Thrones', 694, '1996-08-06', 9780553103540, 'The first book in A Song of Ice and Fire, where noble families vie for control of the Iron Throne.', 4),
    ('A Clash of Kings', 768, '1999-02-02', 9780553108032, 'The Seven Kingdoms face turmoil and betrayal as rival factions vie for the throne.', 4),
    ('A Storm of Swords', 973, '2000-08-08', 9780553106633, 'The third book in the series, where alliances shift and unexpected heroes emerge.', 4),

    -- The Chronicles of Narnia Series
    ('The Lion, the Witch and the Wardrobe', 208, '1950-10-16', 9780064471046, 'The first published novel of Narnia, where children discover a magical world.', 6),
    ('Prince Caspian', 223, '1951-10-15', 9780064471053, 'The children return to Narnia and aid Prince Caspian in his struggle.', 6),

    -- Standalone books or other series
    ('Dune', 412, '1965-06-01', 9780441013593, 'In a desert world, Paul Atreides becomes embroiled in a battle over a vital resource.', 12),
    ('Ender''s Game', 324, '1985-01-15', 9780812550702, 'A young boy is trained in a military school to defend Earth from an alien threat.', 13),
    ('American Gods', 465, '2001-06-19', 9780062472106, 'A man named Shadow encounters gods of old and new as he travels across America.', NULL),
    ('To Kill a Mockingbird', 281, '1960-07-11', 9780061120084, 'A novel set in the American South that deals with themes of racism and justice.', NULL),
    ('Foundation', 255, '1951-05-01', 9780553293357, 'The first book in the Foundation series, exploring the fall of a Galactic Empire.', 7),
    ('I, Robot', 253, '1950-12-02', 9780553382563, 'A collection of stories on robots and artificial intelligence.', NULL),

   	-- The Dark Tower Series
    ('The Gunslinger', 224, '1982-06-10', 9780451210842, 'The first book in Stephen King’s The Dark Tower series, introducing Roland Deschain, the last gunslinger.', 8),
    ('The Drawing of the Three', 463, '1987-05-03', 9780451210858, 'Roland continues his journey in this second installment of The Dark Tower series, where he draws three companions.', 8),
    ('The Waste Lands', 512, '1991-08-01', 9780451210867, 'The third book of The Dark Tower series, where Roland and his companions traverse a desolate landscape.', 8),
    ('Wizard and Glass', 887, '1997-11-04', 9780451210875, 'The fourth book in The Dark Tower series, delving into Roland’s tragic past and a haunted love story.', 8);

   INSERT INTO book (name, pages, datePublished, ISBN, description, series_id) VALUES
    -- Sherlock Holmes Series
    ('A Study in Scarlet', 188, '1887-11-01', 9780465524935, 'Sherlock Holmes and Dr. Watson investigate a murder in this debut novel of Arthur Conan Doyle’s famous detective.', 9),
    ('The Sign of the Four', 209, '1890-02-14', 9780586212417, 'Holmes and Watson are drawn into a mystery involving stolen treasure and a hidden pact.', 9),
    ('The Adventures of Sherlock Holmes', 307, '1892-10-14', 9780552512418, 'A collection of twelve short stories that first introduced the world to Sherlock Holmes.', 9),
    ('The Hound of the Baskervilles', 256, '1902-04-01', 9780553692419, 'Holmes investigates the mystery of a legendary beast terrorizing the Baskerville family.', 9),

    -- The Lord of the Rings Series
    ('The Fellowship of the Ring', 423, '1954-07-29', 9780261103573, 'The first part of The Lord of the Rings, where Frodo embarks on a perilous journey to destroy the One Ring.', 5),
    ('The Two Towers', 352, '1954-11-11', 9780261103580, 'The second part of The Lord of the Rings, where the Fellowship faces new threats and divides on separate journeys.', 5),
    ('The Return of the King', 416, '1955-10-20', 9780261103597, 'The epic conclusion of The Lord of the Rings, with the final battle for Middle-earth.', 5),

   ('1984', 328, '1949-06-08', 9780451524935, 'George Orwell’s dystopian novel about a totalitarian regime under Big Brother.', NULL),
    ('Pride and Prejudice', 279, '1813-01-28', 9780141439518, 'Jane Austen’s classic romance novel featuring Elizabeth Bennet and Mr. Darcy.', NULL),
    ('The Catcher in the Rye', 214, '1951-07-16', 9780316769488, 'J.D. Salinger’s story of teenage angst and rebellion narrated by Holden Caulfield.', NULL),
    ('The Great Gatsby', 180, '1925-04-10', 9780743273565, 'F. Scott Fitzgerald’s novel set in the Jazz Age, examining wealth, love, and the American Dream.', NULL),
    ('Moby-Dick', 635, '1851-10-18', 9781503280786, 'Herman Melville’s tale of the obsessive quest of Captain Ahab for the white whale, Moby Dick.', NULL),
    ('The Road', 287, '2006-09-26', 9780307387899, 'A post-apocalyptic novel by Cormac McCarthy about a father and son journeying through a devastated America.', NULL),
    ('Brave New World', 311, '1932-01-01', 9780060850524, 'Aldous Huxley’s vision of a future society based on consumerism and genetic manipulation.', NULL),
    ('The Alchemist', 208, '1988-04-15', 9780061122415, 'Paulo Coelho’s philosophical novel about a shepherd’s journey to find his personal legend.', NULL),
    ('Frankenstein', 280, '1818-01-01', 9780486282114, 'Mary Shelley’s classic tale of science, hubris, and the monstrous consequences of ambition.', NULL),
    ('The Picture of Dorian Gray', 254, '1890-07-20', 9780141439570, 'Oscar Wilde’s story about a young man who wishes for eternal youth while his portrait ages.', NULL),
    ('One Hundred Years of Solitude', 417, '1967-06-05', 9780060883286, 'Gabriel García Márquez’s multi-generational tale of the Buendía family in the town of Macondo.', NULL),
    ('Slaughterhouse-Five', 275, '1969-03-31', 9780440180296, 'Kurt Vonnegut’s anti-war novel following Billy Pilgrim through time and space.', NULL),
    ('Anna Karenina', 964, '1877-04-01', 9780143035008, 'Leo Tolstoy’s story of love, betrayal, and tragedy among Russian aristocrats.', NULL),
    ('Crime and Punishment', 671, '1866-01-01', 9780143058144, 'Fyodor Dostoevsky’s psychological thriller about a man’s moral dilemma and the consequences of his actions.', NULL),
    ('The Hobbit', 310, '1937-09-21', 9780547928227, 'J.R.R. Tolkien’s fantasy adventure preceding The Lord of the Rings, about a hobbit’s journey with dwarves.', NULL),
    ('Life of Pi', 319, '2001-09-11', 9780156027328, 'Yann Martel’s novel about a young boy who survives a shipwreck and shares a lifeboat with a Bengal tiger.', NULL),
    ('The Book Thief', 552, '2005-09-01', 9780375842207, 'Markus Zusak’s story of a young girl in Nazi Germany who discovers the power of books.', NULL),
    ('Catch-22', 453, '1961-11-10', 9781451626650, 'Joseph Heller’s satirical novel on the absurdities of war and bureaucracy.', NULL),
    ('Beloved', 324, '1987-09-16', 9781400033416, 'Toni Morrison’s novel about an escaped slave haunted by the trauma of her past.', NULL);

   
   INSERT INTO book (name, pages, datePublished, ISBN, description) VALUES
    ('Pet Sematary', 374, '1983-11-14', 9780743412285, 'A family discovers a burial ground with horrifying powers.'),
    ('The Haunting of Hill House', 246, '1959-10-16', 9780143039983, 'A chilling ghost story involving a haunted mansion.'),
    ('Bird Box', 262, '2014-03-27', 9780062259653, 'In a post-apocalyptic world, survivors must avoid looking at mysterious entities.'),
    ('World War Z', 342, '2006-09-12', 9780307346612, 'An oral history of the global war the evil brain-chewers came within a hair of winning.'),
    ('House of Leaves', 709, '2000-03-07', 9780375703768, 'A novel about a family whose house is impossibly larger on the inside than it is on the outside.'),
    ('The Exorcist', 403, '1971-10-01', 9780061007224, 'A tale of demonic possession that terrifies its readers.');
   
   
   INSERT INTO book (name, pages, datePublished, ISBN, description) VALUES
    ('Frankenstein', 280, '1818-01-01', 9780486282115, 'A scientist’s creation comes to life with deadly consequences.'),
    ('It', 1138, '1986-09-15', 9781501142978, 'A group of childhood friends face an ancient evil that resurfaces to terrorize their hometown.'),
    ('Dracula', 418, '1897-05-26', 9780486411092, 'The classic tale of the vampire Count Dracula, who terrorizes Victorian England.'),
    ('The Shining', 447, '1977-01-28', 9780385121671, 'A family moves into an isolated hotel where supernatural forces drive the father into violence.'),
    
    -- Non-Fiction
    ('The Immortal Life of Henrietta Lacks', 381, '2010-02-02', 9781400052172, 'The true story of a woman whose cells transformed medical research.'),
    ('Becoming', 448, '2018-11-13', 9781524763138, 'Michelle Obama’s deeply personal memoir about life and discovery.'),
    ('Educated', 334, '2018-02-20', 9780399590504, 'A memoir of a woman growing up in a strict and abusive household in rural Idaho.'),
    ('Sapiens: A Brief History of Humankind', 443, '2011-09-04', 9780062316110, 'An exploration of human history from early ancestors to the modern age.'),
    ('The Wright Brothers', 320, '2015-05-05', 9781476728759, 'The dramatic story-behind-the-story of the two brothers who taught the world how to fly.'),
    ('In Cold Blood', 343, '1966-01-17', 9780679745587, 'A true-crime novel that details the murder of a Kansas family.'),
    ('Unbroken: A World War II Story of Survival, Resilience, and Redemption', 473, '2010-11-16', 9780812974492, 'The story of a man’s survival in a Japanese POW camp during WWII.'),
    ('The Devil in the White City', 447, '2003-02-10', 9780375725609, 'A historical recount of the Chicago World’s Fair intertwined with a serial killer’s story.'),
    ('The Diary of a Young Girl', 283, '1947-06-25', 9780553296983, 'Anne Frank’s personal account of hiding from the Nazis during WWII.'),
    ('Silent Spring', 378, '1962-09-27', 9780618249060, 'A groundbreaking work that sparked environmental awareness and reform.'),
	('Murder on the Orient Express', 265, '1934-01-01', 9780062073501, 'Hercule Poirot investigates the murder of a wealthy American on a luxurious train.'),
    ('The Hound of the Baskervilles', 256, '1902-04-01', 9780141032438, 'Sherlock Holmes is called to investigate the legend of a supernatural hound haunting a wealthy family.'),
    ('The Maltese Falcon', 217, '1930-02-14', 9780679722649, 'A hard-boiled detective novel featuring Sam Spade, who investigates the mystery of a priceless artifact.'),
    ('Gone Girl', 422, '2012-06-05', 9780307588371, 'A thriller that explores a twisted marriage and a wife’s disappearance in Missouri.'),
    ('The Girl with the Dragon Tattoo', 465, '2005-08-01', 9780307454546, 'A journalist and a hacker investigate the decades-old disappearance of a wealthy heiress.');


   
   
   INSERT INTO bookClub (name) VALUES
    ('The Literary Lounge'),
    ('Sci-Fi & Fantasy Enthusiasts'),
    ('Mystery Lovers United'),
    ('Historical Fiction Fanatics'),
    ('Romance Readers Club'),
    ('Young Adult Bookworms'),
    ('Non-Fiction Insights'),
    ('Classic Literature Circle'),
    ('Thriller Addicts'),
    ('Modern Fiction Society'),
    ('Adventure Book Explorers'),
    ('The Biography Buffs'),
    ('Horror Book Club'),
    ('Global Literature Group'),
    ('Philosophy Readers Guild');

   
   INSERT INTO state VALUES
    (1, 'Want to Read'),
    (2, 'Reading'),
    (3, 'Read');
   
   
   INSERT INTO bookClubUser (user_id, bookClub_id) VALUES
    (1, 1),  (20, 1),  (15, 1),  (7, 1),  
    (3, 2),  (13, 2),  (4, 2),  (5, 2),  
  	(16, 3),  (7, 3),  (8, 3),  (10, 3),  (17, 3),  (13, 3),  (2, 3), (3, 3), 
    (10, 4), (13, 4), (18, 4), (8, 4),
	(1, 5),  (2, 5),  (9, 5),  (8, 5), (15, 5),
    (12, 6), (7, 6), (14, 6), (1, 6),
    (1, 7),  (4, 7),  (9, 7),  (2, 7),  
    (3, 8),  (19, 8),  (14, 8),  (5, 8),  
  	(6, 9),  (3, 9),  (19, 9),  (9, 9),  
    (10, 10), (18, 10), (12, 10), (5, 10),
	(1, 11),  (2, 11),  (8, 11),  (12, 11), (3, 11),  (15, 11),
    (12, 12), (1, 12), (18, 12), (16, 12),
    (10, 13), (11, 13), (16, 13), (5, 13), (1, 13), (6, 13), (2, 13), 
	(1, 14),  (2, 14),  (18, 14),  (8, 14),
    (12, 15), (16, 15), (3, 15), (1, 15);
    

   INSERT INTO friends (user_id, friend_id) VALUES
    (1, 2),	(1, 3),	(2, 4),	(2, 5),	(3, 6),	(3, 7),	(4, 8),
    (4, 9),	(5, 10),(5, 11),(6, 12),(6, 13),(7, 14),(7, 15),
    (8, 16),(8, 17),(9, 18),(9, 19),(10, 20),(11, 1),(12, 3),
    (13, 5),(14, 7),(15, 9),(16, 11),(17, 13),(18, 15),(19, 17),
    (20, 19),(2, 1),(4, 2),(6, 3),(8, 4),(10, 5),(12, 6),(14, 8),
    (16, 8),(18, 9),(20, 10),(3, 1),(5, 2),(7, 3),(9, 4),(11, 5),
    (13, 6),(15, 7),(17, 8),(19, 9),(1, 10);
   
 
   
INSERT INTO genrebook (genre_id, book_id) VALUES
    -- Fantasy
    (1, 1), (1, 2), (1, 3),    -- Harry Potter series
    (1, 4), (1, 5), (1, 6),    -- Stormlight Archive
    (1, 7), (1, 8), (1, 9),    -- Mistborn series
    (1, 10), (1, 11), (1, 12), -- A Song of Ice and Fire
    (1, 13), (1, 14),          -- Narnia
    (1, 29), (1, 30), (1, 31), -- Lord of the Rings
    (1, 46),                   -- The Hobbit
    (1, 21), (1, 22), (1, 23), -- Dark Tower series
    -- Science Fiction
    (2, 15),                   -- Dune
    (2, 16),                   -- Ender's Game
    (2, 19),                   -- Foundation
    (2, 20),                   -- I, Robot
    (2, 37),                   -- The Road
    (2, 38),                   -- Brave New World
    (2, 54),                   -- World War Z
    (2, 21), (2, 22), (2, 23), -- Dark Tower series
    (2, 7), (2, 8), (2, 9),    -- Mistborn series
    -- Mystery
    (3, 25), (3, 26), (3, 27), -- Sherlock Holmes books
    (3, 28),                   -- The Hound of the Baskervilles
    (3, 71),                   -- Murder on the Orient Express
    (3, 73),                   -- The Maltese Falcon
    (3, 74),                   -- Gone Girl
    (3, 75),                   -- The Girl with the Dragon Tattoo
    -- Horror
    (4, 21), (4, 22), (4, 23), -- Dark Tower series
    (4, 51),                   -- Pet Sematary
    (4, 52),                   -- The Haunting of Hill House
    (4, 53),                   -- Bird Box
    (4, 55),                   -- House of Leaves
    (4, 56),                   -- The Exorcist
    (4, 57),                   -- Frankenstein
    (4, 58),                   -- It
    (4, 59),                   -- Dracula
    (4, 60),                   -- The Shining
    -- Romance
    (5, 33),                   -- Pride and Prejudice
    (5, 44),                   -- Anna Karenina
    -- Thriller
    (6, 74),                   -- Gone Girl
    (6, 75),                   -- The Girl with the Dragon Tattoo
    -- Historical Fiction
    (7, 18),                   -- To Kill a Mockingbird
    (7, 48),                   -- The Book Thief
    (7, 67),                   -- Unbroken
    -- Biography
    (8, 61),                   -- The Immortal Life of Henrietta Lacks
    (8, 62),                   -- Becoming
    (8, 63),                   -- Educated
    (8, 65),                   -- The Wright Brothers
    -- Adventure
    (9, 39),                   -- The Alchemist
    (9, 49),                   -- Catch-22
    (9, 29), (9, 30), (9, 31), -- Lord of the Rings
    (9, 46),                   -- The Hobbit
    (9, 13), (9, 14),          -- Narnia
    -- Non-Fiction
    (10, 64),                  -- Sapiens
    (10, 66),                  -- In Cold Blood
    (10, 69),                  -- The Diary of a Young Girl
    (10, 70);                  -- Silent Spring

    

        
   INSERT INTO writerBook (writer_id, book_id) VALUES
    (1, 1),   -- J.K. Rowling - Harry Potter and the Philosopher's Stone
    (1, 2),   -- J.K. Rowling - Harry Potter and the Chamber of Secrets
    (1, 3),   -- J.K. Rowling - Harry Potter and the Prisoner of Azkaban
    (2, 4),   -- Brandon Sanderson - The Way of Kings
    (2, 5),   -- Brandon Sanderson - Words of Radiance
    (2, 6),   -- Brandon Sanderson - Oathbringer
    (2, 7),   -- Brandon Sanderson - Mistborn: The Final Empire
    (2, 8),   -- Brandon Sanderson - Mistborn: The Well of Ascension
    (2, 9),   -- Brandon Sanderson - Mistborn: The Hero of Ages
    (3, 10),  -- George R.R. Martin - A Game of Thrones
    (3, 11),  -- George R.R. Martin - A Clash of Kings
    (3, 12),  -- George R.R. Martin - A Storm of Swords
    (4, 13),  -- C.S. Lewis - The Lion, the Witch and the Wardrobe
    (4, 14),  -- C.S. Lewis - Prince Caspian
    (5, 15),  -- Frank Herbert - Dune
    (6, 16),  -- Orson Scott Card - Ender's Game
    (7, 17),  -- Neil Gaiman - American Gods
    (8, 18),  -- Harper Lee - To Kill a Mockingbird
    (9, 19),  -- Isaac Asimov - Foundation
    (9, 20),  -- Isaac Asimov - I, Robot
    (10, 21), -- Stephen King - The Gunslinger
    (10, 22), -- Stephen King - The Drawing of the Three
    (10, 23), -- Stephen King - The Waste Lands
    (10, 24), -- Stephen King - Wizard and Glass
    (11, 25), -- Arthur Conan Doyle - A Study in Scarlet
    (11, 26), -- Arthur Conan Doyle - The Sign of the Four
    (11, 27), -- Arthur Conan Doyle - The Adventures of Sherlock Holmes
    (11, 28), -- Arthur Conan Doyle - The Hound of the Baskervilles
    (12, 29), -- J.R.R. Tolkien - The Fellowship of the Ring
    (12, 30), -- J.R.R. Tolkien - The Two Towers
    (12, 31), -- J.R.R. Tolkien - The Return of the King
    (13, 32), -- George Orwell - 1984
    (14, 33), -- Jane Austen - Pride and Prejudice
    (15, 34), -- J.D. Salinger - The Catcher in the Rye
    (16, 35), -- F. Scott Fitzgerald - The Great Gatsby
    (17, 36), -- Herman Melville - Moby-Dick
    (18, 37), -- Cormac McCarthy - The Road
    (19, 38), -- Aldous Huxley - Brave New World
    (20, 39), -- Paulo Coelho - The Alchemist
    (21, 40), -- Mary Shelley - Frankenstein
    (22, 41), -- Oscar Wilde - The Picture of Dorian Gray
    (23, 42), -- Gabriel Garcia Marquez - One Hundred Years of Solitude
    (24, 43), -- Kurt Vonnegut - Slaughterhouse-Five
    (25, 44), -- Leo Tolstoy - Anna Karenina
    (26, 45), -- Fyodor Dostoevsky - Crime and Punishment
    (27, 46), -- J.R.R. Tolkien - The Hobbit
    (28, 47), -- Yann Martel - Life of Pi
    (29, 48), -- Markus Zusak - The Book Thief
    (30, 49), -- Joseph Heller - Catch-22
    (31, 50), -- Toni Morrison - Beloved
    (10, 51), -- Stephen King - Pet Sematary
    (32, 52), -- Shirley Jackson - The Haunting of Hill House
    (33, 53), -- Josh Malerman - Bird Box
    (34, 54), -- Max Brooks - World War Z
    (35, 55), -- Mark Z. Danielewski - House of Leaves
    (36, 56), -- William Peter Blatty - The Exorcist
    (10, 57), -- Stephen King - It
    (37, 58), -- Bram Stoker - Dracula
    (10, 59), -- Stephen King - The Shining
    (38, 60), -- Rebecca Skloot - The Immortal Life of Henrietta Lacks
    (39, 61), -- Michelle Obama - Becoming
    (40, 62), -- Tara Westover - Educated
    (41, 63), -- Yuval Noah Harari - Sapiens: A Brief History of Humankind
    (42, 64), -- David McCullough - The Wright Brothers
    (43, 65), -- Truman Capote - In Cold Blood
    (44, 66), -- Laura Hillenbrand - Unbroken: A World War II Story of Survival, Resilience, and Redemption
    (45, 67), -- Erik Larson - The Devil in the White City
    (46, 68), -- Anne Frank - The Diary of a Young Girl
    (47, 69), -- Rachel Carson - Silent Spring
    (48, 70), -- Agatha Christie - Murder on the Orient Express
    (49, 71), -- Dashiell Hammett - The Maltese Falcon
    (50, 72), -- Gillian Flynn - Gone Girl
    (51, 73); -- Stieg Larsson - The Girl with the Dragon Tattoo

    
    
 INSERT INTO userBook (user_id, book_id, rating, review, state_id) VALUES
    (1, 1, 5, 'Absolutely magical and nostalgic!', 3),   -- User 1 finished Harry Potter and the Philosopher's Stone
    (2, 4, 4, 'Great start to an epic series.', 3),      -- User 2 finished The Way of Kings
    (3, 17, 5, 'A masterpiece of modern mythology.', 3), -- User 3 finished American Gods
    (4, 15, 4, 'A must-read for sci-fi fans.', 3),       -- User 4 finished Dune
    (5, 25, NULL, NULL, 1),                              -- User 5 wants to read A Study in Scarlet
    (6, 10, 3, 'A good but lengthy fantasy read.', 3),   -- User 6 finished A Game of Thrones
    (7, 50, 4, 'Haunting and powerful.', 3),             -- User 7 finished Beloved
    (8, 51, 4, 'Scary, even for King!', 3),              -- User 8 finished Pet Sematary
    (9, 57, 5, 'A chilling classic horror.', 3),         -- User 9 finished It
    (10, 37, 5, 'Dark and haunting.', 3),                -- User 10 finished The Road
    (11, 34, 3, 'Not as exciting as I expected.', 3),    -- User 11 finished The Catcher in the Rye
    (12, 19, 4, 'Foundations of sci-fi done right.', 3), -- User 12 finished Foundation
    (13, 5, 5, 'Epic and thrilling throughout.', 3),     -- User 13 finished Words of Radiance
    (14, 47, 4, 'A unique and introspective adventure.', 3), -- User 14 finished Life of Pi
    (15, 36, NULL, NULL, 2),                             -- User 15 currently reading Moby-Dick
    (16, 58, NULL, NULL, 2),                             -- User 16 currently reading The Shining
    (17, 28, 4, 'Classic detective story, highly recommended.', 3), -- User 17 finished The Hound of the Baskervilles
    (18, 29, 5, 'An unforgettable journey.', 3),         -- User 18 finished The Fellowship of the Ring
    (19, 8, 4, 'Slow start, but worth the journey.', 3), -- User 19 finished Mistborn: The Well of Ascension
    (20, 43, NULL, NULL, 1),                             -- User 20 wants to read Slaughterhouse-Five
    (1, 40, 5, 'Chilling and thought-provoking.', 3),    -- User 1 finished Frankenstein
    (2, 49, 4, 'A darkly humorous war novel.', 3),       -- User 2 finished Catch-22
    (3, 18, 5, 'A profound novel about human nature.', 3), -- User 3 finished To Kill a Mockingbird
    (4, 35, 3, 'Interesting look at the Roaring Twenties.', 3), -- User 4 finished The Great Gatsby
    (5, 6, NULL, NULL, 1),                               -- User 5 wants to read Oathbringer
    (6, 31, 5, 'A stunning conclusion to the journey.', 3), -- User 6 finished The Return of the King
    (7, 71, 4, 'A thrilling detective story.', 3),       -- User 7 finished The Maltese Falcon
    (8, 67, 5, 'An immersive historical thriller.', 3),  -- User 8 finished The Devil in the White City
    (9, 63, 5, 'Insightful and thought-provoking.', 3),  -- User 9 finished Sapiens: A Brief History of Humankind
    (10, 24, 5, 'Amazing continuation of the Dark Tower series.', 3); -- User 10 finished Wizard and Glass


    
    INSERT INTO userBook (user_id, book_id, rating, review, state_id) VALUES
    (11, 3, 4, 'Amazing development for the characters.', 3),           -- User 11 finished Harry Potter and the Prisoner of Azkaban
    (12, 7, 5, 'Brilliant start to an epic series.', 3),                -- User 12 finished Mistborn: The Final Empire
    (13, 26, 5, 'Suspenseful and engaging mystery.', 3),                -- User 13 finished The Sign of the Four
    (14, 53, 3, 'Interesting concept, but lacked some depth.', 3),      -- User 14 finished Bird Box
    (15, 12, 5, 'A gripping fantasy masterpiece.', 3),                  -- User 15 finished A Storm of Swords
    (16, 33, 4, 'Classic romance, beautiful prose.', 3),                -- User 16 finished Pride and Prejudice
    (17, 39, 4, 'Inspiring and thought-provoking.', 3),                 -- User 17 finished The Alchemist
    (18, 42, 5, 'Rich, layered storytelling.', 3),                      -- User 18 finished One Hundred Years of Solitude
    (19, 60, 4, 'Incredibly moving and informative.', 3),               -- User 19 finished The Immortal Life of Henrietta Lacks
    (20, 20, 4, 'Classic Asimov with strong concepts.', 3),             -- User 20 finished I, Robot
    (1, 9, 5, 'Epic conclusion to an unforgettable trilogy.', 3),       -- User 1 finished Mistborn: The Hero of Ages
    (2, 46, 5, 'A charming adventure in Middle-earth.', 3),             -- User 2 finished The Hobbit
    (3, 55, 4, 'Mind-bending and deeply unsettling.', 3),               -- User 3 finished House of Leaves
    (4, 48, 5, 'Heartbreaking and beautifully written.', 3),            -- User 4 finished The Book Thief
    (5, 45, NULL, NULL, 2),                                             -- User 5 is currently reading Crime and Punishment
    (6, 28, 4, 'Classic detective work at its best.', 3),               -- User 6 finished The Hound of the Baskervilles
    (7, 40, 5, 'Timeless and hauntingly beautiful.', 3),                -- User 7 finished Frankenstein
    (8, 54, 4, 'Unique take on zombies, very engaging.', 3),            -- User 8 finished World War Z
    (9, 38, 4, 'Disturbing yet thought-provoking dystopian vision.', 3),-- User 9 finished Brave New World
    (10, 43, 5, 'Powerful anti-war satire.', 3),                        -- User 10 finished Slaughterhouse-Five
    (11, 61, 5, 'Inspiring memoir by a remarkable woman.', 3),          -- User 11 finished Becoming
    (12, 8, NULL, NULL, 1),                                             -- User 12 wants to read Mistborn: The Well of Ascension
    (13, 70, 4, 'Ingenious mystery, a true classic.', 3),               -- User 13 finished Murder on the Orient Express
    (14, 16, 5, 'Imaginative and exciting sci-fi adventure.', 3),       -- User 14 finished Ender\'s Game
    (15, 56, 4, 'Creepy, well-paced, and thrilling.', 3),               -- User 15 finished The Exorcist
    (16, 62, 5, 'Powerful memoir about resilience and family.', 3),     -- User 16 finished Educated
    (17, 65, 4, 'A fascinating true-crime classic.', 3),                -- User 17 finished In Cold Blood
    (18, 44, NULL, NULL, 2),                                            -- User 18 is currently reading Anna Karenina
    (19, 59, 4, 'Gothic horror at its best.', 3),                       -- User 19 finished Dracula
    (20, 64, 5, 'Aviation history brought to life.', 3),                -- User 20 finished The Wright Brothers
    (1, 66, 5, 'Incredible story of resilience and survival.', 3),      -- User 1 finished Unbroken
    (2, 28, 4, 'Holmes at his most thrilling.', 3),                     -- User 2 finished The Hound of the Baskervilles
    (3, 73, 4, 'Dark and riveting mystery.', 3),                        -- User 3 finished The Girl with the Dragon Tattoo
    (4, 58, 5, 'One of Kings best. Truly terrifying.', 3),            -- User 4 finished It
    (5, 41, 4, 'Beautifully twisted classic.', 3),                      -- User 5 finished The Picture of Dorian Gray
    (6, 22, NULL, NULL, 1),                                             -- User 6 wants to read The Drawing of the Three
    (7, 30, 5, 'Epic journey in Middle-earth.', 3),                     -- User 7 finished The Two Towers
    (8, 13, 4, 'Magical and whimsical.', 3),                            -- User 8 finished The Lion, the Witch and the Wardrobe
    (9, 32, 5, 'Chilling vision of totalitarianism.', 3),               -- User 9 finished 1984
    (10, 14, NULL, NULL, 2);                                            -- User 10 is currently reading Prince Caspian
