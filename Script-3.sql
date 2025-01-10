CREATE ROLE admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON DATABASE postgres TO admin;

CREATE ROLE ctenar;
GRANT CONNECT ON DATABASE postgres TO ctenar;
GRANT USAGE ON SCHEMA public TO ctenar;
GRANT SELECT on table book, genre, series, writer, writerbook, writergenre, bookclub, state TO ctenar;

CREATE ROLE autor;
GRANT CONNECT ON DATABASE postgres TO autor;
GRANT USAGE ON SCHEMA public TO autor;
GRANT INSERT ON table book, writerbook TO autor;
GRANT SELECT on table book, genre, series, writer, writerbook, writergenre, bookclub, state TO autor;
GRANT USAGE, SELECT ON SEQUENCE book_id_book_seq TO autor;


CREATE USER valdemar;
CREATE USER honza;
CREATE USER karel;
CREATE USER tomas;
CREATE USER vit;

GRANT admin TO valdemar;
GRANT ctenar TO honza;
GRANT autor TO karel;
GRANT ctenar TO tomas;
GRANT autor TO vit;



SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE table_name='book';




