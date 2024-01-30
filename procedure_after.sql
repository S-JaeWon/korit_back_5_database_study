set @book_name = '송사무장의 실전경매3';
set @author_name = '송희창3';
set @publisher_name = '지혜로3';
set @p_insert_book_stats = 0;

call p_insert_book(@book_name, @author_name, @publisher_name, @p_insert_book_stats);

# 괄호 안에 값 바로 대입 가능p_get_auto_increment

select
	*
from
	book_tb
order by
	book_id desc;
    
select @p_insert_book_stats;
    
-- select @new_book_id;

-- call p_insert_book('혼자 공부하는 SQL', '우재남', '한빛미디어');

-- select
-- 	*
-- from
-- 	book_tb;