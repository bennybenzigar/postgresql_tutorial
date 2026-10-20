-- one parent can have many child rows
--one user can have many posts but post will balongs to one user

--user-parent table post will be the child table

--post.user_id ->  user.id

-- users.id is the original user id
--post.user_id store that original user id inside the posts table

-- show all post with their authors
-- 1. SELECT — chooses which columns to display.
--    - users.name AS author_name: displays the user's name with the column heading author_name.
--    - posts.title AS posts_title: displays the post title with the heading posts_title.
--    - posts.status: displays whether the post is a draft or published.
-- 2. FROM users — starts with the users table.
-- 3. INNER JOIN posts — combines users with their matching posts. Users without a matching post are excluded.
-- 4. ON users.id = posts.user_id — defines how the tables are connected:
--    - users.id is the user's ID.
--    - posts.user_id stores the ID of the user who created the post.
-- 5. ORDER BY users.name, posts.title — sorts the results by user name first, then by post title.
-- Example: If Benzigar created two posts, both posts appear with Benzigar's name.

-- The important concept is that INNER JOIN connects related data from two tables using a matching column.
SELECT
    users.name AS author_name,       -- Get the user's name as author_name
    posts.title AS posts_title,      -- Get the post title as posts_title
    posts.status                    -- Get the post status
FROM users                          -- Select the users table
INNER JOIN posts                    -- Join users with their posts
    ON users.id = posts.user_id     -- Match each post with its author
ORDER BY users.name, posts.title;   -- Sort by author name, then post title
-- sfi join on order