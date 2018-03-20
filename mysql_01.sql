CREATE DATABASE mysql_01;

use mysql_01;

CREATE TABLE department
(
  dpt_name   CHAR(20) NOT NULL,
  people_num INT(10) DEFAULT '10',
  CONSTRAINT dpt_pk PRIMARY KEY (dpt_name)
 );

CREATE TABLE employee
(
  id      INT(10) PRIMARY KEY,
  name    CHAR(20),
  age     INT(10),
  salary  INT(10) NOT NULL,
  phone   INT(12) NOT NULL,
  in_dpt  CHAR(20) NOT NULL,
  UNIQUE  (phone),
  CONSTRAINT emp_fk FOREIGN KEY (in_dpt) REFERENCES department(dpt_name)
 );
 
CREATE TABLE project
(
  proj_num   INT(10) NOT NULL,
  proj_name  CHAR(20) NOT NULL,
  start_date DATE NOT NULL,
  end_date   DATE DEFAULT '2018-03-19',
  of_dpt     CHAR(20) REFERENCES department(dpt_name),
  CONSTRAINT proj_pk PRIMARY KEY (proj_num,proj_name)
 );

#INSERT INTO department(dpt_name,people_num) VALUES('部门',人数);

INSERT INTO department(dpt_name,people_num) VALUES('dpt1',11);
INSERT INTO department(dpt_name,people_num) VALUES('dpt2',12);
INSERT INTO department(dpt_name,people_num) VALUES('dpt3',10);
INSERT INTO department(dpt_name,people_num) VALUES('dpt4',15);


#INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(编号,'名字',年龄,工资,电话,'部门');

INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(01,'Tom',26,2500,119119,'dpt4');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(02,'Jack',24,2500,120120,'dpt2');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(03,'Rose',22,2800,114114,'dpt3');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(04,'Jim',35,3000,100861,'dpt1');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(05,'Mary',21,3000,100101,'dpt2');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(06,'Alex',26,3000,123456,'dpt1');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(07,'Ken',27,3500,654321,'dpt1');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(08,'Rick',24,3500,987654,'dpt3');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(09,'Joe',31,3600,110129,'dpt2');
INSERT INTO employee(id,name,age,salary,phone,in_dpt) VALUES(10,'Mike',23,3400,110110,'dpt4');
INSERT INTO employee(id,name,salary,phone,in_dpt) VALUES(11,'Jobs',3600,019283,'dpt2');
INSERT INTO employee(id,name,salary,phone,in_dpt) VALUES(12,'Tony',3400,102938,'dpt3');






#INSERT INTO project(proj_num,proj_name,start_date,end_date,of_dpt) VALUES(编号,'工程名','开始时间','结束时间','部门名');

INSERT INTO project(proj_num,proj_name,start_date,end_date,of_dpt) VALUES(01,'proj_a','2018-01-15','2018-01-31','dpt2');
INSERT INTO project(proj_num,proj_name,start_date,end_date,of_dpt) VALUES(02,'proj_b','2018-01-15','2018-02-15','dpt1');
INSERT INTO project(proj_num,proj_name,start_date,end_date,of_dpt) VALUES(03,'proj_c','2018-02-01','2018-03-01','dpt4');
INSERT INTO project(proj_num,proj_name,start_date,end_date,of_dpt) VALUES(04,'proj_d','2018-02-15','2018-04-01','dpt3');
INSERT INTO project(proj_num,proj_name,start_date,end_date,of_dpt) VALUES(05,'proj_e','2018-02-25','2018-03-01','dpt4');
INSERT INTO project(proj_num,proj_name,start_date,end_date,of_dpt) VALUES(06,'proj_f','2018-02-26','2018-03-01','dpt2');
