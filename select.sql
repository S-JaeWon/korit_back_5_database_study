select * from student_tb;
# *: 전체 컬럼

select	student_id, name from student_tb;
# student_tb 부터(from) student_id, name 선택(select)

#select	student_id, name from student_tb where student_id = 1;
# student_id가 1인 위치(where)로

select
	student_id,
    name
    age
from 
	student_tb 
where
	not name = '심재원'
    and name = '홍길동';

select
	student_id,
    name
    age
from 
	student_tb 
where
	name in ('심재원', '홍길동');
    
select
	*
from
	student_tb
where
	student_id in (1, 2, 3);
    
    
truncate table student_tb;

/*
	10명의 학생 정보 추가
    김도균 27 부산 금정구
    김도훈 25 부산 부산진구
    김범수 33 부산 금정구
    김상현 26 부산 남구
    이재영 26 부산 서구
    이정찬 29 부산 부산진구
    이지언 26 부산 동래구
    이편원 30 경상남도 양산시
    전주환 30 부산 부산진구
    심재원 29 부산 남구
*/

insert into
	student_tb
    (name, age, address)
values 
	('김도균', 27, '부산 금정구'), 
	('김도훈', 25, '부산 부산진구'),
	('김범수', 33, '부산 금정구'),
	('김상현', 26, '부산 남구'),
	('이재영', 26, '부산 서구'),
	('이정찬', 29, '부산 부산진구'),
	('이지언', 26, '부산 동래구'),
	('이편원', 30, '경상남도 양산시'),
	('전주환', 30, '부산 부산진구'),
	('심재원', 29, '부산 남구');
    
select
	*
from
	student_tb
where
	 name like '%도%'
     or name like '%원';
	#name in -> 사용불가 
 
select
	*
from
	student_tb
where
	age between 20 and 29;

select
	*
from
	student_tb
where
	name like '이%영%';
    # '김__', 뒤에 문자 수 만큼 _ 붙임 ex) 김철수 = 김__ 
    # '김%', 이름이 '김' 으로 시작한 값 출력
    # '%원', 원으로 끝나는~

# 집계(그룹화)
select
	address,
    count(*) as address_count
from
	student_tb
group by
	name,
	address
#having
	#address_count > 1
    #count(*) 
order by
	address_count desc,
    address;
	






