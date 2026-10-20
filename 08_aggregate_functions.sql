--calculate one result from many rows

--COUNT()-> number of rows
--SUM()-> total values
--AVG()-> Average value
--MIN()-> smallest value
--MAX()->Largest value /Max Value

--admin dashboard, reports, analytics, admin panels

-- UPDATE posts SET views=10 WHERE title='Angular';
-- UPDATE posts SET views=15 WHERE title='Sql advanced';
-- UPDATE posts SET views=25 WHERE title='Postgres sql';

SELECT
    COUNT(*) AS total_posts,  -- Count all posts
    COUNT(*) FILTER (WHERE status = 'published') AS published_posts, -- Count only published posts
    SUM(views) AS total_views,  -- Add views of all posts
    AVG(views) AS average_views, -- Calculate average views per post
    MIN(views) AS lowest,       -- Find the lowest view count
    MAX(views) AS highest       -- Find the highest view count
FROM posts;                     -- Get data from the posts table


