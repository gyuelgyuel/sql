-- -- 1번 유저가 작성한 모든 점수
-- SELECT * FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;

-- -- 1번 영화의 카테고리 이름
-- SELECT name FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category_movies.category_id = movies_category.id
-- WHERE movies_movie.id=1;


-- -- 1번 유저가 작성한 모든 점수의 평균
-- SELECT AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- Where movies_user.id=1;

-- -- drama 카테고리에 속한 모든 영화
-- SELECT movies_category.id, name, movies_movie.id, title FROM movies_category
-- JOIN movies_category_movies ON movies_category.id = movies_category_movies.category_id
-- JOIN movies_movie ON movies_movie.id = movies_category_movies.movie_id
-- WHERE name='drama';


-- 나라별 점수 평균
SELECT country, COUNT(*), AVG(value) FROM movies_user
JOIN movies_score ON movies_user.id = movies_score.user_id
GROUP BY country;