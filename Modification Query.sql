Update Data of employee Table :


UPDATE employee set first_name = 'Joe', last_name = 'Root', age = 30, address = \'91England' WHERE id = 101;


Update Data of employee_hobby Table :


UPDATE employee_hobby set fk_employee_id = 102, fk_hobby_id = 1 WHERE id = 1;


Update Data of employee_salary Table :


UPDATE employee_salary set salary = 15000 WHERE id = 8;


Update Data of hobby Table :


UPDATE hobby SET name = 'Outdoor game playing' WHERE id = 1;


Delete Data from employs_salary Table :


DELETE FROM employee_salary WHERE id = 5 || id = 7;
DELETE FROM employee_salary WHERE fk_employee_id = 104 || fk_employee_id = 105;


Delete Data from employs_hobby Table :


DELETE FROM employee_hobby WHERE id = 5 || id = 6;
DELETE FROM employee_hobby WHERE fk_employee_id = 104 || fk_employee_id = 105;


Delete Data from employs Table :


DELETE FROM employee WHERE id = 104 || id = 105;


Delete Data from hobby Table :


DELETE FROM hobby WHERE id = 3 || id = 4;


Select Queries to Get employee :


SELECT * FROM employee;


Select Queries to Get hobby :


SELECT * FROM hobby;


Select Queries to Get employee_salary :


SELECT * FROM employee_salary;


Select Queries to Get employee_hobby :


SELECT * FROM employee_hobby;


Select Query to Get employee name, his/her employee_salary :


SELECT first_name as name, salary AS employee_salary FROM employee INNER JOIN employee_salary ON employee.id = employee_salary.fk_employee_id;


Select Query to Get employee name, total salary of employee, hobby name(comma-separated - you need to use subquery for hobby name) :


SELECT e.first_name AS name, SUM(es.salary) AS total_salary,(SELECT GROUP_CONCAT(h.name) FROM hobby h INNER JOIN employee_hobby AS eh ON eh.fk_hobby_id = h.id WHERE e.id = eh.fk_employee_id) AS hobby_name FROM employee e LEFT JOIN employee_salary es ON e.id = es.fk_employee_id GROUP BY e.id;


Select Single Query to Get All employee name, all hobby_name in Single Column :


SELECT first_name AS name FROM employee.employee UNION SELECT name FROM employee.hobby;
