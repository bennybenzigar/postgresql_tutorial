--aliases is going to make  youre queries shoretr and easier to read

--posts.title

-- want to write this p.title

---users.name to write this as u.name

SELECT
    p.title AS post_title,       -- Get the post title
    p.status,                    -- Get the post status
    p.views,                     -- Get the number of views
    u.name AS author_name,       -- Get the author's name
    c.body AS comments_body      -- Get the comment text
FROM posts AS p                  -- Select posts and give the alias p
INNER JOIN users AS u            -- Join posts with their authors
    ON u.id = p.user_id           -- Match each post with its author
LEFT JOIN comments AS c          -- Include posts even if they have no comments
    ON p.id = c.post_id           -- Match comments with their posts
ORDER BY p.views DESC;            -- Sort posts by views, highest first