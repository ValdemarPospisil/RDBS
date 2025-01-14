CREATE ROLE administrator;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO administrator;
GRANT ALL PRIVILEGES ON DATABASE postgres TO administrator;

CREATE ROLE ctenar;
GRANT CONNECT ON DATABASE postgres TO ctenar;
GRANT USAGE ON SCHEMA public TO ctenar;
GRANT SELECT on table book, genre, series, writer, writerbook, bookclub, state TO ctenar;

CREATE ROLE autor;
GRANT CONNECT ON DATABASE postgres TO autor;
GRANT USAGE ON SCHEMA public TO autor;
GRANT INSERT ON table book, writerbook TO autor;
GRANT SELECT on table book, genre, series, writer, writerbook, bookclub, state TO autor;
GRANT USAGE, SELECT ON SEQUENCE book_id_book_seq TO autor;


CREATE USER valdemar CREATEROLE;
CREATE USER honza;
CREATE USER karel;
CREATE USER tomas;
CREATE USER vit;

GRANT administrator TO valdemar;
GRANT ctenar TO honza;
GRANT autor TO karel;
GRANT ctenar TO tomas with inherit FALSE;
GRANT autor TO vit;


REVOKE CONNECT ON DATABASE postgres FROM ctenar;
REVOKE USAGE ON SCHEMA public FROM ctenar;
REVOKE SELECT on table book, genre, series, writer, writerbook, writergenre, bookclub, state FROM ctenar;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM administrator;
REVOKE ALL PRIVILEGES ON DATABASE postgres FROM administrator;

DROP ROLE administrator;
DROP ROLE autor;
DROP ROLE ctenar;


SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE table_name='book';

SELECT rolname FROM pg_roles;
SELECT rolname FROM pg_roles WHERE rolcanlogin;


BEGIN;
LOCK TABLE userbook IN EXCLUSIVE MODE; --SHARE

UPDATE userbook SET state_id = 2 WHERE user_id = 15 AND book_id = 36;

COMMIT;



docker exec -it postgres psql -U novy_uzivatel -d postgres

