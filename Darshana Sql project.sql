use project_movie_database;
-- Can you get all the data about movies?
select* from movies;
-- Can you get all the data about Directors?
select* from directors;
-- Check how many movies are present in IMDB.
select count(id) from movies;
-- Find these 3 directors: James Cameron ; Luc Besson ; John Woo
select * from directors;
select * from directors where name in ('James Cameron', 'Luc Besson', 'John Woo');
-- Find all directors with name starting with S.
select * from directors where name like 'S%';
-- Count female directors.
select count(*) as 'Female_count' from directors where gender=1;
-- Find the name of the 10th first women directors?
select * from directors;
select name from directors where gender = 1 order by name limit 1 offset 9;
-- What are the 3 most popular movies?
select * from movies;
select original_title, popularity from movies order by popularity desc limit 3;
-- What are the 3 most bankable movies?
select * from movies;
select revenue, original_title from movies order by revenue desc limit 3;
-- What is the most awarded average vote since the January 1st, 2000?
select * from movies;
select original_title, revenue, release_date, vote_average from movies where release_date >= '2000-01-01' order by vote_average desc limit 1;
-- Which movie(s) were directed by Brenda Chapman?
select * from movies;
select * from directors; 
select m.original_title, d.name, m.release_date
from movies m 
inner join directors d on m.director_id= d.id
where d.name= 'Brenda Chapman'
order by m.release_date;


select * from directors where name= 'Brenda Chapman';
select * from movies where uid= '59803';
select * from movies where id= '4801';
-- Upon checking the id, as I can check there is no movie directed by 'Brenda Chapman'.

-- Which director made the most movies?
select d.name, count(m.id)
from directors d
join movies m on m.director_id= d.id
group by d.name order by count(m.id) desc
limit 5;

-- Which director is the most bankable?
select d.name, sum(revenue)
from directors d
join movies m on m.director_id= d.id
group by d.name order by sum(revenue) desc limit 1;




