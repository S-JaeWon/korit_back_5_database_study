select
	at.num,
    at.author_name
from
	(select 
		row_number() over(order by author_id desc) as num,
		author_id,
        author_name
	from 
		author_tb
	where
		author_name like '글%') at
where
	at.num > 10;
    
-- -----------------------------------------------------------------

select
	*,
    (select
		count(*)
	from
		publisher_tb) as total_count
from
	publisher_tb;
# select 실행시 안에 select문이 하나 더 있으모로 오래 걸림. 
    

select
	*
from
	publisher_tb pt
    left outer join (select count(*) as totacl_count from publisher_tb) pt2 on (1 = 1);
 # 한번의 실행으로 명령이행 가능    
    
-- --------------------------------------------------
select
	*
from
	book_tb
where
	publisher_id = (select publisher_id from publisher_tb where publisher_name like '이%');
# 서브쿼리가 효과적으로 캐시될 수 있는 경우

select
	*
from
	book_tb bt
    left outer join publisher_tb pt on(pt.publisher_id = bt.publisher_id)
where
	pt.publisher_name like '이%';
# 대용량 데이터베이스에서 효율적인 인덱스 구성이 가능한 경우.
select @@prfiling;
show profiles;
set profiling = 1;