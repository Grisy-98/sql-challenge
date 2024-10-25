-- Create Titles table
create table Titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(40) NOT NULL
);

-- Create the Employees table
create table Employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(35) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	foreign key (emp_title_id) references Titles (title_id)
);

-- Create Departments table
create table Departments(
	dept_no VARCHAR(8) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(40) NOT NULL	
);

-- Create Dept_Emp table
create table Dept_Emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	foreign key (emp_no) references Employees (emp_no),
	foreign key (dept_no) references Departments (dept_no)
);

-- Create Dept_Manager table
create table Dept_Manager(
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
	foreign key (dept_no) references Departments (dept_no),
	foreign key (emp_no) references Employees (emp_no)
);

-- Create Salaries table
create table Salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references Employees (emp_no)
);
