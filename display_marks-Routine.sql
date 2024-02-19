CREATE DEFINER=`root`@`localhost` PROCEDURE `display_marks`(inout student_code varchar(20))
BEGIN
select marks into student_code from Student where Student.student_code = student_code;
END