CREATE database vedant_task;

-- FinTech Financial Dataset

-- 1. Show all transactions
SELECT * FROM fintech_transactions;

-- 2. Show customer names
SELECT customer_name FROM fintech_transactions;

-- 3. Show unique cities
SELECT DISTINCT city FROM fintech_transactions;

-- 4. Show transactions above 5000
SELECT * FROM fintech_transactions
WHERE amount > 5000;

-- 5. Show female customers
SELECT * FROM fintech_transactions
WHERE gender='Female';

-- 6. Show transactions from Mumbai
SELECT * FROM fintech_transactions
WHERE city='Mumbai';

-- 7. Show debit transactions 
SELECT * FROM fintech_transactions
WHERE transaction_type='Debit';

-- 8. Show credit transactions 
SELECT * FROM fintech_transactions
WHERE transaction_type='Credit';

-- 9. Show transactions between 1000 and 5000
SELECT * FROM fintech_transactions
WHERE amount BETWEEN 1000 AND 5000;

-- 10. Show transactions done using UPI
SELECT * FROM fintech_transactions
WHERE payment_method='UPI';

-- 11. Show transactions sorted by amount
SELECT * FROM fintech_transactions
ORDER BY amount;

-- 12. Sort transactions by highest amount
SELECT * FROM fintech_transactions
ORDER BY amount DESC;

-- 13. Limit results to 5 rows
SELECT * FROM fintech_transactions
LIMIT 5;

-- 14. Count total transactions
SELECT COUNT(*) FROM fintech_transactions;

-- 15. Show total transaction amount
SELECT SUM(amount) FROM fintech_transactions;

-- 16. Show average transaction amount
SELECT AVG(amount) FROM fintech_transactions;

-- 17. Show maximum transaction amount
SELECT MAX(amount) FROM fintech_transactions;

-- 18. Show minimum transaction amount
SELECT MIN(amount) FROM fintech_transactions;

-- 19. Show transactions where city is Delhi or Mumbai
SELECT * FROM fintech_transactions
WHERE city IN ('Delhi','Mumbai');


-- 20. Show transactions where amount is not 1000
SELECT * FROM fintech_transactions
WHERE amount <> 1000;

-- 21 Count transactions per city
SELECT city, COUNT(*) FROM fintech_transactions
GROUP BY city;

-- 22 Total transaction amount per city
SELECT city, SUM(amount)
FROM fintech_transactions
GROUP BY city;

-- 23 Average transaction per city
SELECT city, AVG(amount)
FROM fintech_transactions
GROUP BY city;

-- 24 Total transactions by gender
SELECT gender, COUNT(*)
FROM fintech_transactions
GROUP BY gender;

-- 25 Total amount by payment method
SELECT payment_method, SUM(amount)
FROM fintech_transactions
GROUP BY payment_method;

-- 26 Show cities with transactions >2
SELECT city, COUNT(*)
FROM fintech_transactions
GROUP BY city
HAVING COUNT(*) > 2;

-- 27 Show customers spending more than 10000
SELECT customer_name, SUM(amount)
FROM fintech_transactions
GROUP BY customer_name
HAVING SUM(amount) > 10000;

-- 28 Count fraud transactions
SELECT COUNT(*)
FROM fintech_transactions
WHERE fraud_flag=1;

-- 29 Total debit amount
SELECT SUM(amount)
FROM fintech_transactions
WHERE transaction_type='Debit';

-- 30 Total credit amount
SELECT SUM(amount)
FROM fintech_transactions
WHERE transaction_type='Credit';

-- 31 Uppercase customer names
SELECT UPPER(customer_name)
FROM fintech_transactions;

-- 32 Lowercase city names
SELECT LOWER(city)
FROM fintech_transactions;

-- 33 Length of customer names
SELECT customer_name, LENGTH(customer_name)
FROM fintech_transactions;

-- 34 First 3 characters of name
SELECT SUBSTRING(customer_name,1,3)
FROM fintech_transactions;

-- 35 Replace city Delhi with New Delhi
SELECT REPLACE(city,'Delhi','New Delhi')
FROM fintech_transactions;

-- 36 Concatenate name and city
SELECT CONCAT(customer_name,' - ',city)
FROM fintech_transactions;

-- 37 Trim spaces
SELECT TRIM(customer_name)
FROM fintech_transactions;

-- 38 Left 4 characters
SELECT LEFT(customer_name,4)
FROM fintech_transactions;

-- 39 Right 4 characters
SELECT RIGHT(customer_name,4)
FROM fintech_transactions;

-- 40 Find names starting with A
SELECT * FROM fintech_transactions
WHERE customer_name LIKE 'A%';

-- 41 Extract year
SELECT YEAR(transaction_date)
FROM fintech_transactions;

-- 42 Extract month
SELECT MONTH(transaction_date)
FROM fintech_transactions;

-- 43 Extract day 
SELECT DAY(transaction_date)
FROM fintech_transactions;

-- 44 Transactions in January
SELECT * FROM fintech_transactions
WHERE MONTH(transaction_date)=1;

-- 45 Transactions after 5 Jan
SELECT * FROM fintech_transactions
WHERE transaction_date > '2024-01-05';

-- 46 Current date
SELECT CURDATE();

-- 47 Days difference
SELECT DATEDIFF(CURDATE(),transaction_date)
FROM fintech_transactions;

-- 48 Add 7 days 
SELECT DATE_ADD(transaction_date,INTERVAL 7 DAY)
FROM fintech_transactions;

-- 49 Subtract 7 days 
SELECT DATE_SUB(transaction_date,INTERVAL 7 DAY)
FROM fintech_transactions;

-- 50 Format date
SELECT DATE_FORMAT(transaction_date,'%d-%m-%Y')
FROM fintech_transactions;

-- 51 Top 3 highest transactions 
SELECT *
FROM fintech_transactions
ORDER BY amount DESC
LIMIT 3;

-- 52 Rank transactions
SELECT transaction_id,
RANK() OVER (ORDER BY amount DESC) AS rank_no
FROM fintech_transactions;

-- 53 Dense rank
SELECT transaction_id,
DENSE_RANK() OVER (ORDER BY amount DESC)
FROM fintech_transactions;

-- 54 Row number
SELECT transaction_id,
ROW_NUMBER() OVER (ORDER BY amount DESC)
FROM fintech_transactions;

-- 55 Running total 
SELECT transaction_id,
SUM(amount) OVER (ORDER BY transaction_id)
FROM fintech_transactions;

-- 56 Average amount window
SELECT customer_name,
AVG(amount) OVER()
FROM fintech_transactions;


-- 57 Partition by city
SELECT city,
SUM(amount) OVER(PARTITION BY city)
FROM fintech_transactions;

-- 58 Lag function
SELECT amount,
LAG(amount) OVER(ORDER BY transaction_date)
FROM fintech_transactions;

-- 59 Lead function
SELECT amount,
LEAD(amount) OVER(ORDER BY transaction_date)
FROM fintech_transactions;

-- 60 NTILE function
SELECT amount,
NTILE(4) OVER(ORDER BY amount)
FROM fintech_transactions;

-- 61 Transactions above average
SELECT *
FROM fintech_transactions
WHERE amount >
(SELECT AVG(amount) FROM fintech_transactions);

-- 62 Customers with max transaction
SELECT *
FROM fintech_transactions
WHERE amount =
(SELECT MAX(amount) FROM fintech_transactions);

-- 63 Transactions below average
SELECT *
FROM fintech_transactions
WHERE amount <
(SELECT AVG(amount) FROM fintech_transactions);

-- 64 Cities with highest transaction
SELECT customer_name,
(SELECT SUM(amount)
FROM fintech_transactions f2
WHERE f2.customer_id=f1.customer_id)
FROM fintech_transactions f1;

-- 65 Total amount per customer using subquery
SELECT customer_name,
(SELECT SUM(amount)
FROM fintech_transactions f2
WHERE f2.customer_id=f1.customer_id)
FROM fintech_transactions f1;

-- CASE STATEMENT

-- 66 Transaction size category
SELECT amount,
CASE
WHEN amount < 2000 THEN 'Low'
WHEN amount < 10000 THEN 'Medium'
ELSE 'High'
END AS transaction_level
FROM fintech_transactions;

-- 67 Fraud detection label
SELECT transaction_id,
CASE
WHEN fraud_flag=1 THEN 'Fraud'
ELSE 'Safe'
END
FROM fintech_transactions;


-- 68 CTE example
WITH high_transactions AS (
SELECT * FROM fintech_transactions
WHERE amount > 5000
)
SELECT * FROM high_transactions;

-- 69 Top spending customers
SELECT customer_name, SUM(amount)
FROM fintech_transactions
GROUP BY customer_name
ORDER BY SUM(amount) DESC;

-- 70 Transactions per category
SELECT merchant_category, COUNT(*)
FROM fintech_transactions
GROUP BY merchant_category;

-- 71. Find the fraud transaction rate.
SELECT 
COUNT(CASE WHEN fraud_flag = 1 THEN 1 END) * 100.0 / COUNT(*) AS fraud_rate
FROM fintech_transactions;

-- 72. Find total transactions and total amount per month.
SELECT 
MONTH(transaction_date) AS month,
COUNT(*) AS total_transactions,
SUM(amount) AS total_amount
FROM fintech_transactions
GROUP BY MONTH(transaction_date);

-- 73. Find the highest transaction amount in each city.
SELECT city, MAX(amount) AS highest_transaction
FROM fintech_transactions
GROUP BY city;

-- 74. Lowest Transaction Per City
SELECT city, MIN(amount) AS lowest_transaction
FROM fintech_transactions
GROUP BY city;

-- 75. Top Payment Method
SELECT payment_method, COUNT(*) AS usage_count
FROM fintech_transactions
GROUP BY payment_method
ORDER BY usage_count DESC
LIMIT 1;

-- 76. Transaction Distribution
SELECT merchant_category, COUNT(*) AS transactions
FROM fintech_transactions
GROUP BY merchant_category;

-- 77. Median Transaction
SELECT AVG(amount) AS median_transaction
FROM (
    SELECT amount,
           ROW_NUMBER() OVER (ORDER BY amount) AS rn,
           COUNT(*) OVER () AS total_rows
    FROM fintech_transactions
) AS t
WHERE rn IN (FLOOR((total_rows + 1) / 2), FLOOR((total_rows + 2) / 2));

-- 78. Cumulative Transaction Amount
SELECT 
transaction_id,
amount,
SUM(amount) OVER (ORDER BY transaction_id) AS cumulative_amount
FROM fintech_transactions;

-- 79. Percentage Contribution of Each Transaction
SELECT 
transaction_id,
amount,
(amount / SUM(amount) OVER()) * 100 AS percentage_contribution
FROM fintech_transactions;

-- 80. City Ranking by Spending
SELECT 
city,
SUM(amount) AS total_spending,
RANK() OVER (ORDER BY SUM(amount) DESC) AS city_rank
FROM fintech_transactions
GROUP BY city;

-- 81. Customer Ranking by Spending
SELECT 
customer_name,
SUM(amount) AS total_spent,
RANK() OVER (ORDER BY SUM(amount) DESC) AS customer_rank
FROM fintech_transactions
GROUP BY customer_name;

-- 82. Merchant Category Ranking
SELECT 
city,
COUNT(*) AS fraud_transactions
FROM fintech_transactions
WHERE fraud_flag = 1
GROUP BY city;

-- 84. Payment Method Share
SELECT 
payment_method,
COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS payment_share
FROM fintech_transactions
GROUP BY payment_method;

-- 85. Average Transaction Amount by Gender
SELECT 
gender,
AVG(amount) AS avg_transaction
FROM fintech_transactions
GROUP BY gender;

-- 86. Monthly Spending|
SELECT 
MONTH(transaction_date) AS month,
SUM(amount) AS total_spending
FROM fintech_transactions
GROUP BY MONTH(transaction_date);

-- 87. Yearly Spending
SELECT 
YEAR(transaction_date) AS year,
SUM(amount) AS yearly_spending
FROM fintech_transactions
GROUP BY YEAR(transaction_date);


-- 88. Customer Lifetime Value 
SELECT 
customer_name,
SUM(amount) AS lifetime_value
FROM fintech_transactions
GROUP BY customer_name
ORDER BY lifetime_value DESC;

-- 89. Daily Transaction Trend
SELECT 
transaction_date,
SUM(amount) AS daily_spending
FROM fintech_transactions
GROUP BY transaction_date
ORDER BY transaction_date;

-- 90. Peak Transaction Day
SELECT 
transaction_date,
SUM(amount) AS total_amount
FROM fintech_transactions
GROUP BY transaction_date
ORDER BY total_amount DESC
LIMIT 1;

-- 91. Lowest Spending Customer
SELECT 
customer_name,
SUM(amount) AS total_spent
FROM fintech_transactions
GROUP BY customer_name
ORDER BY total_spent
LIMIT 1;

-- 92. Highest Spending Customer
SELECT 
customer_name,
SUM(amount) AS total_spent
FROM fintech_transactions
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 1;

-- 93. Transaction Variance
SELECT 
VARIANCE(amount) AS transaction_variance
FROM fintech_transactions;

-- 94. Fraud Percentage
SELECT 
SUM(fraud_flag) * 100.0 / COUNT(*) AS fraud_percentage
FROM fintech_transactions;

-- 95. Top 5 Cities by Spending
SELECT 
city,
SUM(amount) AS total_spending
FROM fintech_transactions
GROUP BY city
ORDER BY total_spending DESC
LIMIT 5;

-- 96. Bottom 5 Transactions
SELECT *
FROM fintech_transactions
ORDER BY amount ASC
LIMIT 5;

-- 97. Spending by Merchant Category
SELECT 
merchant_category,
SUM(amount) AS total_spending
FROM fintech_transactions
GROUP BY merchant_category
ORDER BY total_spending DESC;

-- 98. Fraud Detection Dataset
SELECT *
FROM fintech_transactions
WHERE fraud_flag = 1;

-- 99. Transaction Frequency per Customer
SELECT 
customer_name,
COUNT(*) AS transaction_count
FROM fintech_transactions
GROUP BY customer_name
ORDER BY transaction_count DESC;

-- 100. Financial Dashboard Dataset Query
SELECT 
city,
payment_method,
merchant_category,
COUNT(*) AS total_transactions,
SUM(amount) AS total_amount,
AVG(amount) AS avg_amount,
SUM(fraud_flag) AS fraud_transactions
FROM fintech_transactions
GROUP BY city, payment_method, merchant_category;