
-- Průměrný počet záznamů na všechny tabulky --
SELECT AVG(reltuples) AS average_rows_per_table
FROM pg_class
WHERE relkind = 'r' 
  AND relnamespace IN (
    SELECT oid 
    FROM pg_namespace 
    WHERE nspname = 'public'
  );
 
select avg(n_live_tup) as row_avg from pg_stat_user_tables;


-- Přiřadí Spisovatele k jeho knihám --
SELECT 
    CONCAT(writer.name || ' ' || writer.surname) AS writer_fullname,
    (SELECT book.name 
     FROM book 
     WHERE book.id_book = writerbook.book_id) AS book_name
FROM writer
JOIN writerbook ON writer.id_writer = writerbook.writer_id
ORDER BY writer_fullname;


-- Autor a počet knih které napsal --
select writer.name || ' ' || writer.surname AS writer_fullname,
       (SELECT COUNT(*) 
        FROM writerbook 
        WHERE writerbook.writer_id = writer.id_writer) AS book_count
FROM writer
order by book_count desc;


-- průměrný hodnocení knihy a počet hodnocení --
SELECT book.name AS book_name, 
       AVG(rating) AS average_rating,
       COUNT(rating) AS rating_count
FROM userBook
JOIN book ON userBook.book_id = book.id_book
WHERE userBook.rating is not null
GROUP BY book.name
ORDER BY average_rating DESC, rating_count DESC;


WITH RECURSIVE friend_tree AS (
    SELECT u1.id_user, u1.name AS user_name, u2.id_user AS friend_id, u2.name AS friend_name, 1 AS level
    FROM friends f
    JOIN users u1 ON f.user_id = u1.id_user
    JOIN users u2 ON f.friend_id = u2.id_user
    WHERE u1.id_user = $userID
    UNION all
    
    SELECT ft.friend_id, u2.name AS user_name, u3.id_user AS friend_id, u3.name AS friend_name, ft.level + 1
    FROM friend_tree ft
    JOIN friends f ON ft.friend_id = f.user_id
    JOIN users u2 ON f.user_id = u2.id_user
    JOIN users u3 ON f.friend_id = u3.id_user
    WHERE ft.level < $level
      AND u3.id_user != $userID
)
SELECT DISTINCT user_name, friend_name, level
FROM friend_tree
WHERE user_name != friend_name
AND level <= $level
ORDER BY level;



CREATE VIEW book_details AS
SELECT 
    b.name AS book_name,
    b.pages AS page_count,
    b.datePublished AS publish_date,
    STRING_AGG(DISTINCT g.name, ', ') AS genre_names,
    STRING_AGG(DISTINCT w.name || ' ' || w.surname, ', ') AS writer_name,
    b.description AS book_description,
    s.name AS series_name
FROM 
    book b
    LEFT JOIN genreBook gb ON b.id_book = gb.book_id
    LEFT JOIN genre g ON gb.genre_id = g.id_genre
    LEFT JOIN writerBook wb ON b.id_book = wb.book_id
    LEFT JOIN writer w ON wb.writer_id = w.id_writer
    LEFT JOIN series s ON b.series_id = s.id_series
GROUP BY 
    b.id_book, b.name, b.pages, b.datePublished, b.description, s.name;

CREATE UNIQUE INDEX idx_unique_isbn ON book(isbn);
CREATE INDEX idx_fulltext_description ON book USING gin(to_tsvector('english', description));

INSERT INTO users (name, email, password) VALUES
    ('John DOe8', 'johndoe@example.com', 'password123');

SELECT name, description
FROM book
WHERE to_tsvector('english', description) @@ to_tsquery('english', 'world');

INSERT INTO book (name, isbn, pages, description) VALUES
    ('It', '9780307346612', 18,'jooo');


CREATE OR REPLACE FUNCTION get_books_by_page_range(min_pages INTEGER, max_pages INTEGER)
RETURNS TABLE(book_name VARCHAR(25), page_count SMALLINT) AS $$
BEGIN
    RETURN QUERY
    SELECT name, pages
    FROM book
    WHERE pages BETWEEN min_pages AND max_pages;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_books_by_page_range(500, 800);


CREATE OR REPLACE PROCEDURE add_book_to_genres(
    p_book_id INTEGER,
    p_genre_ids INTEGER[]
)
LANGUAGE plpgsql AS $$
DECLARE
    genre_id INTEGER;
BEGIN
    FOREACH genre_id IN ARRAY p_genre_ids LOOP
        INSERT INTO genrebook (book_id, genre_id)
        VALUES (p_book_id, genre_id)
        ON CONFLICT DO NOTHING;
    END LOOP;
    
    RAISE NOTICE 'Kniha byla úspěšně přidána do všech žánrů.';
EXCEPTION
    WHEN OTHERS THEN
        RAISE WARNING 'Došlo k chybě při přidávání knihy do žánrů: %', SQLERRM;
        RAISE;
END;
$$;

CALL add_book_to_genres(1, ARRAY[2, 5, 4]);



CREATE OR REPLACE PROCEDURE lend_book(lender_id INT, borrower_id INT, target_book_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM userbook
        WHERE user_id = lender_id AND book_id = target_book_id AND owned = TRUE
    ) THEN
        RAISE EXCEPTION 'User with ID % does not own book with ID %', lender_id, target_book_id;
    END IF;

	UPDATE userbook
    SET owned = FALSE WHERE user_id = lender_id AND book_id = target_book_id;


    IF EXISTS (
        SELECT 1 FROM userbook
        WHERE user_id = borrower_id AND book_id = target_book_id AND owned = TRUE
    ) THEN
        RAISE EXCEPTION 'User with ID % already owns book with ID %', borrower_id, target_book_id;
    END IF;

	 IF NOT EXISTS (
        SELECT 1 FROM friends
        WHERE (user_id = lender_id AND friend_id = borrower_id)
    ) THEN
        RAISE EXCEPTION 'Lender with ID % and borrower with ID % are not friends', lender_id, borrower_id;
    END IF;	


    INSERT INTO userbook (user_id, book_id, owned)
    VALUES (borrower_id, target_book_id, TRUE)
    ON CONFLICT (user_id, book_id)
    DO UPDATE SET owned = TRUE;

    RAISE NOTICE 'Book with ID % successfully lent from user % to user %', target_book_id, lender_id, borrower_id;

EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'An error occurred, rolling back transaction';
        ROLLBACK;
        RAISE;
COMMIT;
END;
$$;


call lend_book(2, 1, 1);
call lend_book(3, 2, 28);



CREATE OR REPLACE FUNCTION add_symmetric_friend()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM friends 
        WHERE user_id = NEW.friend_id AND friend_id = NEW.user_id
    ) THEN
        INSERT INTO friends (user_id, friend_id)
        VALUES (NEW.friend_id, NEW.user_id);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER insert_symmetric_friend
AFTER INSERT ON friends
FOR EACH ROW
EXECUTE FUNCTION add_symmetric_friend();

INSERT INTO friends (user_id, friend_id) VALUES
    (1, 18);
   

