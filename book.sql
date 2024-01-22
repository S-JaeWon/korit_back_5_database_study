insert into author_tb  #insert select 
SELECT 
   0,
   author
FROM 
   temp_book_tb
group by
   author
order by
   author;
    
select
   *
from
   author_tb;

insert into publisher_tb
SELECT 
   0,
   publisher
FROM 
   temp_book_tb
group by
   publisher
order by
   publisher;
    
select
   *
from
   publisher_tb; 