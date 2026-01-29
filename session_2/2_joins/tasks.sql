-- Task 2

.mode box

-- 1. List all posts that have been deleted.

-- SELECT id, content from posts WHERE deleted = true;

-- 2. List all users whose usernames begin with 'a'.

-- SELECT username from users WHERE username LIKE 'a%';

-- 3. Find all posts and the usernames of those who posted them whose
--    content contains the word "small".

-- SELECT username, content
--   FROM users JOIN posts ON users.id = posts.user_id
--   WHERE content LIKE '%small%';

-- 4. Return each non-deleted post and the username of the person who wrote
--    in, in date order.

-- SELECT username, content, posts.created_on AS created
--   FROM users JOIN posts ON users.id = posts.user_id
--   WHERE deleted = false
--   ORDER BY created;

-- 5. For each user, return their username and the total number of posts
--    they have made.

-- SELECT username, COUNT(*) AS numPosts
--   FROM users JOIN posts ON users.id = posts.user_id
--   GROUP BY username
--   ORDER BY numPosts DESC;

-- 6. Modify the previous query to return only users who have authored
--    more than 8 posts.

-- SELECT username, COUNT(*) AS num_posts
--   FROM users JOIN posts ON users.id = posts.user_id
--   GROUP BY username
--   HAVING num_posts > 8
--   ORDER BY num_posts DESC;

-- 7. For each user, return their username and the number of users they
--    follow, including users who follow no one.

-- SELECT username, COUNT(*) AS num_followed
--   FROM users JOIN follows ON users.id = follows.followed_user_id
--   GROUP BY username
--   ORDER BY num_followed DESC;

-- 8. List the top 5 most-followed users.

SELECT username, COUNT(*) AS num_followers
  FROM users JOIN follows ON users.id = follows.following_user_id
  GROUP BY username
  ORDER BY num_followers DESC LIMIT 5;

-- 9. Return a list showing the username of the follower and the username of
--    the followed user for each follow relationship.

-- 10. For a given user (christopherprice), return all non-deleted posts
--     written by users they follow, ordered from most recent to oldest.
