-- 1. Question
select mov_title, mov_year
from Movie;

-- 2. Question
select mov_year
from Movie
where mov_title = 'American Beauty';

-- 3. Question
select *
from Movie
where mov_year = 1999;

-- 4. Question
select *
from Movie
where mov_year < 1998;

-- 5. Question
select distinct rev_name, mov_title
from Reviewer, Movie;

-- 6. Question
select distinct rev_name
from Reviewer, Rating
where rev_star > 7;

-- 7. Question
select distinct mov_title
from Movie, Rating
where num_o_rating IS null and Movie.mov_id = Rating.mov_id_fk;

-- 8. Question
select distinct rev_name
from Rating, Reviewer
where Rating.num_o_rating is null and Reviewer.rev_id = Rating.rev_id_fk;

-- 9. Question
select distinct mov_title, dir_fname, dir_lname
from Movie, Director
where mov_title = 'Eyes Wide Shut';
