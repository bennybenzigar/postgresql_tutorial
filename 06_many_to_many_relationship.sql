-- one post can have multiple tag 
--one tag can be associated with multiple post

--posts.id === post_tags.post_id
--tags.id === post_tags.tag_id

--show every post with tags
-- posts — gets the posts.
-- post_tags — connects posts and tags through a many-to-many relationship.
-- tags — gets the tag names.
-- AS post_title and AS tag_name — rename the output columns.
-- ORDER BY posts.title, tags.name — sorts by post title first, then tag name.


SELECT posts.title AS post_title,  -- Get the post title
       tags.name AS tag_name       -- Get the tag name
FROM posts                         -- Select the posts table
INNER JOIN post_tags               -- Connect posts with their tags
    ON posts.id = post_tags.post_id -- Match each post with its ID
INNER JOIN tags                    -- Connect to the tags table
    ON post_tags.tag_id = tags.id  -- Match each tag with its ID
ORDER BY posts.title, tags.name;   -- Sort by post title, then tag name