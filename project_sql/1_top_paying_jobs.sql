

/* 
What are the top-paying jobs for my role? 
what are the skills required for these top-paying roles? 
what are the most in-demand skills for my role? 
what are the top skills based on salary for my role? 
what are the most optimal skills to learn ? 
(a) optimal high demand and high playing

*/

/* Top Paying jobs

Question: What are the top paying-data analyst job? 
-Identiy the top 10 highest-paying data analyst roles that are available remotely 
- Focus on jobs postings with specified salaries (remove nulls)
- why? highlight the top-paying opportunities for Data Anallytics, Offerings insight into employment options 
 */



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