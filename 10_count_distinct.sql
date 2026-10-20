--count unique values

--count how may unique post are connected to each tag

SELECT
    t.name AS tag_name,                    -- Get the tag name
    COUNT(DISTINCT p.id) AS total_unique_post -- Count unique posts for each tag
FROM tags AS t                              -- Select the tags table
LEFT JOIN post_tags AS pt                   -- Include tags even if they have no posts
    ON t.id = pt.tag_id                     -- Match tags with the mapping table
LEFT JOIN posts AS p                        -- Connect the mapping table with posts
    ON pt.post_id = p.id                    -- Match each mapping to its post
GROUP BY t.id, t.name                       -- Group results by each tag
ORDER BY total_unique_post DESC;             -- Sort by post count, highest first