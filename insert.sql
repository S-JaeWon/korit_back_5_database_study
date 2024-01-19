# 데이터 베이스를 선택하는 명령어 use `db_study`; use `sys`;
# AutoIcrements, 값이 없어도 다음으로 자동등록

insert into student_tb(student_id, name, age, address) values (0, '심재원', 29, '부산 남구');
insert into student_tb(address, name, age, student_id) values ('부산 남구', '심재원', 29, 0);
insert into student_tb(name, address) values ('심재원', null);
insert into student_tb values (0, '홍길동', null, null); 
insert into student_tb values (0, '홍길동', null, null), (0, '철수', null, null); 
insert into
	student_tb
    ()
values 
	(0, '홍길동', null, null), 
	(0, '철수', null, null); 
    
