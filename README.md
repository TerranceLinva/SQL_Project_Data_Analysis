# Introduction 
Dive into data job market! Focusing on data analyst roles, this project explores top-paying jobs, in-demand skills, and where high demand meets high salary in data analytics. 

SQL queries?  Check them out here: [project_sql Folder](/project_sql/)

# Background
Driven by a quest to navigate the data analyst job market more effectively, this project was born from a desire to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs. 

Data hails from my [SQL Course] (https://lukebarousse.com/sql). It's packed with insights on job titles, salarires, locations and essential skills.

### The questiions i wanted to answer through my SQL Queries were: 
    1. What are the top-paying data analyst jobs? 
    2. What skills are required for those paying jobs? 
    3. what skills are most in demand for data analysts? 
    4. which skills are associated with higher salaries? 
    5. what are the most optimal skills to learn? 
    
# Tools I used
For my deep dive into the data analyst job market, I harnessed the power of several key tools: 

- **SQL**: The backbone of my analyssis, allowing me to query the database and unearth critical insights.  
- **PostgresSQL**: The Chosen database management system, ideal of handling the job posting data. 
- **Visual Studio Code**: My go-to for database management and executing SQL queries.
- **Git & GitHub**: Essential for version control and sharing my sql scripts and analysis, ensuring collaboration and project tracking. 

# The Analysis
Each query for this project aimed at investigatin  specific aspects of the dataa analyst job market. Here's how i approached each question:  
### 1. Top Paying Data Analyst Jobs 
To identify the highest-paying roles I filtered data analyst positions by average yearly salary and location, focusing on remote jobs.  This query highlights the high paying opportunities in the field.

```
SELECT
     job_id,
     job_title,
     job_location,
     job_schedule_type,
     salary_year_avg,
     job_posted_date,
     name AS Company_Name
FROM 
     job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
Where 
     job_title_short  = 'Data Analyst'
     AND 
     job_location ='Anywhere'
     AND 
     salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC 
LIMIT 10
     ; 
```



- What i learned
- Conclusions
