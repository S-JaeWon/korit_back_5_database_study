insert into
	student_address_sido_tb
values
	(0, '부산'),
    (0, '경상남도');
    
insert into
	student_address_sigungu_tb
values
	(0, '금정구'),
	(0, '부산진구'),
    (0, '남구'),
    (0, '서구'),
    (0, '동래구'),
    (0, '양산시');
    
insert into 
	student_register_tb
values
	(0, 1, 1, 1),
	(0, 2, 1, 2),
	(0, 3, 1, 1),
	(0, 4, 1, 3),
	(0, 5, 1, 4),
	(0, 6, 1, 2),
	(0, 7, 1, 5),
	(0, 8, 2, 6),
	(0, 9, 1, 2),
    (0, 10, 1, 3);

create view student_register_view as

select
	srt.student_register_id,
    srt.student_id,
    st.name,
    st.age,
    st.address,
    sat1.student_address_sido_id,
    sat1.student_address_sido,
    sat2.student_address_sigungu_id,
    sat2.student_address_sigungu
from
	student_register_tb srt
left outer join
	student_tb st
	on(st.student_id = srt.student_id)
left outer join
	student_address_sido_tb sat1
    on(sat1.student_address_sido_id = srt.student_address_sido_id)
left outer join
	student_address_sigungu_tb sat2
    on(sat2.student_address_sigungu_id = srt.student_address_sigungu_id);
    
    select
    *
    from
    student_register_tb srt;
    
