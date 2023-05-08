SELECT *
FROM users;

SELECT *
FROM progress;

SELECT email_domain, COUNT(*) AS count
FROM users
WHERE email_domain LIKE '%.edu'
GROUP BY email_domain
ORDER BY count DESC
LIMIT 25;

SELECT COUNT(*) AS count
FROM users
WHERE email_domain LIKE '%.edu'AND country = 'New York';

SELECT *
FROM users
WHERE mobile_app = 'mobile-user'
  OR mobile_app IS NULL;

SELECT sign_up_at,
   strftime('%H', sign_up_at)
FROM users
GROUP BY 1
LIMIT 20;

SELECT *
FROM users
JOIN progress
ON users.user_id = progress.user_id;

SELECT email_domain, 
  COUNT(learn_cpp) AS cpp_students,
  COUNT(learn_sql) AS sql_students,
  COUNT(learn_html) AS html_students,
  COUNT(learn_javascript) AS js_students,
  COUNT(learn_java) AS java_students
FROM users
JOIN progress
  ON users.user_id = progress.user_id
WHERE email_domain LIKE '%.edu'
GROUP BY email_domain;


SELECT email_domain, SUM(learn_cpp) AS cpp_students,
  SUM(learn_sql) AS sql_students,
  SUM(learn_html) AS html_students,
  SUM(learn_javascript) AS js_students,
  SUM(learn_java) AS java_students
FROM users
JOIN progress
  ON users.user_id = progress.user_id
WHERE email_domain LIKE '%.edu'AND country = 'New York'
GROUP BY email_domain;

SELECT email_domain, SUM(learn_cpp) AS cpp_students,
  SUM(learn_sql) AS sql_students,
  SUM(learn_html) AS html_students,
  SUM(learn_javascript) AS js_students,
  SUM(learn_java) AS java_students
FROM users
JOIN progress
  ON users.user_id = progress.user_id
WHERE email_domain LIKE '%.edu'AND country = 'New York'
GROUP BY email_domain;