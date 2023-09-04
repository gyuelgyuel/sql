-- -- 필터
-- -- <model>.objects.filter(year__gt=2000, year_lt=2010)
-- SELECT * FROM movies_movie
-- WHERE year > 2000 AND year < 2010;

-- -- <model>.objects.filter(Q(year__lt=2000)|Q(year__gt=2010))
-- SELECT * FROM movies_movie
-- WHERE year < 2000 OR year > 2010;

-- -- <model>.objects.exclude(age__gt=30)
-- SELECT * FROM movies_user
-- WHERE NOT age > 30;

-- -- 함수
-- -- <model>.objects.filter(movie_id=1).aggregation(Min('value'),Max('value'))
-- SELECT MIN(value), MAX(value)
-- FROM movies_score
-- WHERE movie_id=1;

-- -- <model>.objects.filter(year_gt>2000).count()
-- SELECT COUNT(*) FROM movies_movie
-- WHERE year > 2000;

-- -- <model>.objects.values('country').distinct().count()
-- SELECT COUNT(DISTINCT country)
-- FROM movies_user;

-- -- <model>.objects.filter(value__gt=<model>.objects.aggregation(Avg('value')))
-- SELECT * FROM movies_score
-- WHERE value > (SELECT AVG(value) FROM movies_score);

-- -- 비슷한 문구, 정규표현식
-- -- <model>.objects.filter(title__contains='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%the%';
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%g__d%';

-- -- <model>.objects.filter(year_in=[2000,2001,2002])
-- SELECT * FROM movies_movie
-- WHERE year IN (2000, 2001, 2002);

-- -- <model>.objects.filter(age__range=[20, 30])
-- SELECT * FROM movies_user
-- WHERE age BETWEEN 20 AND 30;

-- -------- UPDATE ---------
-- UPDATE movies_actor
-- SET age=100
-- WHERE id=1;