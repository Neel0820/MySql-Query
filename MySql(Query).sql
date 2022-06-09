CREATE DATABASE employee;


CREATE TABLE hobby (id int PRIMARY KEY AUTO_INCREMENT, name varchar(50));
CREATE TABLE employee (id int PRIMARY KEY AUTO_INCREMENT, first_name varchar(20), last_name varchar(20), age int, mobile_number varchar(20), address varchar(200));
CREATE TABLE employee_salary (id int PRIMARY KEY AUTO_INCREMENT, fk_employee_id int, salary double, date date, FOREIGN KEY (fk_employee_id) REFERENCES employee(id));
CREATE TABLE employee_hobby (id int PRIMARY KEY AUTO_INCREMENT, fk_employee_id int, fk_hobby_id int, FOREIGN KEY (fk_employee_id) REFERENCES employee(id), FOREIGN KEY (fk_hobby_id) REFERENCES hobby(id));


Insert Data In employee Table :


INSERT INTO employee (id, first_name, last_name, age, mobile_number, address) VALUES (101, 'Neel', 'Bhanderi', 21, 9081223547, 'Surat');
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('John', 'Abraham', 25, 9081567890, 'Ahmedabad');
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('Michale', 'Clarke', 28, 8953223547, 'Baroda');
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('Roy', 'Thomas', 30, 9191223657, 'Anand');
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('Tom', 'Jose', 32, 9089083547, 'Rajkot');


Insert Data In hobby Table :


INSERT INTO hobby (name) VALUES ('Physical game playing');
INSERT INTO hobby (name) VALUES ('Video game playing');
INSERT INTO hobby (name) VALUES ('Watching movies');
INSERT INTO hobby (name) VALUES ('Listening songs');


Insert Data In employee_hobby Table :


INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (101, 4);
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (101, 1);
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (102, 2);
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (103, 1);
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (104, 4);
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (105, 1);
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (105, 3);
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (103, 2);


Insert Data In employee_salary Table :


INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (101, 10000, '2022-07-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (102, 15000, '2022-07-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (103, 13000, '2022-07-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (104, 22000, '2022-07-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (105, 25000, '2022-07-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (102, 15000, '2022-06-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (105, 25000, '2022-06-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (101, 10000, '2022-06-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (104, 22000, '2022-06-05');
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (103, 13000, '2022-06-05');
