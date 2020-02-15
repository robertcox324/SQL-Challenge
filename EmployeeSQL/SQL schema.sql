Create table departments(
	dept_no varchar(45),
	dept_name varchar(45),
	primary key(dept_no)
);

Create table employees(
	emp_no int primary key,
	birth_date varchar(20),
    first_name varchar(45),
	last_name varchar(45),
	gender varchar(1),
	hire_date varchar(20)
);

Create table dept_emp(
	emp_no int,
	dept_no varchar(45), 
	from_date varchar(20),
    to_date varchar(20),
	FOREIGN KEY(dept_no) references departments(dept_no)
	--primary key(emp_no)
);

Create table dept_manager(
	dept_no varchar(45),
	emp_no int, 
	from_date varchar(20),
    to_date varchar(20),
	FOREIGN KEY(dept_no) references departments(dept_no),
	FOREIGN KEY(emp_no) references employees(emp_no)
);

Create table salaries(
	emp_no int, 
	salary int,
	from_date varchar(20),
    to_date varchar(20),
	FOREIGN KEY(emp_no) references employees(emp_no)
);

Create table titles(
	emp_no int, 
	title varchar(45),
	from_date varchar(20),
    to_date varchar(20),
	FOREIGN KEY(emp_no) references employees(emp_no)
);
