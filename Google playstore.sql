select * from googlestore limit 10

-- Q1. Show the top 10 apps with the highest ratings.
select "app" , "rating" from "googlestore"
order by "rating" desc limit 10;

-- Q2. Find the highest number of reviews.
select max("reviews") as "max_reviews" from "googlestore"

-- Q3. Count the number of apps in each category.
select "category", count("app") as "total_apps" from "googlestore"
group by "category"
order by  "total_apps" desc;

-- Q4. Count free and paid apps.
select "type" , count("app") as "types of apps" from "googlestore"
group by "type"
order by "types of apps" desc;

-- Q5. Show apps in the GAME category.
select "app" , "category" from "googlestore"
where "category" = 'GAME';

-- Q6. Count apps by content rating.
select "content_rating" , count("app") as "apps" from "googlestore"
group by "content_rating"
order by "apps" desc;

-- Q7. Count apps in each genre.
select "genres" , count("app") as "apps" from "googlestore"
group by "genres"
order by "apps" desc;

-- Q8. Which apps have highest number of installs?
select "app" , "installs"  from "googlestore"
order by "installs" desc limit 10;

-- Q9. What are the top 10 largest apps by size?
select "app" , "size"  from "googlestore"
order by "size";

-- Q10. which apps were updated most recently?
select "app" , "last_updated"  from "googlestore"
order by "last_updated" desc;
