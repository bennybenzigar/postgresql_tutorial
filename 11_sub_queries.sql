-- one query inside another query
--run inner query first then run outer query

--which post are performing better tha average


SELECT title, status, views
FROM posts
WHERE views > (
    -- Calculate average views for posts with more than 25 views
    SELECT AVG(views)
    FROM posts

)
ORDER BY views DESC;