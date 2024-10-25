# sql-challenge

## Description

For this challenge, I am to complete a research project about the people whom the company, Pewlett Hackard (a fictional company) employed during the 1980s and the 1990s given the remaining employees database, which is six CSV files.

In order to complete this task, I will be using SQL to create the database The three main performances for this research project are data modeling, data engineering, and data analysis.

### Data Modeling

For this task, I looked at the six CSV files created the Entity Relationship Diagram (ERD) according to the table names and table headings. In order to sketch the ERD, I used the free tool, QuickDBD (http://www.quickdatabasediagrams.com/).

![image](https://github.com/user-attachments/assets/0929b9b5-1db1-45bc-a801-5f072e967b21)


### Data Engineering

Based on the ERD sketch, I created the corresponding tables. While creating the tables, I also made sure that I labeled the proper primary keys as well as correctly labeled the foreign keys and referenced them to the correct primary key.


### Data Analysis

To complete this task, I used various queries and joins to complete each inquiry and found the following:
- List the employee number, last name, first name, sex, and salary of each employee.
  - There were a total of 300,024 employees in this database.
- List the first name, last name, and hire date for the employees who were hired in 1986.
  - There was a total of 36,150 employees who were hired on 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
  - This business has a total of nine departments, which are:
    - Marketing
    - Finance
    - Human Resource
    - Production
    - Development
    - Quality Management
    - Sales
    - Research
    - Customer Service
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  - The department numbers all start with "d" followed by some numbers.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  - There were a total of 20 employees whose first name is Hercules and last name began with the letter B.
  - Out of those 20, 10 were female and 10 were male.
- List each employee in the Sales department, including their employee number, last name, and first name.
  - There were a total of 52,245 employees in the Sales Department.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  - In total, there were 137,952 employees in the Sales and Development departments.
  - That means that a total of 85,707 employees were part of the Development department.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
  - There were a total of 1,638 different last names. The most common last name was Baba.

