{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;\f2\fswiss\fcharset0 Arial-BoldMT;
\f3\fswiss\fcharset0 ArialMT;\f4\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c1\c1;\cssrgb\c100000\c100000\c100000\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww25400\viewh14880\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs28 \cf0 Update Data of employee Table :\

\f1\b0\fs24 \
\
UPDATE employee set first_name = 'Joe', last_name = 'Root', age = 30, address = \'91England' WHERE id = 101;\
\
\

\f0\b\fs28 Update Data of employee_hobby Table :\

\f1\b0\fs24 \
\
UPDATE employee_hobby set fk_employee_id = 102, fk_hobby_id = 1 WHERE id = 1;\
\
\

\f0\b\fs28 Update Data of employee_salary Table :\

\f1\b0\fs24 \
\
UPDATE employee_salary set salary = 15000 WHERE id = 8;\
\
\

\f0\b\fs28 Update Data of hobby Table :\

\f1\b0\fs24 \
\
UPDATE hobby SET name = 'Outdoor game playing' WHERE id = 1;\
\
\

\f0\b\fs28 Delete Data from employs_salary Table :\

\f1\b0\fs24 \
\
DELETE FROM employee_salary WHERE id = 5 || id = 7;\
DELETE FROM employee_salary WHERE fk_employee_id = 104 || fk_employee_id = 105;\
\
\

\f0\b\fs28 Delete Data from employs_hobby Table :\

\f1\b0\fs24 \
\
DELETE FROM employee_hobby WHERE id = 5 || id = 6;\
DELETE FROM employee_hobby WHERE fk_employee_id = 104 || fk_employee_id = 105;\
\
\

\f0\b\fs28 Delete Data from employs Table :\

\f1\b0\fs24 \
\
DELETE FROM employee WHERE id = 104 || id = 105;\
\
\

\f0\b\fs28 Delete Data from hobby Table :\

\f1\b0\fs24 \
\
DELETE FROM hobby WHERE id = 3 || id = 4;\
\
\
\pard\pardeftab720\partightenfactor0

\f2\b\fs28 \cf0 \expnd0\expndtw0\kerning0
Select Queries to Get employee :\

\f3\b0\fs29\fsmilli14667 \
\

\fs24 SELECT * FROM employee;\

\fs29\fsmilli14667 \
\

\f2\b\fs28 Select Queries to Get hobby :\

\f3\b0\fs29\fsmilli14667 \
\

\fs24 SELECT * FROM hobby;\

\fs29\fsmilli14667 \
\

\f2\b\fs28 Select Queries to Get employee_salary :\

\f3\b0\fs29\fsmilli14667 \
\

\fs24 SELECT * FROM employee_salary;\

\fs29\fsmilli14667 \
\

\f2\b\fs28 Select Queries to Get \kerning1\expnd0\expndtw0 employee_hobby\expnd0\expndtw0\kerning0
 :\

\f3\b0\fs29\fsmilli14667 \
\

\fs24 SELECT * FROM 
\f1 \kerning1\expnd0\expndtw0 employee_hobby
\f3 \expnd0\expndtw0\kerning0
;\

\fs29\fsmilli14667 \
\

\f2\b\fs28 Select Query to Get\'a0 employee name, his/her employee_salary :\

\f3\b0\fs29\fsmilli14667 \
\

\fs24 SELECT first_name as name, salary AS employee_salary FROM employee INNER JOIN employee_salary ON employee.id = employee_salary.fk_employee_id;\
\
\

\f2\b\fs28 Select Query to Get employee name, total salary of employee, hobby name(comma-separated - you need to use subquery for hobby name).\

\f3\b0\fs29\fsmilli14667 \
\pard\pardeftab720\partightenfactor0

\f4\fs24 \cf2 \cb3 \
\pard\pardeftab720\partightenfactor0

\f3 \cf2 SELECT e.first_name AS name, SUM(es.salary) AS total_salary,(SELECT GROUP_CONCAT(h.name) FROM hobby h INNER JOIN employee_hobby AS eh ON eh.fk_hobby_id = h.id WHERE e.id = eh.fk_employee_id) AS hobby_name FROM employee e LEFT JOIN employee_salary es ON e.id = es.fk_employee_id GROUP BY e.id;
\f4 \
\
\
\pard\pardeftab720\partightenfactor0

\f2\b\fs28 \cf0 \cb1 Select Single Query to Get All employee name, all hobby_name in Single Column : \

\f3\b0\fs29\fsmilli14667 \
\

\fs24 SELECT first_name AS name FROM employee.employee UNION SELECT name FROM employee.hobby;\
}