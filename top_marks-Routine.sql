CREATE DEFINER=`root`@`localhost` PROCEDURE `top_marks`(out highest_marks float)
BEGIN
select max(marks) into highest_marks from Student;
END