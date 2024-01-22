# 1)select로 값 생성 -> insert로 생성한 값 테이블에 대입 

insert into book_tb

select # temp 테이블에는 ID가 없으므로 넣어줘야됨
	0,
    tbt.book_name,
    at.author_id, #author id 는 temp 에 없음
    pt.publisher_id
from
	temp_book_tb tbt
left outer join
    author_tb at 
    on (at.author_name = tbt.author) # id 를 temp에 넣어줬움
left outer join
    publisher_tb pt
    on (pt.publisher_name = tbt.publisher)
group by # 그룹으로 묶을때 공통점 전부 포함하기
	tbt.book_name,
    at.author_id, 
    pt.publisher_id
order by
	book_name,
    author_id,
    publisher_id;

 -- ------------------------------------------------------------------------------------------------------------------------
 SELECT * FROM db_study.book_tb;
 
 
 
 
 
 
 
 