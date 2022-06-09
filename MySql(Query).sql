{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red52\green52\blue52;}
{\*\expandedcolortbl;;\cssrgb\c26667\c26667\c26667;}
\paperw11900\paperh16840\margl1440\margr1440\vieww25400\viewh14880\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs28 \cf0 CREATE DATABASE employee;\

\f1\b0\fs24 \
\
CREATE TABLE hobby (id int PRIMARY KEY AUTO_INCREMENT, name varchar(50));\
\
CREATE TABLE employee (id int PRIMARY KEY AUTO_INCREMENT, first_name varchar(20), last_name varchar(20), age int, mobile_number varchar(20), address varchar(200));\
\
CREATE TABLE employee_salary (id int PRIMARY KEY AUTO_INCREMENT, fk_employee_id int, salary double, date date, FOREIGN KEY (fk_employee_id) REFERENCES employee(id));\
\
CREATE TABLE employee_hobby (id int PRIMARY KEY AUTO_INCREMENT, fk_employee_id int, fk_hobby_id int, FOREIGN KEY (fk_employee_id) REFERENCES employee(id), FOREIGN KEY (fk_hobby_id) REFERENCES hobby(id));\
\
\

\f0\b\fs28 Insert Data In employee Table :
\f1\b0\fs24 \
\
\
INSERT INTO employee (id, first_name, last_name, age, mobile_number, address) VALUES (101, 'Neel', 'Bhanderi', 21, 9081223547, 'Surat');\
\
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('John', 'Abraham', 25, 9081567890, 'Ahmedabad');\
\
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('Michale', 'Clarke', 28, 8953223547, 'Baroda');\
\
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('Roy', 'Thomas', 30, 9191223657, 'Anand');\
\
INSERT INTO employee (first_name, last_name, age, mobile_number, address) VALUES ('Tom', 'Jose', 32, 9089083547, 'Rajkot');\
\
\

\f0\b\fs28 Insert Data In hobby Table :
\f1\b0\fs24 \
\
\
INSERT INTO hobby (name) VALUES (\'91
\fs26\fsmilli13120 \cf2 \expnd0\expndtw0\kerning0
\shad\shadx0\shady-20\shadr0\shado255 \shadc0 Physical game playing
\fs24 \cf0 \kerning1\expnd0\expndtw0 \shad0 \'92);\
\
INSERT INTO hobby (name) VALUES (\'91
\fs26\fsmilli13120 \cf2 \expnd0\expndtw0\kerning0
\shad\shadx0\shady-20\shadr0\shado255 \shadc0 Video game playing
\fs24 \cf0 \kerning1\expnd0\expndtw0 \shad0 \'92);\
\
INSERT INTO hobby (name) VALUES (\'91
\fs26\fsmilli13120 \cf2 \expnd0\expndtw0\kerning0
\shad\shadx0\shady-20\shadr0\shado255 \shadc0 Watching movies
\fs24 \cf0 \kerning1\expnd0\expndtw0 \shad0 \'92);\
\
INSERT INTO hobby (name) VALUES (\'91
\fs26\fsmilli13120 \cf2 \expnd0\expndtw0\kerning0
\shad\shadx0\shady-20\shadr0\shado255 \shadc0 Listening songs
\fs24 \cf0 \kerning1\expnd0\expndtw0 \shad0 \'92);\
\
\

\f0\b\fs28 Insert Data In employee_hobby Table :
\f1\b0\fs24 \
\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (101, 4);\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (101, 1);\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (102, 2);\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (103, 1);\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (104, 4);\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (105, 1);\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (105, 3);\
\
INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) VALUES (103, 2);\
\
\

\f0\b\fs28 Insert Data In employee_salary Table :
\f1\b0\fs24 \
\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (101, 10000, '2022-07-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (102, 15000, '2022-07-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (103, 13000, '2022-07-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (104, 22000, '2022-07-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (105, 25000, '2022-07-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (102, 15000, '2022-06-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (105, 25000, '2022-06-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (101, 10000, '2022-06-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (104, 22000, '2022-06-05');\
\
INSERT INTO employee_salary (fk_employee_id, salary, date) VALUES (103, 13000, '2022-06-05');}