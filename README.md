# Employee Database with SQL

## Overview of the analysis

- Management requested additional analysis using the Employee Database:
  - determine the number of retiring employees per title. 
  - identify employees who are eligible to participate in a mentorship program. 
  - a report that summarizes your analysis.
  - prepare management for the “silver tsunami” as many current employees reach retirement age.


## Results

Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

----

![This is an image](Resources/Query_1.PNG)
 - the initial query returned results that included duplicate entries due to employees switching titles over the years.

----

![This is an image](Resources/Query_2.PNG)
 - Using a DISTINCT ON statement on emp_no moved duplicate date in the emp_no column.

----

![This is an image](Resources/Query_3.PNG)
 - Using COUNT returned the count of retiring employees in each job title.

----

![This is an image](Resources/Query_4.PNG)
 - Using DISTINCT ON and joining data from Employees, Department Employees, and Titles. A new tables was created to determine eligibility for a mentorship program.

----

## Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

----

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

  ![This is an image](Resources/Query_5.PNG)
  - using COUNT on emp_no, the impact of the "silver tsunami" will be 90,398 positions.

----

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

  ![This is an image](Resources/Query_6.PNG) ![This is an image](Resources/Query_6-1.PNG)
  - from the mentorship pool, no managers are currently eligible. All current managers are born before 1965-12-31. This limitation will need to be address urgently in order to properly mentor new managers before existing managers retire.
  - Other positions have an appropriate population of staff to begin mentorship within their positions. 
----
