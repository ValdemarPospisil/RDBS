CREATE TABLE users (
    id_user SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE,
    password VARCHAR(25) NOT NULL
);

CREATE TABLE genre (
    id_genre SERIAL primary key,
    name VARCHAR(25) NOT NULL UNIQUE,
    description VARCHAR(1000)
);

CREATE TABLE series (
    id_series SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    description VARCHAR(1000)
);

CREATE TABLE writer (
    id_writer SERIAL PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    surname VARCHAR(25) NOT NULL
);

CREATE TABLE bookClub (
    id_bookClub SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE book (
    id_book SERIAL PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    pages SMALLINT NOT NULL CHECK (pages > 0),
    datePublished DATE default nuLL,
    ISBN BIGINT NOT null unique,
    description VARCHAR(1000) default null,
    series_id INTEGER DEFAULT NULL,
    FOREIGN KEY (series_id)
        REFERENCES series(id_series)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

create TABLE state (
    id_state SMALLSERIAL PRIMARY KEY,
    name VARCHAR(12) NOT NULL unique
);

create TABLE friends (
    user_id INTEGER,
    friend_id INTEGER,
    PRIMARY KEY (user_id, friend_id),
    FOREIGN KEY (user_id)
        REFERENCES users(id_user)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (friend_id)
        REFERENCES users(id_user)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE genreBook (
    genre_id INTEGER,
    book_id INTEGER,
    PRIMARY KEY (genre_id, book_id),
    FOREIGN KEY (genre_id)
        REFERENCES genre(id_genre)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (book_id)
        REFERENCES book(id_book)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE bookClubUser (
    user_id INTEGER,
    bookClub_id INTEGER,
    PRIMARY KEY (user_id, bookClub_id),
    FOREIGN KEY (user_id)
        REFERENCES users(id_user)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (bookClub_id)
        REFERENCES bookClub(id_bookClub)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE userBook (
    user_id INTEGER,
    book_id INTEGER,
    rating SMALLINT DEFAULT NULL CHECK (rating BETWEEN 1 AND 5),
    review VARCHAR(500) DEFAULT NULL,
    owned BOOLEAN DEFAULT false,
    state_id INTEGER DEFAULT NULL,
    FOREIGN KEY (state_id)
        REFERENCES state(id_state)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    PRIMARY KEY (user_id, book_id),
    FOREIGN KEY (user_id)
        REFERENCES users(id_user)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (book_id)
        REFERENCES book(id_book)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE writerBook (
    writer_id INTEGER not null,
    book_id INTEGER not null,
    PRIMARY KEY (writer_id, book_id),
    FOREIGN KEY (writer_id)
        REFERENCES writer(id_writer)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (book_id)
        REFERENCES book(id_book)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
