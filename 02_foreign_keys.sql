
 --foreing key is a column that point to the primary key of another table

 --user.id -parent key
 --posts.user_id -foreign key
 --ever post you will create that must belongs to an existing users

 SELECT id,name  FROM users;

 SELECT id, user_id, title FROM  posts;

 
