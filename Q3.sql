insert into grade_tb
value 
	(0, 1, 1, 95),
    (0, 2, 1, 84),
    (0, 1, 2, 89),
    (0, 2, 2, 92),
    (0, 1, 3, 100),
    (0, 2, 3, 88);

select
	gt.grade_id,
    st1.student_id,
    st1.student_name,
    st2.subject_id,
    st2.subject_name,
    gt.grade_score
from
	grade_tb gt
left outer join 
	student_tb st1
		on (st1.student_id = gt.student_id)
left outer join
	subject_tb st2
		on	(st2.subject_id = gt.subject_id)
where
	grade_id >=1 and grade_id <=4;
