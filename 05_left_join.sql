--left join keeps all rows from the left table
--if the right table has matching data postgressql includes that 
--if its doesnt have any matching data it returns null

--posts ->left table
--comments-> right table

-- beacause not every poinst can have comments someposts will have comments some will have 0
-- return all posts if it have or haven't a comment

-- INSERT INTO posts (user_id,title, description,status,views)
-- SELECT id,'Angular','beginers','draft',0
-- FROM users WHERE name='Benny';

SELECT
    posts.title AS posts_title,       -- Get the post title
    comments.body AS comments_body    -- Get the comment text
FROM posts                            -- Select the posts table
LEFT JOIN comments                    -- Include posts even without comments
    ON posts.id = comments.post_id    -- Match comments with their posts
ORDER BY posts.title;                 -- Sort posts alphabetically by title