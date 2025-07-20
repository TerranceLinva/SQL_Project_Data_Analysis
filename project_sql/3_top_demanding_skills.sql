/* 
Questions: What are the most in-demand skils for data analsts? 
- Join job postings to inner join tabl similar to query 2 
- Indentify the top 5 in-demand skills for a data analyst 
- Foucus on all job postings 
- why? Retrieve the 5 skills with the high demand in the job market. 
Prvoiding insights into the most valuable skills for job seekers. 
-  
*/ 

Select * 
from job_postings_fact;

SELECT 
   skills,
   count(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Analyst' AND
      job_work_from_home = True
GROUP BY 
     skills
ORDER BY
     demand_count DESC
LIMIT 5