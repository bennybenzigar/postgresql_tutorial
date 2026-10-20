--group by create group of rows
--WHERE -> filters normal rows before grouping
-- HAVING  filters groups after grouping

--find authors who have written atlaeast 2 posts

-- here GROUP BY c
SELECT
    u.name AS author_name,       -- Get the user's name and rename the column
    COUNT(p.id) AS total_posts,  -- Count the total posts for each user
    SUM(p.views) AS total_views  -- Calculate total views of each user's posts
FROM users AS u                  -- Select users and give the table alias u
LEFT JOIN posts AS p             -- Include users even if they have no posts
    ON u.id = p.user_id          -- Match each user with their posts
GROUP BY u.id, u.name            -- Group posts by each user to calculate totals
HAVING COUNT(p.id) >=  1         -- Show only users who have at least 2 posts
ORDER BY total_posts DESC;       -- Sort by post count from highest to lowest