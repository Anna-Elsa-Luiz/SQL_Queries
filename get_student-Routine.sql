CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student`(in n_students int)
BEGIN
select * from Student limit n_students;
select count(student_code) as Total_students from Student;

END