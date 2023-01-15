-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT camp.backers_count, camp.cf_id, camp.outcome
FROM campaign as camp
WHERE (camp.outcome = 'live')
ORDER BY camp.backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT COUNT (back.cf_id), back.cf_id
FROM backers as back
GROUP BY back.cf_id
ORDER BY COUNT(back.cf_id) DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT cont.first_name, cont.last_name, cont.email, (camp.goal - camp.pledged) as remaining_goal_amount 
INTO email_contacts_remaining_goal_amount
FROM campaign as camp
INNER JOIN contacts as cont
ON (camp.contact_id = cont.contact_id)
WHERE (camp.outcome = 'live')
ORDER BY remaining_goal_amount DESC;

SELECT * FROM email_contacts_remaining_goal_amount;
--file now exported as email_contacts_remaining_goal_amount.csv

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 


SELECT back.email, back.first_name, back.last_name, camp.cf_id, camp.company_name, camp.description, (camp.goal - camp.pledged) as left_of_goal 
INTO email_backers_remaining_goal_amount
FROM campaign as camp
INNER JOIN backers as back
ON (camp.cf_id = back.cf_id)
WHERE (camp.outcome = 'live')
ORDER BY back.last_name, back.email;

SELECT * FROM email_backers_remaining_goal_amount;
--file now exported as email_backers_remaining_goal_amount.csv
