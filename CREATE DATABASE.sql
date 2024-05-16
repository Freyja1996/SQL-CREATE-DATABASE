create database dec_batch;
create table students_records(
Students_id int,
Students_Name varchar(40),
Department text,
Gender text,
Location char(40));
use dec_batch;
select * from students_records;
select location, gender from students_records;
insert into students_records
values(1,"Sophia","Data Science","F","Lagos"),
(2,"Dammy","Product Design","F","Lagos"),
(3,"Uju","Web Dev","F","Abuja"),
(4,"Dora","Software Dev","F","Kwara"),
(5,"Onyinye","Product Design","F","Ibadan"),
(6,"Khadijah","Cyber Security","F","Delta");


-- create database database_name --
create database Netflix_Users;
create table Customers_Records(
Customer_Name varchar(20),
Company text,
Gender text,
Age varchar(20),
Country char(20));
use Netflix_Users;
select * from Customers_Records;
insert into Customers_Records
values("Gary Miller","Inkly","M",29,"Greece"),
("Kim West","Pet Feed","F",26,"Finland"),
("Peter Dinklage","Microsoft","M",50,"USA"),
("Scarlett Manny","Knorr","F",30,"Phillipines"),
("Paul Hill","Cookie Inc","M",45,"Canada"),
("Ann Withers","Didactic","F",27,"Austria"),
("Ewan Thompson","Perino","M",36,"Panama"),
("Crystal Howes","Google","F",31,"UK");


insert into students_records
values(7,"Nike","UI/UX","F","Abeokuta"),
(8,"Olabode","Data Science","M","Ekiti"),
(9,"Ifedayo","Web Dev","M","Enugu"),
(10,"Ibrahim","Cyber Security","M","Lagos");
use dec_batch;
alter table students_records
add marital_status varchar(40);
-- filling the marital status column--
update students_records
set marital_status = "M" where students_id = 1;
update students_records
set marital_status = "S" where students_id = 2;
update students_records
set marital_status = "M" where students_id = 3;
update students_records
set marital_status = "M" where students_id = 4;
update students_records
set marital_status = "S" where students_id = 5;
update students_records
set marital_status = "M" where students_id = 6;
update students_records
set marital_status = "M" where students_id = 7;
update students_records
set marital_status = "S" where students_id = 8;
update students_records
set marital_status = "M" where students_id = 9;
update students_records
set marital_status = "S" where students_id = 10;

-- renaming marital_status to relationship_status--
alter table students_records
rename column marital_status to relationship_status;

-- Deleting a column--
alter table students_records
drop column gender;
select * from students_records;

/* SELECT STATEMENTS (SELECT,SELECT WHERE,SELECT DISTINCT)
SELECT statement is used to select data from a database
SELECT DISTINCT is used to return only distinct values
SELECT WHERE is used to filter records that meets a given condition*/

select students_id,students_name,department from students_records;

use dec_batch;
select distinct job_name from emp;
-- write a sql query to return the analyst in the organization--
select * from emp where job_name = "analyst";

-- SQL OPERATORS(>,<,=,>=,<=,<>)--
/*write a sql query to return all employees 
receiving above 2000 as their salary*/
select * from emp where salary > 2000;

-- and,or,not operator (logical operators)--
/*AND OPERATOR is used to filter records based on more 
than one condition.

OR OPERATOR is used to filter records that matches either one 
or both of the condition.

NOT OPERATOR returns records that do not match the condition.

LIKE operator is used to search for data that matches a 
specific patterns.

in operator allows you to specify multiple values in a where 
clause*/


-- SQL Constraints--
/*SQL constraints are used to specify rules for the
 data in a table.
Constraints are used to limit the type of data that 
can go into a table. This ensures the accuracy and 
reliability 
of the data in the table. If there is any violation 
between the constraint and the data action, 
the action is aborted.
The following constraints are commonly used in SQL:
NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified*/

create table products_table(
products_id int primary key auto_increment,
products_name text,
amount_paid float(7,2) check(amount_paid>20000),
location text default("Lagos,Nigeria"));
use dec_batch;
select * from products_table;

insert into products_table(products_name,amount_paid)
values("Flour",25000.00),
("Oats",32900.00),
("Rice",21000.00),
("Beans",34300.00),
("Yam",23000.00);

update products_table set location = "Abuja,Nigeria" where products_id = 5;





