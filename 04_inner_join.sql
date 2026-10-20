--inner join returns only the matching row from both tables
--
-- ON matching codition
-- matching rule
--inner join will hide post that doesnt have comments
UPDATE posts
SET status = 'published'             -- Change the post status to published
WHERE status = 'draft';              -- Update only posts currently in draft status

SELECT
    users.name AS author_name,       -- Get the author's name
    posts.title AS posts_title,      -- Get the post title
    posts.status,                    -- Get the post status
    posts.views                      -- Get the number of views
FROM users                           -- Select the users table
INNER JOIN posts                     -- Join users with their posts
    ON users.id = posts.user_id      -- Match each post with its author
WHERE posts.status = 'published'    -- Display only published posts
ORDER BY posts.views DESC;           -- Sort by views from highest to lowest
