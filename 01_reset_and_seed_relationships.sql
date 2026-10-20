
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL 

);

CREATE TABLE posts(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    -- for taking user id from another table take refernces 
    user_id UUID NOT NULL REFERENCES users(id),
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'draft' CHECK (status IN('draft', 'published')),
    views INTEGER NOT NULL DEFAULT  0 CHECK (views>=0)
);

CREATE TABLE comments(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    -- user_id UUID NOT NULL DEFAULT  users(id),
    post_id UUID NOT NULL REFERENCES posts(id),
    body TEXT NOT NULL
);

CREATE TABLE tags(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    -- post_id UUID NOT NULL REFERENCES posts(id),
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE post_tags(
    -- 1 post may heave multple tags , that tag can belongs to mutiple post

    tag_id UUID NOT NULL REFERENCES tags(id),
    post_id UUID NOT NULL REFERENCES posts(id),

    -- 1 post cant have same tags multiple times.composite primary key
    PRIMARY KEY(post_id, tag_id)
);

INSERT INTO users(name)
VALUES ('Benzigar'), ('Benny');

INSERT INTO posts (user_id,title, description,status,views)
SELECT id,'Postgres sql','advanced','draft',0
FROM users WHERE name='Benzigar';

INSERT INTO posts (user_id,title, description,status,views)
SELECT id,'Sql advanced','beginers','draft',0
FROM users WHERE name='Benny';

INSERT INTO comments(post_id,body)
SELECT id,'comment 1 added'
FROM posts WHERE title='Postgres sql';

INSERT INTO comments(post_id,body)
SELECT id,'Comment 2 added'
FROM posts WHERE title='Sql advanced';

INSERT INTO tags(name)
VALUES ('sql'), ('backend');

-- INSERT INTO post_tags(post_id, tag_id)
-- SELECT p.id ,t.id FROM posts p, tags t WHERE p.title='Postgres sql' AND t.name='sql';

INSERT INTO post_tags(post_id, tag_id)
-- aliases
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title='Sql advanced' AND t.name='backend';


INSERT INTO post_tags(post_id, tag_id)
-- aliases
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title='Postgres sql' AND t.name='sql';
SELECT 'datas inserted sucessfully' AS message;
