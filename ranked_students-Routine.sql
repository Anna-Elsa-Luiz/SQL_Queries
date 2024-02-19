CREATE DEFINER=`root`@`localhost` PROCEDURE `ranked_students`(in marks float)
BEGIN
select * from Student where Student.marks>=marks;
select count(student_id) as total_students from Student;
END