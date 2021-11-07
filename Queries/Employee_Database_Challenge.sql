-- challenge code

-- Deliverable 1 Step 1-7
SELECT employees.emp_no,
		employees.first_name,
		employees.last_name,
		titles.title,
		titles.from_date,
		titles.to_date
INTO retirement_titles
FROM employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;


-- Deliverable 1 Step 8-14
SELECT DISTINCT ON (emp_no) emp_no,
		first_name,
		last_name,
		title,
		from_date,
		to_date
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no,
		to_date DESC;


-- Deliverable 1 Step 15-20
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC



-- Deliverable 2 Step 1-11
SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
		employees.first_name,
		employees.last_name,
		employees.birth_date,
		dept_employee.from_date,
		dept_employee.to_date,
		titles.title
INTO mentorship_eligibility
FROM employees
JOIN dept_employee
ON employees.emp_no = dept_employee.emp_no
JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (dept_employee.to_date = '9999-01-01')
		AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;