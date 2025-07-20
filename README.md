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

```sql
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
###2.Top Paying Job Skills 
The top 10 highest-paying remote data analyst jobs demand a mix of technical and analytical skills, with frequent mentions of tools and languages like SQL, Python, R, and cloud platforms such as AWS or Azure. Advanced skills such as machine learning, big data technologies (e.g., Hadoop, Spark), and data pipeline tools (e.g., Airflow, Snowflake) are commonly required. In addition, soft skills like communication and business acumen are often listed, especially in roles where analysts must explain complex findings to stakeholders or support strategic decision-making. These job listings suggest a clear trend: high pay correlates with broader technical proficiency and cross-functional impact.

```sql


WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
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
)
SELECT 
top_paying_jobs.* ,
skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY 
salary_year_avg DESC;


```



Here's the breakdown of the top daa analyst jobs in 2023: 
- ** Wide Salary Range:** Top 10 paying data analyst roles span from $184,000 to $650,0000 indicating significant salary potential in the field.
- ** Diverse Employers:** Companies like SmartAsset, Meta, and AT&T are among those offering high slaaries, showing a broad interest across different industries.
- ** Job Title Variety:** There's a high diversity in job titles, from data analyst to Director of Analytics, reflecting varied roles adn specializations within data analytics. 

#  What i learned

Throughout this adventure, I've troublecharged my sql toolkit wtih some serious firepower: 
-** Complex Query Crafting: ** Mastered the art of advanced SQL, merging tables like a pro and wielding with clauses for ninja-level temp table maneuvers. 
-** Data Aggregation:** Got cozy with GROUP BY and turned aggreate functions like COUNT() AND AVG() into my data-summarizing sidekicks. 
-** Analytical Wizardry:** Leveled up my real-world puzzle-solving skills, turning questions into actionalble, insightful SQL Queries 

# Conclusions 

#Insights

#Closing Thoughts 
This project enhanced my sql skills and provided valuable insights into the data analyst job market. The findings from the analysis serve as a guide to priortizing skill developement and job search efforts.
Aspirign data analysts can better focuing on high-demand, high salary skills.  This exploration highlights the importance of continous learning and adaptation to emerging trends in the field of data analytics. 










  
- Conclusions
