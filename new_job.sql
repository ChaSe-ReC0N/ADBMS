use Jo;

create database Jo;
use Jo;
create table jobs
(
job_id int(30),
job_title varchar(30),
min_sal int(10),
max_sal int(10),
primary key(job_id)
);

create table regions
(
region_id int(35),
region_name varchar(35),
primary key(region_id)
);


create table countries
(
country_id int(40),
country_name varchar(45),
region_id int,
foreign key(region_id) references regions(region_id),
primary key(country_id)
);

create table locations
(
country_id int,
location_id int(40),
street_address varchar(45),
postal_code int(40),
city  varchar(45),
state_province varchar(45),
foreign key(country_id) references countries(country_id),
primary key(location_id)
);


create table departments
(
location_id int,
department_id int(25),
department_name varchar(40),
foreign key(location_id) references locations(location_id),
primary key(department_id)
);

create table employees
(job_id int,
department_id int,
employee_id int(25),
first_name varchar(40),
last_name varchar(40),
email varchar(45),
phone_number int(10),
hire_date date NOT NULL,
foreign key(job_id) references jobs(job_id),
salary int(10),
foreign key(department_id) references departments(department_id),
primary key(employee_id)
);

create table dependents
(
employee_id int,
dependent_id int(40),
first_name varchar(40),
last_name varchar(40),
relationship varchar(40),
foreign key(employee_id) references employees(employee_id),
primary key(dependent_id)
);

