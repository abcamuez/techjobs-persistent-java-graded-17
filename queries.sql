--Part 1

SELECT * from Job

--Part 2
SELECT name FROM employer WHERE location = "St. Louis City";
--Part 3
DROP table Job;
--Part 4
SELECT * FROM skill
LEFT JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;

--SELECT * FROM skill
--      LEFT JOIN job_skills ON skill.id = job_skills.skills_id
--      WHERE job_skills.jobs_id IS NOT NULL
--      ORDER BY name ASC;
--Pattern queryPattern = Pattern.compile("SELECT\\s+\\*\\s+FROM\\s+skill" +
--                "\\s*(LEFT|INNER)?\\s+JOIN\\s+job_skills\\s+ON\\s+(skill.id\\s+=\\s+job_skills.skills_id|job_skills.skills_id\\s+=\\s+skill.id)" +
--                "(\\s*WHERE\\s+job_skills.jobs_id\\s+IS\\s+NOT\\s+NULL)?" +
--                "\\s*ORDER\\s+BY\\s+name\\s+ASC;"