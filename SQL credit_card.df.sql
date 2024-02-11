-- 1. Group the customers based on their income type and find the average of their annual income.
SELECT Type_Income,AVG(Annual_income)as Avg_Income
FROM credit_card.df
GROUP BY Type_Income;


-- 2. Find the female owners of cars and property.
SELECT Car_Owner,propert_Owner
FROM credit_card.df
WHERE GENDER = 'F';


-- 3. Find the male customers who are staying with their families.
SELECT Family_Size,GENDER
FROM credit_card.df
WHERE GENDER = 'M' AND Family_Size>1;


-- 4. Please list the top five people having the highest income.
SELECT Annual_Income,Type_Income
FROM credit_card.df
ORDER BY Annual_Income DESC
LIMIT 5;


-- 5.How many married people are having bad credit?
SELECT COUNT(*) as badcredit_count
FROM credit_card.df
WHERE Marital_status = 'Married' AND label=1;


-- 6. What is the highest education level and what is the total count?
SELECT EDUCATION as highesteducation ,count(*)as total_count
FROM credit_card.df 
GROUP BY EDUCATION
ORDER BY total_count DESC
LIMIT 1;


-- 7. Between married males and females, who is having more bad credit?
SELECT GENDER,count(*) as badcredit_count
FROM credit_card.df
where Marital_status='Married' AND label= 1
GROUP BY GENDER;