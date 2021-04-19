// Activity 1 Solution

SELECT last_name, hire_date 
FROM emps 
WHERE department_id = (SELECT department_id 
		FROM emps 
		WHERE last_name = 'Zlotkey') 
			AND last_name <> 'Zlotkey'



// Activity 2 Solution

SELECT employee_id, last_name
FROM emps
WHERE salary > (SELECT AVG(salary)
		FROM emps)
		ORDER BY salary;



// Activity 3 Solution

SELECT last_name, salary
FROM emps
WHERE manager_id = (SELECT employee_id
		FROM emps
		WHERE last_name = 'King');



// Activity 4 Solution

SELECT employee_id, last_name, salary
FROM emps
WHERE salary > (SELECT avg(salary) 
                from emps) 
                AND department_id in (SELECT department_id 
                                      FROM emps 
                                      WHERE last_name LIKE '%u%');



// Activity 5 Solution




// Activity 6 Solution

CREATE TABLE EMP(ID int(7), 
                 LAST_NAME VARCHAR(25), 
                 FIRST_NAME VARCHAR(25), 
                 DEPT_ID int(7));



// Activity 6_a Solution

ALTER TABLE EMP 
modify LAST_NAME VARCHAR(50);
DESCRIBE EMP;



// Activity 6_b Solution

CREATE TABLE EMPLOYEES2 AS 
SELECT EMPLOYEE_ID ID, FIRST_NAME , LAST_NAME, SALARY, DEPARTMENT_ID DEPT_ID 
FROM EMPS;


// Activity 6_c Solution

DROP TABLE EMP;



// Activity 6_d Solution

RENAME EMPLOYEES2 TO EMP;



// Activity 6_d Solution

ALTER TABLE EMP 
DROP COLUMN FIRST_NAME; 

