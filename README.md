# SQL-challenge

Background
It is a beautiful spring day, and it is two weeks since got hired as a new data engineer at Pewlett Hackard. First major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files. 

In this assignment, the tables to hold data in the CSVs were designed, imported the CSVs into a SQL database, and answered the questions about the data. In other words, you will perform:

- Data Engineering, and  
- Data Analysis

First of all, a new repository for this project called sql-challenge is created and Cloned the new repository to the local machine. Inside the local git repository, a directory for the SQL challenge is created adn used a folder name to correspond to the challenge: EmployeeSQL. All the files were added to this folder. The changes were pushed to Github. 

Data Modeling:

The CSVs data files were inspected and sketched out an ERD of the tables using tool like http://www.quickdatabasediagrams.com. The screenshot is provided as a .png file.

Data Engineering:
The information obtained was used to to create a table schema for each of the six CSV files specifying data types, primary keys, foreign keys, and other constraints. For the primary keys it was checked to see if the column is unique. The tables were created in the correct order to handle foreign keys. Each CSV files were imported into the corresponding SQL tables. Table schemata are provided as a text file in Jupyter notbook.

Data Analysis:
After obtaining a complete database, the followings were performed:
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager’s employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is “Hercules” and last names begin with “B.”
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

The querries are provided as jupyter notebook file as text format. 


Bonus (Optional):
As examined the data, it is overcome with a creeping suspicion that the dataset is fake. It was surmise that the boss handed a spurious data in order to test the data engineering skills of a new employee. To confirm the hunch, the following steps were taken to generate a visualization of the data:

Imported the SQL database into Pandas. The following given codes were used:

from sqlalchemy import create_engine
engine = create_engine('postgresql://{username}:{password}@localhost:5432/<db_name>')
connection = engine.connect()

A histograme is created to visualize the most common salary ranges for employees. Also a bar chart of average salary by title is created.

Epilogue:
The employee ID 499942 is found to be funny "April Fools Day" - a beautiful spring day as mentioned in the prologue of this project. 
FUNNY !!!
499942	Foolsday	April	1997-02-10	Development	40000

