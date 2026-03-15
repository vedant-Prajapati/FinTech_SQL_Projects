SELECT * FROM fintech_transactions3;

ALTER TABLE fintech_transactions3
RENAME COLUMN ï»¿transaction_id TO transaction_id;

-- 1. Retrieve all columns for all transactions.
SELECT * FROM fintech_transactions3;

-- 2. Retrieve only customer_name, transaction_amount, and transaction_date.
SELECT customer_name, transaction_amount, transaction_date FROM fintech_transactions3;

-- 3. Retrieve all transactions where the transaction_amount is greater than 1000.
SELECT * FROM fintech_transactions3 WHERE transaction_amount > 1000;

-- 4. Retrieve all transactions that are marked as fraudulent (fraud_flag = 1).
SELECT * FROM fintech_transactions3 WHERE fraud_flag = 1;

-- 5. Retrieve all transactions made in 'USD' currency.
SELECT * FROM fintech_transactions3 WHERE currency = 'USD';

-- 6. Retrieve all 'Premium' customers.
SELECT DISTINCT customer_name, customer_id FROM fintech_transactions3 WHERE customer_segment = 'Premium';

-- 7. Retrieve transactions where the payment_method is 'Credit Card'.
SELECT * FROM fintech_transactions3 WHERE payment_method = 'Credit Card';

-- 8. Retrieve all transactions with amount between 500 and 2000.
SELECT * FROM fintech_transactions3 WHERE transaction_amount BETWEEN 500 AND 2000;

-- 9. Retrieve all transactions from 'New York' location.
SELECT * FROM fintech_transactions3 WHERE location = 'New York';

-- 10. Retrieve all transactions made on '2024-01-15'.
SELECT * FROM fintech_transactions3 WHERE transaction_date = '2024-01-15';

-- 11. Retrieve all transactions where the transaction_status is 'Pending'.
SELECT * FROM fintech_transactions3 WHERE transaction_status = 'Pending';

-- 12. Retrieve all customers who made transactions using 'Mobile' device.
SELECT DISTINCT customer_name FROM fintech_transactions3 WHERE device_type = 'Mobile';

-- 13. Retrieve all transactions where the merchant_category is 'Electronics'.
SELECT * FROM fintech_transactions3 WHERE merchant_category = 'Electronics';

-- 14. Retrieve all transactions sorted by transaction_amount in descending order.
SELECT * FROM fintech_transactions ORDER BY transaction_amount DESC;

-- 15. Retrieve the top 10 most expensive transactions.
SELECT * FROM fintech_transactions3 ORDER BY transaction_amount DESC LIMIT 10;

-- 16. Retrieve all transactions where the customer_name starts with 'A'.
SELECT * FROM fintech_transactions3 WHERE customer_name LIKE 'A%';

-- 17. Retrieve all transactions where the merchant_name contains 'Mart'.
SELECT * FROM fintech_transactions3 WHERE merchant_name LIKE '%Mart%';

-- 18. Retrieve all transactions where the risk_score is greater than 50.
SELECT * FROM fintech_transactions3 WHERE risk_score > 50;

-- 19. Retrieve all transactions made in 'January 2024'.
SELECT * FROM fintech_transactions3 WHERE transaction_date BETWEEN '2024-01-01' AND '2024-01-31';

-- 20. Retrieve all 'Completed' transactions with amount less than 100.
SELECT * FROM fintech_transactions3 WHERE transaction_status = 'Completed' AND transaction_amount < 100;

-- 21. Retrieve distinct payment methods used.
SELECT DISTINCT payment_method FROM fintech_transactions3;

-- 22. Retrieve all transactions where fraud_flag is 0 and risk_score is less than 20.
SELECT * FROM fintech_transactions3 WHERE fraud_flag = 0 AND risk_score < 20;

-- 23. Retrieve transactions from 'Standard' customers using 'Desktop'.
SELECT * FROM fintech_transactions3 WHERE customer_segment = 'Standard' AND device_type = 'Desktop';

-- 24. Retrieve all transactions with NULL in any critical field (demonstration - assuming no nulls).
SELECT * FROM fintech_transactions3 WHERE transaction_id IS NULL; -- unlikely

-- 25. Retrieve all transactions where transaction_amount is not equal to 0.
SELECT * FROM fintech_transactions3 WHERE transaction_amount != 0;

-- 26. Retrieve transactions made after 6:00 PM (18:00:00).
SELECT * FROM fintech_transactions3 WHERE transaction_time > '18:00:00';

-- 27. Retrieve all 'Pending' or 'Failed' transactions.
SELECT * FROM fintech_transactions3 WHERE transaction_status IN ('Pending', 'Failed');

-- 28. Retrieve all transactions for customer 'CUS001'.
SELECT * FROM fintech_transactions3 WHERE customer_id = 'CUS001';

-- 29. Retrieve transactions with amount greater than the average transaction amount (subquery - basic).
SELECT * FROM fintech_transactions3 WHERE transaction_amount > (SELECT AVG(transaction_amount) FROM fintech_transactions3);

-- 30. Retrieve all transactions and rename 'transaction_amount' as 'amount' in output.
SELECT transaction_id, customer_name, transaction_amount AS amount FROM fintech_transactions3;

-- 31. Retrieve all 'Wire Transfer' transactions.
SELECT * FROM fintech_transactions3 WHERE payment_method = 'Wire Transfer';

-- 32. Retrieve all transactions from 'Chicago' with amount > 500.
SELECT * FROM fintech_transactions3 WHERE location = 'Chicago' AND transaction_amount > 500;

-- 33. Retrieve all 'Premium' customers who made transactions in 'GBP'.
SELECT * FROM fintech_transactions3 WHERE customer_segment = 'Premium' AND currency = 'GBP';

-- 34. Retrieve transactions where merchant_category is either 'Retail' or 'Grocery'.
SELECT * FROM fintech_transactions3 WHERE merchant_category IN ('Retail', 'Grocery');

-- 35. Retrieve all transactions that occurred on weekends (assuming date functions work).
SELECT * FROM fintech_transactions3 WHERE DAYOFWEEK(transaction_date) IN (1,7);

-- 36. Retrieve all transactions where the success_rate is less than 0.95.
SELECT * FROM fintech_transactions3 WHERE success_rate < 0.95;

-- 37. Retrieve all transactions with transaction_id containing 'TXN10'.
SELECT * FROM fintech_transactions3 WHERE transaction_id LIKE 'TXN10%';

-- 38. Retrieve the oldest 5 transactions by date.
SELECT * FROM fintech_transactions3 ORDER BY transaction_date ASC LIMIT 5;

-- 39. Retrieve all 'Basic' customers with account_balance less than 500.
SELECT * FROM fintech_transactions3 WHERE customer_segment = 'Basic' AND account_balance < 500;

-- 40. Retrieve transactions where payment_method is 'PayPal' and status is 'Completed'.
SELECT * FROM fintech_transactions3 WHERE payment_method = 'PayPal' AND transaction_status = 'Completed';

-- 41. Retrieve all transactions and calculate the tax (assuming 10% tax) as a new column.
SELECT *, transaction_amount * 0.10 AS tax_amount FROM fintech_transactions3;

-- 42. Retrieve all transactions where the average_transaction_value is greater than 100.
SELECT * FROM fintech_transactions3 WHERE average_transaction_value > 100;

-- 43. Retrieve all customers who have previous_transactions greater than 50.
SELECT DISTINCT customer_name FROM fintech_transactions3 WHERE previous_transactions > 50;

-- 44. Retrieve all transactions made in 'January' irrespective of year.
SELECT * FROM fintech_transactions3 WHERE MONTH(transaction_date) = 1;

-- 45. Retrieve all transactions where merchant_name is exactly 'Amazon'.
SELECT * FROM fintech_transactions3 WHERE merchant_name = 'Amazon';

-- 46. Retrieve all 'Failed' transactions with risk_score above 30.
SELECT * FROM fintech_transactions3 WHERE transaction_status = 'Failed' AND risk_score > 30;

-- 47. Retrieve all transactions from 'Los Angeles' using 'Tablet'.
SELECT * FROM fintech_transactions3 WHERE location = 'Los Angeles' AND device_type = 'Tablet';

-- 48. Retrieve all transactions where customer_lifetime_value is between 5000 and 20000.
SELECT * FROM fintech_transactions3 WHERE customer_lifetime_value BETWEEN 5000 AND 20000;

-- 49. Retrieve all 'Premium' customers sorted by customer_lifetime_value descending.
SELECT DISTINCT customer_name, customer_lifetime_value FROM fintech_transactions3 WHERE customer_segment = 'Premium' ORDER BY customer_lifetime_value DESC;

-- 50. Retrieve all transactions and concatenate customer_name and location.
SELECT transaction_id, CONCAT(customer_name, ' - ', location) AS customer_location FROM fintech_transactions3;

-- 51. Count the total number of transactions.
SELECT COUNT(*) AS total_transactions FROM fintech_transactions3;

-- 52. Calculate the average transaction amount.
SELECT AVG(transaction_amount) AS avg_amount FROM fintech_transactions3;

-- 53. Find the minimum and maximum transaction amounts.
SELECT MIN(transaction_amount) AS min_amount, MAX(transaction_amount) AS max_amount FROM fintech_transactions3;

-- 54. Calculate the total sum of all transactions.
SELECT SUM(transaction_amount) AS total_volume FROM fintech_transactions3;

-- 55. Count the number of fraudulent transactions.
SELECT COUNT(*) AS fraud_count FROM fintech_transactions3 WHERE fraud_flag = 1;

-- 56. Count the number of transactions per payment method.
SELECT payment_method, COUNT(*) AS transaction_count FROM fintech_transactions3 GROUP BY payment_method;

-- 57. Calculate the average transaction amount per customer segment.
SELECT customer_segment, AVG(transaction_amount) AS avg_amount FROM fintech_transactions3 GROUP BY customer_segment;

-- 58. Find the total transaction volume per merchant category.
SELECT merchant_category, SUM(transaction_amount) AS total_volume FROM fintech_transactions3 GROUP BY merchant_category;

-- 59. Count the number of customers per location.
SELECT location, COUNT(DISTINCT customer_id) AS customer_count FROM fintech_transactions3 GROUP BY location;

-- 60. Find the average risk score per payment method.
SELECT payment_method, AVG(risk_score) AS avg_risk FROM fintech_transactions3 GROUP BY payment_method;

-- 61. Get the maximum transaction amount per customer.
SELECT customer_id, customer_name, MAX(transaction_amount) AS max_transaction FROM fintech_transactions3 GROUP BY customer_id, customer_name;

-- 62. Count transactions by status.
SELECT transaction_status, COUNT(*) AS status_count FROM fintech_transactions3 GROUP BY transaction_status;

-- 63. Calculate the total amount per currency.
SELECT currency, SUM(transaction_amount) AS total_amount FROM fintech_transactions3 GROUP BY currency;

-- 64. Find the average customer_lifetime_value per segment.
SELECT customer_segment, AVG(customer_lifetime_value) AS avg_clv FROM fintech_transactions3 GROUP BY customer_segment;

-- 65. Count transactions by device type.
SELECT device_type, COUNT(*) AS device_count FROM fintech_transactions3 GROUP BY device_type;

-- 66. Find the top 5 merchants by transaction volume.
SELECT merchant_name, SUM(transaction_amount) AS total_volume FROM fintech_transactions3 GROUP BY merchant_name ORDER BY total_volume DESC LIMIT 5;

-- 67. Calculate the success rate (average of success_rate column) per merchant category.
SELECT merchant_category, AVG(success_rate) AS avg_success_rate FROM fintech_transactions3 GROUP BY merchant_category;

-- 68. Count the number of transactions per day.
SELECT transaction_date, COUNT(*) AS daily_transactions FROM fintech_transactions3 GROUP BY transaction_date ORDER BY transaction_date;

-- 69. Find the average transaction amount for 'Premium' customers only.
SELECT AVG(transaction_amount) AS premium_avg_amount FROM fintech_transactions3 WHERE customer_segment = 'Premium';

-- 70. Get the total fraud count per location.
SELECT location, COUNT(*) AS fraud_count FROM fintech_transactions3 WHERE fraud_flag = 1 GROUP BY location;

-- 71. Find customers with total transaction amount > 5000.
SELECT customer_id, customer_name, SUM(transaction_amount) AS total_spent FROM fintech_transactions3 GROUP BY customer_id, customer_name HAVING total_spent > 5000;

-- 72. Calculate the percentage of fraudulent transactions.
SELECT (SUM(fraud_flag) * 100.0 / COUNT(*)) AS fraud_percentage FROM fintech_transactions3;

-- 73. Find the hour of day with most transactions.
SELECT HOUR(transaction_time) AS hour_of_day, COUNT(*) AS transaction_count FROM fintech_transactions GROUP BY hour_of_day ORDER BY transaction_count DESC;

-- 74. Count transactions by merchant category and payment method.
SELECT merchant_category, payment_method, COUNT(*) AS count FROM fintech_transactions3 GROUP BY merchant_category, payment_method ORDER BY merchant_category, count DESC;

-- 75. Find the average account balance per customer segment.
SELECT customer_segment, AVG(account_balance) AS avg_balance FROM fintech_transactions3 GROUP BY customer_segment;

-- 76. Get the top 3 locations by total transaction volume.
SELECT location, SUM(transaction_amount) AS total_volume FROM fintech_transactions3 GROUP BY location ORDER BY total_volume DESC LIMIT 3;

-- 77. Calculate the standard deviation of transaction amounts.
SELECT STDDEV(transaction_amount) AS amount_stddev FROM fintech_transactions3;

-- 78. Find the customer with the highest customer_lifetime_value.
SELECT customer_name, customer_lifetime_value FROM fintech_transactions3 ORDER BY customer_lifetime_value DESC LIMIT 1;

-- 79. Count transactions where amount > 1000 per payment method.
SELECT payment_method, COUNT(*) AS high_value_count FROM fintech_transactions3 WHERE transaction_amount > 1000 GROUP BY payment_method;

-- 80. Find the average number of previous_transactions per segment.
SELECT customer_segment, AVG(previous_transactions) AS avg_prev_tx FROM fintech_transactions3 GROUP BY customer_segment;

-- 81. Calculate the total transaction amount per day of week.
SELECT DAYNAME(transaction_date) AS day_of_week, SUM(transaction_amount) AS total_amount FROM fintech_transactions3 GROUP BY day_of_week;

-- 82. Find merchants with average transaction amount > 500.
SELECT merchant_name, AVG(transaction_amount) AS avg_amount FROM fintech_transactions3 GROUP BY merchant_name HAVING avg_amount > 500;

-- 83. Count distinct customers per payment method.
SELECT payment_method, COUNT(DISTINCT customer_id) AS unique_customers FROM fintech_transactions3 GROUP BY payment_method;

-- 84. Find the minimum, maximum, and average risk score per segment.
SELECT customer_segment, MIN(risk_score) AS min_risk, MAX(risk_score) AS max_risk, AVG(risk_score) AS avg_risk FROM fintech_transactions3 GROUP BY customer_segment;

-- 85. Get the total number of transactions and total amount for 'Mobile' users.
SELECT COUNT(*) AS mobile_tx_count, SUM(transaction_amount) AS mobile_total_volume FROM fintech_transactions3 WHERE device_type = 'Mobile';

-- 86. Find the correlation between previous_transactions and customer_lifetime_value (conceptual).
-- Not directly in SQL, but we can look at averages
SELECT previous_transactions, AVG(customer_lifetime_value) AS avg_clv FROM fintech_transactions3 GROUP BY previous_transactions ORDER BY previous_transactions;

-- 87. Count transactions by hour for fraud vs non-fraud.
SELECT HOUR(transaction_time) AS hour, fraud_flag, COUNT(*) AS count FROM fintech_transactions3 GROUP BY hour, fraud_flag ORDER BY hour, fraud_flag;

-- 88. Find the top 5 customers by number of transactions.
SELECT customer_name, COUNT(*) AS tx_count FROM fintech_transactions3 GROUP BY customer_name ORDER BY tx_count DESC LIMIT 5;

-- 89. Calculate the average transaction amount for each merchant, but only for 'Completed' transactions.
SELECT merchant_name, AVG(transaction_amount) AS avg_completed_amount FROM fintech_transactions3 WHERE transaction_status = 'Completed' GROUP BY merchant_name;

-- 90. Find locations where the average risk score is above 40.
SELECT location, AVG(risk_score) AS avg_risk FROM fintech_transactions3 GROUP BY location HAVING avg_risk > 40;

-- 91. Count the number of 'Premium' customers using each device type.
SELECT device_type, COUNT(DISTINCT customer_id) AS premium_customer_count FROM fintech_transactions3 WHERE customer_segment = 'Premium' GROUP BY device_type;

-- 92. Get the monthly transaction volume (assuming multiple months in data).
SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month, SUM(transaction_amount) AS monthly_volume FROM fintech_transactions3 GROUP BY month ORDER BY month;

-- 93. Find the most popular payment method for 'Electronics' category.
SELECT payment_method, COUNT(*) AS method_count FROM fintech_transactions3 WHERE merchant_category = 'Electronics' GROUP BY payment_method ORDER BY method_count DESC LIMIT 1;

-- 94. Calculate the ratio of fraud transactions to total transactions per location.
SELECT location, SUM(fraud_flag) * 1.0 / COUNT(*) AS fraud_ratio FROM fintech_transactions3 GROUP BY location ORDER BY fraud_ratio DESC;

-- 95. Find customers whose average transaction amount is higher than their segment's average.
-- Complex - need subquery
SELECT t.customer_id, t.customer_name, AVG(t.transaction_amount) AS cust_avg,
       (SELECT AVG(transaction_amount) FROM fintech_transactions3 WHERE customer_segment = t.customer_segment) AS segment_avg
FROM fintech_transactions3 t
GROUP BY t.customer_id, t.customer_name, t.customer_segment
HAVING cust_avg > segment_avg;

-- 96. Count the number of transactions per merchant that are 'Pending' or 'Failed'.
SELECT merchant_name, transaction_status, COUNT(*) AS status_count FROM fintech_transactions3 WHERE transaction_status IN ('Pending', 'Failed') GROUP BY merchant_name, transaction_status;

-- 97. Find the average transaction amount for 'USD' transactions by device type.
SELECT device_type, AVG(transaction_amount) AS avg_usd_amount FROM fintech_transactions3 WHERE currency = 'USD' GROUP BY device_type;

-- 98. Get the total customer_lifetime_value per location for 'Premium' customers.
SELECT location, SUM(customer_lifetime_value) AS total_clv FROM fintech_transactions3 WHERE customer_segment = 'Premium' GROUP BY location;

-- 99. Determine the most common merchant category for each customer segment.
-- Using subquery with ranking
SELECT customer_segment, merchant_category, category_count
FROM (
    SELECT customer_segment, merchant_category, COUNT(*) AS category_count,
           ROW_NUMBER() OVER (PARTITION BY customer_segment ORDER BY COUNT(*) DESC) AS rn
    FROM fintech_transactions3
    GROUP BY customer_segment, merchant_category
) ranked WHERE rn = 1;

-- 100. Calculate the 90th percentile of transaction amounts.
SELECT transaction_amount AS p90_amount
FROM (
    SELECT transaction_amount, NTILE(10) OVER (ORDER BY transaction_amount) AS percentile
    FROM fintech_transactions3
) ranked WHERE percentile = 9 LIMIT 1;

-- 101. Find customer segments where the average transaction amount is greater than the overall average transaction amount.
SELECT customer_segment, AVG(transaction_amount) AS segment_avg_amount
FROM fintech_transactions3
GROUP BY customer_segment
HAVING AVG(transaction_amount) > (SELECT AVG(transaction_amount) FROM fintech_transactions3);

-- 102. List merchant categories that have more than 50 transactions and average transaction amount above $1000.
SELECT merchant_category, COUNT(*) AS transaction_count, AVG(transaction_amount) AS avg_amount
FROM fintech_transactions3
GROUP BY merchant_category
HAVING COUNT(*) > 50 AND AVG(transaction_amount) > 1000;

-- 103. Find locations where the total transaction volume exceeds $500,000 and the fraud rate is below 3%.

SELECT location, 
       SUM(transaction_amount) AS total_volume,
       AVG(fraud_flag) * 100 AS fraud_percentage
FROM fintech_transactions3
GROUP BY location
HAVING SUM(transaction_amount) > 500000 AND AVG(fraud_flag) < 0.03;

-- 104. Identify payment methods with a success rate below 95% and more than 100 transactions.
SELECT payment_method, 
       COUNT(*) AS total_transactions,
       AVG(success_rate) * 100 AS avg_success_rate
FROM fintech_transactions3
GROUP BY payment_method
HAVING COUNT(*) > 100 AND AVG(success_rate) < 0.95;

-- 105. Get customer segments where the minimum transaction amount is less than $50 and maximum is greater than $5000.
SELECT customer_segment, 
       MIN(transaction_amount) AS min_amount,
       MAX(transaction_amount) AS max_amount
FROM fintech_transactions3
GROUP BY customer_segment
HAVING MIN(transaction_amount) < 50 AND MAX(transaction_amount) > 5000;

-- 106. Find merchants where the average risk score is above 50 and at least 10 transactions were flagged as fraud.
SELECT merchant_name, 
       AVG(risk_score) AS avg_risk_score,
       SUM(fraud_flag) AS fraud_count
FROM fintech_transactions3
GROUP BY merchant_name
HAVING AVG(risk_score) > 50 AND SUM(fraud_flag) >= 10;

-- 107. List device types where the average transaction amount for 'Completed' transactions is higher than for 'Pending' transactions.
SELECT device_type,
       AVG(CASE WHEN transaction_status = 'Completed' THEN transaction_amount END) AS avg_completed,
       AVG(CASE WHEN transaction_status = 'Pending' THEN transaction_amount END) AS avg_pending
FROM fintech_transactions3
GROUP BY device_type
HAVING AVG(CASE WHEN transaction_status = 'Completed' THEN transaction_amount END) > 
       AVG(CASE WHEN transaction_status = 'Pending' THEN transaction_amount END);
       
-- 108. Find currency types where the total transaction amount is at least 2 times the average transaction amount for that currency.

SELECT currency, 
       SUM(transaction_amount) AS total_amount,
       AVG(transaction_amount) AS avg_amount
FROM fintech_transactions3
GROUP BY currency
HAVING SUM(transaction_amount) > 2 * (SELECT AVG(transaction_amount) FROM fintech_transactions3 t2 WHERE t2.currency = currency);

-- 109. Identify customer segments where the maximum customer_lifetime_value is more than 10 times the minimum.
SELECT customer_segment,
       MAX(customer_lifetime_value) AS max_clv,
       MIN(customer_lifetime_value) AS min_clv,
       MAX(customer_lifetime_value)/MIN(customer_lifetime_value) AS clv_ratio
FROM fintech_transactions3
GROUP BY customer_segment
HAVING MAX(customer_lifetime_value) > 10 * MIN(customer_lifetime_value);

-- 110. Get months (from transaction_date) where the total fraud amount exceeded $10,000.
SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month,
       SUM(CASE WHEN fraud_flag = 1 THEN transaction_amount ELSE 0 END) AS fraud_amount
FROM fintech_transactions3
GROUP BY DATE_FORMAT(transaction_date, '%Y-%m')
HAVING SUM(CASE WHEN fraud_flag = 1 THEN transaction_amount ELSE 0 END) > 10000;

-- 111. Find merchants where more than 10% of transactions are fraudulent.
SELECT merchant_name,
       COUNT(*) AS total_transactions,
       SUM(fraud_flag) AS fraud_count,
       (SUM(fraud_flag) * 100.0 / COUNT(*)) AS fraud_percentage
FROM fintech_transactions3
GROUP BY merchant_name
HAVING (SUM(fraud_flag) * 100.0 / COUNT(*)) > 10;

-- 112. List locations where the average account balance of customers is above $10,000 but the average transaction amount is below $500.
SELECT location,
       AVG(account_balance) AS avg_balance,
       AVG(transaction_amount) AS avg_transaction
FROM fintech_transactions3
GROUP BY location
HAVING AVG(account_balance) > 10000 AND AVG(transaction_amount) < 500;

-- 113. Identify payment methods that are used by customers from at least 10 different locations.
SELECT payment_method,
       COUNT(DISTINCT location) AS location_count,
       COUNT(*) AS transaction_count
FROM fintech_transactions3
GROUP BY payment_method
HAVING COUNT(DISTINCT location) >= 10;

-- 114. Find customer segments where the average previous_transactions is greater than the overall average of previous_transactions.
SELECT customer_segment,
       AVG(previous_transactions) AS avg_prev_tx
FROM fintech_transactions3
GROUP BY customer_segment
HAVING AVG(previous_transactions) > (SELECT AVG(previous_transactions) FROM fintech_transactions3);

-- 115. Get merchant categories where the total number of 'Failed' transactions is more than 5.
SELECT merchant_category,
       COUNT(CASE WHEN transaction_status = 'Failed' THEN 1 END) AS failed_count
FROM fintech_transactions3
GROUP BY merchant_category
HAVING COUNT(CASE WHEN transaction_status = 'Failed' THEN 1 END) > 5;

-- 116. List device types where the average success_rate for 'Mobile' devices is higher than for 'Desktop' devices.
SELECT 'Mobile vs Desktop' AS comparison,
       AVG(CASE WHEN device_type = 'Mobile' THEN success_rate END) AS mobile_success,
       AVG(CASE WHEN device_type = 'Desktop' THEN success_rate END) AS desktop_success
FROM fintech_transactions3
HAVING AVG(CASE WHEN device_type = 'Mobile' THEN success_rate END) > 
       AVG(CASE WHEN device_type = 'Desktop' THEN success_rate END);
       
-- 117. Find hours of the day (from transaction_time) where the average transaction amount is above $1000.
SELECT HOUR(transaction_time) AS hour_of_day,
       AVG(transaction_amount) AS avg_amount,
       COUNT(*) AS transaction_count
FROM fintech_transactions3
GROUP BY HOUR(transaction_time)
HAVING AVG(transaction_amount) > 1000;       

-- 118. Identify merchants where the minimum risk_score is greater than the average risk_score of all transactions.
SELECT merchant_name,
       MIN(risk_score) AS min_risk,
       AVG(risk_score) AS avg_risk
FROM fintech_transactions3
GROUP BY merchant_name
HAVING MIN(risk_score) > (SELECT AVG(risk_score) FROM fintech_transactions3);

-- 119. Get customer segments where the total customer_lifetime_value exceeds $1,000,000.
SELECT customer_segment,
       SUM(customer_lifetime_value) AS total_clv,
       COUNT(DISTINCT customer_id) AS customer_count
FROM fintech_transactions3
GROUP BY customer_segment
HAVING SUM(customer_lifetime_value) > 1000000;

-- 120. Find locations where the average transaction amount for 'Premium' customers is at least twice that of 'Basic' customers.
SELECT location,
       AVG(CASE WHEN customer_segment = 'Premium' THEN transaction_amount END) AS premium_avg,
       AVG(CASE WHEN customer_segment = 'Basic' THEN transaction_amount END) AS basic_avg
FROM fintech_transactions3
GROUP BY location
HAVING AVG(CASE WHEN customer_segment = 'Premium' THEN transaction_amount END) > 
       2 * AVG(CASE WHEN customer_segment = 'Basic' THEN transaction_amount END);
       
-- 121. List payment methods that have been used for transactions in all merchant categories.
SELECT payment_method,
       COUNT(DISTINCT merchant_category) AS categories_covered
FROM fintech_transactions3
GROUP BY payment_method
HAVING COUNT(DISTINCT merchant_category) = (SELECT COUNT(DISTINCT merchant_category) FROM fintech_transactions3);   

-- 122. Identify customers who have made transactions in at least 3 different currencies.
SELECT customer_id,
       customer_name,
       COUNT(DISTINCT currency) AS currency_count,
       SUM(transaction_amount) AS total_spent
FROM fintech_transactions3
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT currency) >= 3;    

-- 123. Find merchants where the average transaction amount in 'USD' is different from the average in other currencies by more than $500.
SELECT merchant_name,
       AVG(CASE WHEN currency = 'USD' THEN transaction_amount END) AS usd_avg,
       AVG(CASE WHEN currency != 'USD' THEN transaction_amount END) AS other_avg
FROM fintech_transactions3
GROUP BY merchant_name
HAVING ABS(AVG(CASE WHEN currency = 'USD' THEN transaction_amount END) - 
           AVG(CASE WHEN currency != 'USD' THEN transaction_amount END)) > 500;
           
-- 124. Get device types where the fraud rate is higher than the overall fraud rate.
SELECT device_type,
       AVG(fraud_flag) * 100 AS fraud_rate,
       COUNT(*) AS transaction_count
FROM fintech_transactions3
GROUP BY device_type
HAVING AVG(fraud_flag) > (SELECT AVG(fraud_flag) FROM fintech_transactions3);           

-- 125. List customer segments where the average risk_score is below 30 but the maximum risk_score is above 70.
SELECT customer_segment,
       AVG(risk_score) AS avg_risk,
       MAX(risk_score) AS max_risk
FROM fintech_transactions3
GROUP BY customer_segment
HAVING AVG(risk_score) < 30 AND MAX(risk_score) > 70;

-- 126. Find locations where the total number of transactions in 'January 2024' was higher than in 'February 2024'.
SELECT location,
       SUM(CASE WHEN DATE_FORMAT(transaction_date, '%Y-%m') = '2024-01' THEN 1 ELSE 0 END) AS jan_count,
       SUM(CASE WHEN DATE_FORMAT(transaction_date, '%Y-%m') = '2024-02' THEN 1 ELSE 0 END) AS feb_count
FROM fintech_transactions3
GROUP BY location
HAVING SUM(CASE WHEN DATE_FORMAT(transaction_date, '%Y-%m') = '2024-01' THEN 1 ELSE 0 END) >
       SUM(CASE WHEN DATE_FORMAT(transaction_date, '%Y-%m') = '2024-02' THEN 1 ELSE 0 END);
       
-- 127. Identify merchants where the average customer_lifetime_value of customers transacting with them is above $20,000.
SELECT merchant_name,
       AVG(customer_lifetime_value) AS avg_customer_clv,
       COUNT(DISTINCT customer_id) AS unique_customers
FROM fintech_transactions3
GROUP BY merchant_name
HAVING AVG(customer_lifetime_value) > 20000;       

-- 128. Get payment methods that have a higher success rate for 'Premium' customers than for 'Basic' customers.
SELECT payment_method,
       AVG(CASE WHEN customer_segment = 'Premium' THEN success_rate END) AS premium_success,
       AVG(CASE WHEN customer_segment = 'Basic' THEN success_rate END) AS basic_success
FROM fintech_transactions3
GROUP BY payment_method
HAVING AVG(CASE WHEN customer_segment = 'Premium' THEN success_rate END) > 
       AVG(CASE WHEN customer_segment = 'Basic' THEN success_rate END);
       
-- 129. Find hours where the fraud count is greater than 5 and the average transaction amount is above $2000.
SELECT HOUR(transaction_time) AS hour,
       COUNT(*) AS total_tx,
       SUM(fraud_flag) AS fraud_count,
       AVG(transaction_amount) AS avg_amount
FROM fintech_transactions3
GROUP BY HOUR(transaction_time)
HAVING SUM(fraud_flag) > 5 AND AVG(transaction_amount) > 2000;       

-- 130. List merchant categories where the minimum transaction amount is less than $20 and maximum is greater than $10,000.
SELECT merchant_category,
       MIN(transaction_amount) AS min_amount,
       MAX(transaction_amount) AS max_amount,
       COUNT(*) AS tx_count
FROM fintech_transactions3
GROUP BY merchant_category
HAVING MIN(transaction_amount) < 20 AND MAX(transaction_amount) > 10000;

-- 131. Identify customers whose average transaction amount is greater than the average of their respective customer segment.
SELECT t.customer_id,
       t.customer_name,
       t.customer_segment,
       AVG(t.transaction_amount) AS customer_avg,
       seg.segment_avg
FROM fintech_transactions3 t
JOIN (SELECT customer_segment, AVG(transaction_amount) AS segment_avg
      FROM fintech_transactions3
      GROUP BY customer_segment) seg ON t.customer_segment = seg.customer_segment
GROUP BY t.customer_id, t.customer_name, t.customer_segment, seg.segment_avg
HAVING AVG(t.transaction_amount) > seg.segment_avg;

-- 132. Find locations where the percentage of 'Cryptocurrency' transactions is higher than 10%.
SELECT location,
       COUNT(*) AS total_tx,
       SUM(CASE WHEN payment_method = 'Cryptocurrency' THEN 1 ELSE 0 END) AS crypto_tx,
       (SUM(CASE WHEN payment_method = 'Cryptocurrency' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS crypto_percentage
FROM fintech_transactions3
GROUP BY location
HAVING (SUM(CASE WHEN payment_method = 'Cryptocurrency' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) > 10;

-- 133. Get device types where the average previous_transactions of customers is above 50.
SELECT device_type,
       AVG(previous_transactions) AS avg_prev_tx,
       COUNT(DISTINCT customer_id) AS unique_customers
FROM fintech_transactions3
GROUP BY device_type
HAVING AVG(previous_transactions) > 50;

-- 134. List merchant names that appear in more than 5 different locations.
SELECT merchant_name,
       COUNT(DISTINCT location) AS location_count,
       SUM(transaction_amount) AS total_volume
FROM fintech_transactions3
GROUP BY merchant_name
HAVING COUNT(DISTINCT location) > 5;

-- 135. Find customer segments where the total number of 'Pending' transactions is more than 10% of total transactions.
SELECT customer_segment,
       COUNT(*) AS total_tx,
       SUM(CASE WHEN transaction_status = 'Pending' THEN 1 ELSE 0 END) AS pending_tx,
       (SUM(CASE WHEN transaction_status = 'Pending' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS pending_percentage
FROM fintech_transactions3
GROUP BY customer_segment
HAVING (SUM(CASE WHEN transaction_status = 'Pending' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) > 10;

-- 136. Identify payment methods where the average transaction amount for 'Failed' transactions is higher than for 'Completed' transactions.
SELECT payment_method,
       AVG(CASE WHEN transaction_status = 'Failed' THEN transaction_amount END) AS failed_avg,
       AVG(CASE WHEN transaction_status = 'Completed' THEN transaction_amount END) AS completed_avg
FROM fintech_transactions3
GROUP BY payment_method
HAVING AVG(CASE WHEN transaction_status = 'Failed' THEN transaction_amount END) > 
       AVG(CASE WHEN transaction_status = 'Completed' THEN transaction_amount END);
       
-- 137. Get locations where the average risk_score of 'Mobile' transactions is higher than 'Desktop' transactions.
SELECT location,
       AVG(CASE WHEN device_type = 'Mobile' THEN risk_score END) AS mobile_risk,
       AVG(CASE WHEN device_type = 'Desktop' THEN risk_score END) AS desktop_risk
FROM fintech_transactions3
GROUP BY location
HAVING AVG(CASE WHEN device_type = 'Mobile' THEN risk_score END) > 
       AVG(CASE WHEN device_type = 'Desktop' THEN risk_score END);       
       
-- 138. Find merchants that have at least one transaction in every payment method category.
SELECT merchant_name,
       COUNT(DISTINCT payment_method) AS payment_methods_used
FROM fintech_transactions3
GROUP BY merchant_name
HAVING COUNT(DISTINCT payment_method) = (SELECT COUNT(DISTINCT payment_method) FROM fintech_transactions3);       

-- 139. List customer segments where the ratio of average_transaction_value to average_transaction_amount is less than 0.5.
SELECT customer_segment,
       AVG(average_transaction_value) AS avg_atv,
       AVG(transaction_amount) AS avg_amount,
       AVG(average_transaction_value) / AVG(transaction_amount) AS ratio
FROM fintech_transactions3
GROUP BY customer_segment
HAVING AVG(average_transaction_value) / AVG(transaction_amount) < 0.5;

-- 140. Identify hours where the total transaction volume exceeds $100,000 and the fraud count is 0.
SELECT HOUR(transaction_time) AS hour,
       SUM(transaction_amount) AS total_volume,
       SUM(fraud_flag) AS fraud_count
FROM fintech_transactions3
GROUP BY HOUR(transaction_time)
HAVING SUM(transaction_amount) > 100000 AND SUM(fraud_flag) = 0;

-- 141. Find locations where the average account balance of customers using 'Tablet' devices is higher than those using 'Mobile' devices.
SELECT location,
       AVG(CASE WHEN device_type = 'Tablet' THEN account_balance END) AS tablet_balance,
       AVG(CASE WHEN device_type = 'Mobile' THEN account_balance END) AS mobile_balance
FROM fintech_transactions3
GROUP BY location
HAVING AVG(CASE WHEN device_type = 'Tablet' THEN account_balance END) > 
       AVG(CASE WHEN device_type = 'Mobile' THEN account_balance END);
       
-- 142. Get merchant categories where the average customer_lifetime_value is increasing with the number of previous_transactions.
SELECT merchant_category,
       AVG(CASE WHEN previous_transactions < 20 THEN customer_lifetime_value END) AS low_exp_clv,
       AVG(CASE WHEN previous_transactions BETWEEN 20 AND 50 THEN customer_lifetime_value END) AS med_exp_clv,
       AVG(CASE WHEN previous_transactions > 50 THEN customer_lifetime_value END) AS high_exp_clv
FROM fintech_transactions3
GROUP BY merchant_category
HAVING AVG(CASE WHEN previous_transactions > 50 THEN customer_lifetime_value END) > 
       AVG(CASE WHEN previous_transactions BETWEEN 20 AND 50 THEN customer_lifetime_value END)
   AND AVG(CASE WHEN previous_transactions BETWEEN 20 AND 50 THEN customer_lifetime_value END) > 
       AVG(CASE WHEN previous_transactions < 20 THEN customer_lifetime_value END);     
       
-- 143. List payment methods that have been used for transactions in all customer segments.
SELECT payment_method,
       COUNT(DISTINCT customer_segment) AS segments_served
FROM fintech_transactions3
GROUP BY payment_method
HAVING COUNT(DISTINCT customer_segment) = (SELECT COUNT(DISTINCT customer_segment) FROM fintech_transactions3);  

-- 144. Find customers who have made transactions in all merchant categories.
SELECT customer_id,
       customer_name,
       COUNT(DISTINCT merchant_category) AS categories_used
FROM fintech_transactions3
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT merchant_category) = (SELECT COUNT(DISTINCT merchant_category) FROM fintech_transactions3);     

-- 145. Identify device types where the average success_rate is above 0.97 and the total transactions exceed 200.
SELECT device_type,
       AVG(success_rate) AS avg_success,
       COUNT(*) AS transaction_count
FROM fintech_transactions3
GROUP BY device_type
HAVING AVG(success_rate) > 0.97 AND COUNT(*) > 200;

-- 146. Get locations where the total number of unique customers is greater than 20 and the average transaction amount is above $1000.
SELECT location,
       COUNT(DISTINCT customer_id) AS unique_customers,
       AVG(transaction_amount) AS avg_amount
FROM fintech_transactions3
GROUP BY location
HAVING COUNT(DISTINCT customer_id) > 20 AND AVG(transaction_amount) > 1000;

-- 147. Find merchant categories where the percentage of 'Wire Transfer' transactions is higher than the overall average.
SELECT merchant_category,
       COUNT(*) AS total_tx,
       SUM(CASE WHEN payment_method = 'Wire Transfer' THEN 1 ELSE 0 END) AS wire_tx,
       (SUM(CASE WHEN payment_method = 'Wire Transfer' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS wire_percentage
FROM fintech_transactions3
GROUP BY merchant_category
HAVING (SUM(CASE WHEN payment_method = 'Wire Transfer' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) > 
       (SELECT (SUM(CASE WHEN payment_method = 'Wire Transfer' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) 
        FROM fintech_transactions3);
        
-- 148. List customer segments where the average risk_score for 'Failed' transactions is at least 10 points higher than for 'Completed' transactions.
SELECT customer_segment,
       AVG(CASE WHEN transaction_status = 'Failed' THEN risk_score END) AS failed_risk,
       AVG(CASE WHEN transaction_status = 'Completed' THEN risk_score END) AS completed_risk
FROM fintech_transactions3
GROUP BY customer_segment
HAVING AVG(CASE WHEN transaction_status = 'Failed' THEN risk_score END) > 
       AVG(CASE WHEN transaction_status = 'Completed' THEN risk_score END) + 10;        
       
-- 149. Find merchants where the maximum transaction amount is more than 50 times the minimum transaction amount.
SELECT merchant_name,
       MIN(transaction_amount) AS min_amount,
       MAX(transaction_amount) AS max_amount,
       MAX(transaction_amount) / MIN(transaction_amount) AS amount_ratio
FROM fintech_transactions3
GROUP BY merchant_name
HAVING MIN(transaction_amount) > 0 AND MAX(transaction_amount) / MIN(transaction_amount) > 50;       

-- 150. Identify payment methods that have a higher fraud rate than the overall fraud rate and are used in at least 3 different customer segments.
SELECT payment_method,
       AVG(fraud_flag) * 100 AS fraud_rate,
       COUNT(DISTINCT customer_segment) AS segments_used,
       COUNT(*) AS total_transactions
FROM fintech_transactions3
GROUP BY payment_method
HAVING AVG(fraud_flag) > (SELECT AVG(fraud_flag) FROM fintech_transactions3)
   AND COUNT(DISTINCT customer_segment) >= 3;
   
-- SECTION C: ADVANCED QUERIES (151-300) - Joins, Subqueries, CTEs

-- 151. Create a view for premium customer transactions.
CREATE VIEW premium_transactions AS
SELECT * FROM fintech_transactions3 WHERE customer_segment = 'Premium';   

-- 152. Use a CTE to find customers with above-average transaction amounts.
WITH avg_amount AS (
    SELECT AVG(transaction_amount) AS global_avg FROM fintech_transactions3
)
SELECT t.customer_name, t.transaction_amount, a.global_avg
FROM fintech_transactions3 t, avg_amount a
WHERE t.transaction_amount > a.global_avg;

-- 153. Find customers who have made transactions in all payment methods (Relational Division).
SELECT customer_id, customer_name
FROM fintech_transactions3
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT payment_method) = (SELECT COUNT(DISTINCT payment_method) FROM fintech_transactions3);

-- 154. Calculate running total of transaction amounts per customer.
SELECT customer_id, transaction_date, transaction_amount,
       SUM(transaction_amount) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS running_total
FROM fintech_transactions3;

-- 155. Rank merchants by total transaction volume.
SELECT merchant_name, SUM(transaction_amount) AS total_volume,
       RANK() OVER (ORDER BY SUM(transaction_amount) DESC) AS volume_rank
FROM fintech_transactions3
GROUP BY merchant_name;

-- 156. Find the difference between current transaction and previous transaction for each customer.
SELECT customer_id, transaction_date, transaction_amount,
       transaction_amount - LAG(transaction_amount) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS amount_diff
FROM fintech_transactions3;

-- 157. Identify fraudulent transactions that occurred within 1 hour of a previous transaction from same customer.
SELECT t1.*
FROM fintech_transactions3 t1
WHERE t1.fraud_flag = 1
  AND EXISTS (
      SELECT 1 FROM fintech_transactions3 t2
      WHERE t2.customer_id = t1.customer_id
        AND t2.transaction_date = t1.transaction_date
        AND TIMEDIFF(t1.transaction_time, t2.transaction_time) BETWEEN '00:00:00' AND '01:00:00'
        AND t2.transaction_id != t1.transaction_id
  );
  
-- 158. Calculate the moving average of transaction amounts over 3 transactions per customer.
SELECT customer_id, transaction_date, transaction_amount,
       AVG(transaction_amount) OVER (PARTITION BY customer_id ORDER BY transaction_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_3
FROM fintech_transactions3; 

-- 159. Find customers who have never made a transaction above $1000.
SELECT DISTINCT customer_id, customer_name
FROM fintech_transactions3
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id FROM fintech_transactions3 WHERE transaction_amount > 1000
); 

-- 160. Use a recursive CTE to generate a series of dates (if needed for gaps).
WITH RECURSIVE dates AS (
    SELECT MIN(transaction_date) AS date FROM fintech_transactions3
    UNION ALL
    SELECT DATE_ADD(date, INTERVAL 1 DAY)
    FROM dates
    WHERE date < (SELECT MAX(transaction_date) FROM fintech_transactions3)
)
SELECT * FROM dates;

-- 161. Calculate the percentage contribution of each merchant to total volume.
SELECT merchant_name, SUM(transaction_amount) AS merchant_volume,
       SUM(transaction_amount) * 100.0 / SUM(SUM(transaction_amount)) OVER () AS percentage_of_total
FROM fintech_transactions3
GROUP BY merchant_name;

-- 162. Find the top 3 most recent transactions for each customer.
SELECT customer_id, transaction_id, transaction_amount, transaction_date
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY transaction_date DESC) AS rn
    FROM fintech_transactions3
) ranked WHERE rn <= 3;

-- 163. Identify customers whose transaction pattern (average amount) changed significantly after a certain date.
SELECT customer_id,
       AVG(CASE WHEN transaction_date < '2024-02-01' THEN transaction_amount END) AS avg_before,
       AVG(CASE WHEN transaction_date >= '2024-02-01' THEN transaction_amount END) AS avg_after
FROM fintech_transactions3
GROUP BY customer_id
HAVING avg_before IS NOT NULL AND avg_after IS NOT NULL AND ABS(avg_after - avg_before) > 500;

-- 164. Calculate the median transaction amount using percentile functions.
SELECT transaction_amount AS median
FROM (
    SELECT transaction_amount, NTILE(2) OVER (ORDER BY transaction_amount) AS median_group
    FROM fintech_transactions3
) ranked
GROUP BY median_group
HAVING median_group = 1
ORDER BY transaction_amount DESC
LIMIT 1;

-- 165. Find pairs of customers who transact at the same merchants frequently.
SELECT t1.customer_id AS customer1, t2.customer_id AS customer2, t1.merchant_name, COUNT(*) AS common_count
FROM fintech_transactions3 t1
JOIN fintech_transactions t2 ON t1.merchant_name = t2.merchant_name AND t1.customer_id < t2.customer_id
GROUP BY t1.customer_id, t2.customer_id, t1.merchant_name
HAVING common_count > 3;

-- 166. Determine if there's a correlation between device type and fraud (using statistical aggregates).
SELECT device_type,
       AVG(fraud_flag) AS fraud_rate,
       COUNT(*) AS total_tx,
       SUM(fraud_flag) AS fraud_count
FROM fintech_transactions3
GROUP BY device_type
ORDER BY fraud_rate DESC;

-- 167. Find the most profitable hour for each merchant category.
SELECT merchant_category, HOUR(transaction_time) AS peak_hour, SUM(transaction_amount) AS hour_volume
FROM fintech_transactions3
GROUP BY merchant_category, peak_hour
HAVING SUM(transaction_amount) = (
    SELECT MAX(hour_volume)
    FROM (
        SELECT merchant_category, HOUR(transaction_time) AS inner_hour, SUM(transaction_amount) AS hour_volume
        FROM fintech_transactions3 inner_t
        WHERE inner_t.merchant_category = outer_t.merchant_category
        GROUP BY merchant_category, inner_hour
    ) inner_stats
)
ORDER BY merchant_category;

-- 168. Create a pivot table showing transaction counts by payment method and customer segment.
SELECT
    payment_method,
    SUM(CASE WHEN customer_segment = 'Premium' THEN 1 ELSE 0 END) AS premium_count,
    SUM(CASE WHEN customer_segment = 'Standard' THEN 1 ELSE 0 END) AS standard_count,
    SUM(CASE WHEN customer_segment = 'Basic' THEN 1 ELSE 0 END) AS basic_count
FROM fintech_transactions3
GROUP BY payment_method;

-- 169. Identify customers who have increased their transaction frequency over time.
WITH monthly_counts AS (
    SELECT customer_id, DATE_FORMAT(transaction_date, '%Y-%m') AS month, COUNT(*) AS tx_count
    FROM fintech_transactions3
    GROUP BY customer_id, month
),
monthly_trend AS (
    SELECT customer_id, month, tx_count,
           LAG(tx_count) OVER (PARTITION BY customer_id ORDER BY month) AS prev_month_count
    FROM monthly_counts
)
SELECT customer_id FROM monthly_trend GROUP BY customer_id HAVING AVG(tx_count - prev_month_count) > 0;

-- 170. Find the longest streak of daily transactions for each customer.
-- Complex - involves gaps and islands
WITH tx_dates AS (
    SELECT DISTINCT customer_id, transaction_date
    FROM fintech_transactions3
),
date_groups AS (
    SELECT customer_id, transaction_date,
           DATE_SUB(transaction_date, INTERVAL ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY transaction_date) DAY) AS group_date
    FROM tx_dates
),
streaks AS (
    SELECT customer_id, MIN(transaction_date) AS streak_start, MAX(transaction_date) AS streak_end,
           COUNT(*) AS streak_length, DATEDIFF(MAX(transaction_date), MIN(transaction_date)) + 1 AS streak_days
    FROM date_groups
    GROUP BY customer_id, group_date
    HAVING streak_days = COUNT(*)  -- consecutive days only
)
SELECT customer_id, MAX(streak_days) AS longest_streak
FROM streaks
GROUP BY customer_id;

-- 171. Rank customers by total transaction amount across all transactions.
SELECT customer_id, customer_name,
       SUM(transaction_amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(transaction_amount) DESC) AS spending_rank
FROM fintech_transactions3
GROUP BY customer_id, customer_name;

-- 172. Calculate running total of transactions per day with cumulative sum.
SELECT transaction_date,
       COUNT(*) AS daily_transactions,
       SUM(COUNT(*)) OVER (ORDER BY transaction_date) AS cumulative_transactions
FROM fintech_transactions3
GROUP BY transaction_date
ORDER BY transaction_date;

-- 173. Find the top 3 most expensive transactions for each customer segment using DENSE_RANK.
SELECT customer_segment, transaction_id, customer_name, transaction_amount
FROM (
    SELECT customer_segment, transaction_id, customer_name, transaction_amount,
           DENSE_RANK() OVER (PARTITION BY customer_segment ORDER BY transaction_amount DESC) AS amount_rank
    FROM fintech_transactions3
) ranked
WHERE amount_rank <= 3;

-- 174. Calculate the difference between each transaction and the average transaction amount of that customer.
SELECT customer_id, transaction_id, transaction_amount,
       AVG(transaction_amount) OVER (PARTITION BY customer_id) AS customer_avg,
       transaction_amount - AVG(transaction_amount) OVER (PARTITION BY customer_id) AS diff_from_avg
FROM fintech_transactions3;

-- 175. Assign row numbers to transactions for each customer ordered by date.
SELECT customer_id, transaction_date, transaction_amount,
       ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY transaction_date) AS transaction_sequence
FROM fintech_transactions3;

-- 176. Calculate the 7-day moving average of transaction amounts.
SELECT transaction_date,
       AVG(transaction_amount) OVER (ORDER BY transaction_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg_7day
FROM fintech_transactions3;

-- 177. Find the percentage contribution of each transaction to its merchant's total volume.
SELECT merchant_name, transaction_id, transaction_amount,
       SUM(transaction_amount) OVER (PARTITION BY merchant_name) AS merchant_total,
       (transaction_amount * 100.0 / SUM(transaction_amount) OVER (PARTITION BY merchant_name)) AS percentage_of_merchant
FROM fintech_transactions3;

-- 178. Identify the first and last transaction of each customer.
SELECT DISTINCT customer_id,
       FIRST_VALUE(transaction_date) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS first_transaction,
       LAST_VALUE(transaction_date) OVER (PARTITION BY customer_id ORDER BY transaction_date 
                                           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_transaction
FROM fintech_transactions3;

-- 179. Calculate the percentile rank of each transaction by amount across the entire dataset.
SELECT transaction_id, transaction_amount,
       PERCENT_RANK() OVER (ORDER BY transaction_amount) AS percentile_rank,
       NTILE(100) OVER (ORDER BY transaction_amount) AS percentile_group
FROM fintech_transactions3;

-- 180. Compare each customer's transaction with their previous transaction using LAG.
SELECT customer_id, transaction_date, transaction_amount,
       LAG(transaction_amount) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS prev_amount,
       transaction_amount - LAG(transaction_amount) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS amount_change
FROM fintech_transactions3;

-- 181. Find the most recent transaction for each customer using LAST_VALUE.
SELECT DISTINCT customer_id,
       LAST_VALUE(transaction_id) OVER (PARTITION BY customer_id ORDER BY transaction_date 
                                         ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS latest_transaction_id,
       LAST_VALUE(transaction_amount) OVER (PARTITION BY customer_id ORDER BY transaction_date 
                                            ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS latest_amount
FROM fintech_transactions3;

-- 182. Calculate the cumulative fraud count over time.
SELECT transaction_date,
       SUM(fraud_flag) AS daily_fraud,
       SUM(SUM(fraud_flag)) OVER (ORDER BY transaction_date) AS cumulative_fraud
FROM fintech_transactions3
GROUP BY transaction_date
ORDER BY transaction_date;

-- 183. Rank merchants by average transaction amount within each category.
SELECT merchant_category, merchant_name,
       AVG(transaction_amount) AS avg_amount,
       RANK() OVER (PARTITION BY merchant_category ORDER BY AVG(transaction_amount) DESC) AS category_rank
FROM fintech_transactions3
GROUP BY merchant_category, merchant_name;

-- 184. Calculate the year-over-year growth in transaction volume using LAG with monthly aggregation.
WITH monthly_volume AS (
    SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month,
           SUM(transaction_amount) AS total_volume
    FROM fintech_transactions3
    GROUP BY DATE_FORMAT(transaction_date, '%Y-%m')
)
SELECT month, total_volume,
       LAG(total_volume) OVER (ORDER BY month) AS prev_month_volume,
       (total_volume - LAG(total_volume) OVER (ORDER BY month)) * 100.0 / 
           LAG(total_volume) OVER (ORDER BY month) AS mom_growth_percentage
FROM monthly_volume;

-- 185. Find the median transaction amount using NTILE.
WITH partitioned AS (
    SELECT transaction_amount,
           NTILE(2) OVER (ORDER BY transaction_amount) AS median_group
    FROM fintech_transactions3
)
SELECT AVG(transaction_amount) AS median_amount
FROM partitioned
WHERE median_group = 1
UNION ALL
SELECT AVG(transaction_amount)
FROM partitioned
WHERE median_group = 2;

-- 186. Identify customers who have increased their transaction frequency using LAG and LEAD.
WITH customer_monthly AS (
    SELECT customer_id, 
           DATE_FORMAT(transaction_date, '%Y-%m') AS month,
           COUNT(*) AS tx_count
    FROM fintech_transactions3
    GROUP BY customer_id, DATE_FORMAT(transaction_date, '%Y-%m')
)
SELECT customer_id, month, tx_count,
       LAG(tx_count) OVER (PARTITION BY customer_id ORDER BY month) AS prev_month_count,
       LEAD(tx_count) OVER (PARTITION BY customer_id ORDER BY month) AS next_month_count
FROM customer_monthly;

-- 187. Calculate the ratio of each transaction to the maximum transaction of that customer.
SELECT customer_id, transaction_id, transaction_amount,
       MAX(transaction_amount) OVER (PARTITION BY customer_id) AS customer_max,
       (transaction_amount / MAX(transaction_amount) OVER (PARTITION BY customer_id)) * 100 AS percentage_of_max
FROM fintech_transactions3;

-- 188. Find the top 5% of transactions by amount using NTILE(20).
WITH percentiled AS (
    SELECT transaction_id, transaction_amount,
           NTILE(20) OVER (ORDER BY transaction_amount DESC) AS top_percentile
    FROM fintech_transactions3
)
SELECT transaction_id, transaction_amount
FROM percentiled
WHERE top_percentile = 1;

-- 189. Calculate the running total of fraud amounts per location.
SELECT location, transaction_date,
       SUM(CASE WHEN fraud_flag = 1 THEN transaction_amount ELSE 0 END) AS daily_fraud_amount,
       SUM(SUM(CASE WHEN fraud_flag = 1 THEN transaction_amount ELSE 0 END)) OVER (PARTITION BY location ORDER BY transaction_date) AS running_fraud_total
FROM fintech_transactions3
GROUP BY location, transaction_date
ORDER BY location, transaction_date;

-- 190. Compare each customer's average transaction value with their segment's average using window functions.
SELECT customer_id, customer_segment,
       AVG(transaction_amount) AS customer_avg,
       AVG(AVG(transaction_amount)) OVER (PARTITION BY customer_segment) AS segment_avg,
       AVG(transaction_amount) - AVG(AVG(transaction_amount)) OVER (PARTITION BY customer_segment) AS diff_from_segment
FROM fintech_transactions3
GROUP BY customer_id, customer_segment;

-- 191. Find the most common payment method for each customer using ROW_NUMBER and COUNT.
WITH payment_preference AS (
    SELECT customer_id, payment_method,
           COUNT(*) AS method_count,
           ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY COUNT(*) DESC) AS rn
    FROM fintech_transactions3
    GROUP BY customer_id, payment_method
)
SELECT customer_id, payment_method AS preferred_payment, method_count
FROM payment_preference
WHERE rn = 1;

-- 192. Calculate the 30-day rolling average of transaction amounts.
SELECT transaction_date,
       AVG(transaction_amount) OVER (ORDER BY transaction_date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS rolling_avg_30day
FROM fintech_transactions3;

-- 193. Identify the first fraudulent transaction for each customer.
WITH fraud_transactions AS (
    SELECT customer_id, transaction_id, transaction_date, transaction_amount,
           ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY transaction_date) AS fraud_sequence
    FROM fintech_transactions3
    WHERE fraud_flag = 1
)
SELECT customer_id, transaction_id, transaction_date, transaction_amount
FROM fraud_transactions
WHERE fraud_sequence = 1;

-- 194. Calculate the percentage of customers using each device type over time.
WITH daily_device_counts AS (
    SELECT transaction_date, device_type,
           COUNT(DISTINCT customer_id) AS customer_count
    FROM fintech_transactions3
    GROUP BY transaction_date, device_type
),
daily_totals AS (
    SELECT transaction_date, 
           SUM(customer_count) AS total_customers
    FROM daily_device_counts
    GROUP BY transaction_date
)
SELECT ddc.transaction_date, ddc.device_type, ddc.customer_count,
       (ddc.customer_count * 100.0 / dt.total_customers) AS percentage
FROM daily_device_counts ddc
JOIN daily_totals dt ON ddc.transaction_date = dt.transaction_date
ORDER BY ddc.transaction_date, ddc.device_type;

-- 195. Find customers whose transaction amount is consistently above their median.
WITH customer_medians AS (
    SELECT customer_id, transaction_amount,
           PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY transaction_amount) OVER (PARTITION BY customer_id) AS median_amount
    FROM fintech_transactions3
)
SELECT DISTINCT customer_id
FROM customer_medians
WHERE transaction_amount > median_amount
GROUP BY customer_id
HAVING COUNT(*) > (SELECT COUNT(*)/2 FROM fintech_transactions t2 WHERE t2.customer_id = customer_medians.customer_id);

-- 196. Calculate the exponential moving average of transaction amounts.
WITH ordered_tx AS (
    SELECT transaction_date, transaction_amount,
           ROW_NUMBER() OVER (ORDER BY transaction_date) AS rn
    FROM fintech_transactions3
),
ema_calc AS (
    SELECT transaction_date, transaction_amount, rn,
           transaction_amount AS ema
    FROM ordered_tx
    WHERE rn = 1
    UNION ALL
    SELECT o.transaction_date, o.transaction_amount, o.rn,
           0.3 * o.transaction_amount + 0.7 * e.ema
    FROM ordered_tx o
    JOIN ema_calc e ON o.rn = e.rn + 1
)
SELECT transaction_date, transaction_amount, ema
FROM ema_calc;

-- 197. Identify the longest gap between transactions for each customer.
WITH customer_gaps AS (
    SELECT customer_id, transaction_date,
           LEAD(transaction_date) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS next_transaction_date,
           DATEDIFF(LEAD(transaction_date) OVER (PARTITION BY customer_id ORDER BY transaction_date), transaction_date) AS days_gap
    FROM fintech_transactions3
)
SELECT customer_id, MAX(days_gap) AS longest_gap_days
FROM customer_gaps
WHERE days_gaps IS NOT NULL
GROUP BY customer_id;

-- 198. Rank locations by fraud rate and transaction volume.
SELECT location,
       COUNT(*) AS tx_count,
       AVG(fraud_flag) AS fraud_rate,
       RANK() OVER (ORDER BY AVG(fraud_flag) DESC) AS fraud_rate_rank,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS volume_rank
FROM fintech_transactions3
GROUP BY location;

-- 199. Calculate the year-to-date total for each transaction.
SELECT transaction_date, transaction_amount,
       SUM(transaction_amount) OVER (PARTITION BY YEAR(transaction_date) ORDER BY transaction_date) AS ytd_total
FROM fintech_transactions3;

-- 200. Find customers who transact in all payment methods using COUNT(DISTINCT) with window functions.
SELECT customer_id, customer_name,
       COUNT(DISTINCT payment_method) AS methods_used,
       COUNT(*) OVER () AS total_methods
FROM fintech_transactions3
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT payment_method) = (SELECT COUNT(DISTINCT payment_method) FROM fintech_transactions3);

-- 201. Use a recursive CTE to generate a calendar table for 2024.
WITH RECURSIVE dates AS (
    SELECT DATE('2024-01-01') AS date
    UNION ALL
    SELECT DATE_ADD(date, INTERVAL 1 DAY)
    FROM dates
    WHERE date < '2024-12-31'
)
SELECT date, 
       DAYNAME(date) AS day_name,
       MONTH(date) AS month,
       YEAR(date) AS year
FROM dates;

-- 202. Calculate customer lifetime value cohorts by month using CTEs.

WITH customer_cohorts AS (
    SELECT customer_id,
           MIN(DATE_FORMAT(transaction_date, '%Y-%m')) AS cohort_month
    FROM fintech_transactions3
    GROUP BY customer_id
),
cohort_analysis AS (
    SELECT c.cohort_month,
           DATE_FORMAT(t.transaction_date, '%Y-%m') AS transaction_month,
           COUNT(DISTINCT t.customer_id) AS customers,
           SUM(t.transaction_amount) AS revenue
    FROM customer_cohorts c
    JOIN fintech_transactions t ON c.customer_id = t.customer_id
    GROUP BY c.cohort_month, DATE_FORMAT(t.transaction_date, '%Y-%m')
)
SELECT cohort_month,
       SUM(CASE WHEN transaction_month = cohort_month THEN customers ELSE 0 END) AS month_0,
       SUM(CASE WHEN DATE_ADD(DATE_CONCAT(cohort_month, '-01'), INTERVAL 1 MONTH) = transaction_month THEN customers ELSE 0 END) AS month_1,
       SUM(CASE WHEN DATE_ADD(DATE_CONCAT(cohort_month, '-01'), INTERVAL 2 MONTH) = transaction_month THEN customers ELSE 0 END) AS month_2
FROM cohort_analysis
GROUP BY cohort_month;

-- 203. Find the product of all transaction amounts for a customer (using logarithmic approach with CTE).
WITH customer_logs AS (
    SELECT customer_id,
           SUM(LN(transaction_amount)) AS log_sum
    FROM fintech_transactions3
    WHERE customer_id = 'CUS001' AND transaction_amount > 0
    GROUP BY customer_id
)
SELECT customer_id, EXP(log_sum) AS product_of_transactions
FROM customer_logs;

-- 204. Identify customers who made transactions on consecutive days using CTE and LAG.
WITH customer_dates AS (
    SELECT DISTINCT customer_id, transaction_date
    FROM fintech_transactions3
),
date_diff AS (
    SELECT customer_id, transaction_date,
           LAG(transaction_date) OVER (PARTITION BY customer_id ORDER BY transaction_date) AS prev_date,
           DATEDIFF(transaction_date, LAG(transaction_date) OVER (PARTITION BY customer_id ORDER BY transaction_date)) AS days_diff
    FROM customer_dates
)
SELECT DISTINCT customer_id
FROM date_diff
WHERE days_diff = 1;

-- 205. Create a hierarchical customer segmentation based on spending patterns using multiple CTEs.
WITH customer_stats AS (
    SELECT customer_id,
           AVG(transaction_amount) AS avg_amount,
           SUM(transaction_amount) AS total_spent,
           COUNT(*) AS tx_count
    FROM fintech_transactions3
    GROUP BY customer_id
),
segments AS (
    SELECT customer_id,
           CASE 
               WHEN total_spent > 50000 THEN 'High Value'
               WHEN total_spent BETWEEN 10000 AND 50000 THEN 'Medium Value'
               ELSE 'Low Value'
           END AS value_segment,
           CASE
               WHEN tx_count > 50 THEN 'Frequent'
               WHEN tx_count BETWEEN 20 AND 50 THEN 'Regular'
               ELSE 'Occasional'
           END AS frequency_segment
    FROM customer_stats
)
SELECT value_segment, frequency_segment, COUNT(*) AS customer_count
FROM segments
GROUP BY value_segment, frequency_segment
ORDER BY value_segment, frequency_segment;

-- 206. Calculate the Fibonacci sequence using recursive CTE (mathematical demonstration).
WITH RECURSIVE fibonacci(n, fib_n, fib_next) AS (
    SELECT 1, 0, 1
    UNION ALL
    SELECT n + 1, fib_next, fib_n + fib_next
    FROM fibonacci
    WHERE n < 20
)
SELECT n, fib_n AS fibonacci_number
FROM fibonacci;

-- 207. Find the shortest path between two merchants based on shared customers (network analysis).
WITH RECURSIVE merchant_connections AS (
    SELECT t1.merchant_name AS merchant1, t2.merchant_name AS merchant2, 1 AS depth
    FROM fintech_transactions3 t1
    JOIN fintech_transactions3 t2 ON t1.customer_id = t2.customer_id AND t1.merchant_name < t2.merchant_name
    
    UNION ALL
    
    SELECT mc.merchant1, t.merchant_name, mc.depth + 1
    FROM merchant_connections mc
    JOIN fintech_transactions t ON EXISTS (
        SELECT 1 FROM fintech_transactions t2 
        WHERE t2.customer_id = t.customer_id 
        AND t2.merchant_name = mc.merchant2
    )
    WHERE mc.depth < 5
)
SELECT DISTINCT merchant1, merchant2, MIN(depth) AS connection_depth
FROM merchant_connections
WHERE merchant1 = 'Amazon' AND merchant2 = 'Walmart'
GROUP BY merchant1, merchant2;

-- 208. Calculate the moving median using CTEs and window functions.
WITH ranked_transactions AS (
    SELECT transaction_date, transaction_amount,
           ROW_NUMBER() OVER (ORDER BY transaction_date) AS rn
    FROM fintech_transactions3
),
moving_window AS (
    SELECT r1.transaction_date, r1.transaction_amount,
           (
               SELECT AVG(r2.transaction_amount)
               FROM ranked_transactions3 r2
               WHERE r2.rn BETWEEN r1.rn - 7 AND r1.rn
           ) AS moving_avg,
           (
               SELECT r2.transaction_amount
               FROM ranked_transactions3 r2
               WHERE r2.rn = r1.rn - 3
           ) AS median_approx
    FROM ranked_transactions3 r1
)
SELECT transaction_date, transaction_amount, moving_avg, median_approx
FROM moving_window
ORDER BY transaction_date;

-- 209. Identify merchants that form a complete bipartite graph with customer segments.
WITH merchant_segment_pairs AS (
    SELECT DISTINCT merchant_name, customer_segment
    FROM fintech_transactions3
),
segment_counts AS (
    SELECT merchant_name, COUNT(*) AS segments_covered
    FROM merchant_segment_pairs
    GROUP BY merchant_name
)
SELECT merchant_name
FROM segment_counts
WHERE segments_covered = (SELECT COUNT(DISTINCT customer_segment) FROM fintech_transactions3);

-- 210. Calculate the probability of fraud given transaction amount ranges using CTEs.
WITH amount_ranges AS (
    SELECT 
        CASE 
            WHEN transaction_amount < 100 THEN '0-100'
            WHEN transaction_amount BETWEEN 100 AND 500 THEN '100-500'
            WHEN transaction_amount BETWEEN 500 AND 1000 THEN '500-1000'
            WHEN transaction_amount BETWEEN 1000 AND 5000 THEN '1000-5000'
            ELSE '5000+'
        END AS amount_range,
        fraud_flag
    FROM fintech_transactions3
),
range_stats AS (
    SELECT amount_range,
           COUNT(*) AS total_tx,
           SUM(fraud_flag) AS fraud_tx,
           AVG(fraud_flag) AS fraud_probability
    FROM amount_ranges
    GROUP BY amount_range
)
SELECT amount_range, total_tx, fraud_tx, 
       ROUND(fraud_probability * 100, 2) AS fraud_percentage
FROM range_stats
ORDER BY 
    CASE amount_range
        WHEN '0-100' THEN 1
        WHEN '100-500' THEN 2
        WHEN '500-1000' THEN 3
        WHEN '1000-5000' THEN 4
        WHEN '5000+' THEN 5
    END;
    
-- 211. Find the most profitable customer-merchant pairs using CTEs.
WITH customer_merchant_stats AS (
    SELECT customer_id, merchant_name,
           SUM(transaction_amount) AS total_spent,
           COUNT(*) AS tx_count,
           AVG(transaction_amount) AS avg_tx
    FROM fintech_transactions3
    GROUP BY customer_id, merchant_name
),
ranked_pairs AS (
    SELECT customer_id, merchant_name, total_spent, tx_count, avg_tx,
           RANK() OVER (ORDER BY total_spent DESC) AS spending_rank,
           RANK() OVER (PARTITION BY merchant_name ORDER BY total_spent DESC) AS merchant_top_customer
    FROM customer_merchant_stats
)
SELECT customer_id, merchant_name, total_spent, tx_count, avg_tx
FROM ranked_pairs
WHERE merchant_top_customer = 1
ORDER BY total_spent DESC
LIMIT 10;    

-- 212. Create a pivot table of monthly transaction counts by payment method using CTEs.
WITH monthly_payment_counts AS (
    SELECT 
        DATE_FORMAT(transaction_date, '%Y-%m') AS month,
        payment_method,
        COUNT(*) AS tx_count
    FROM fintech_transactions3
    GROUP BY DATE_FORMAT(transaction_date, '%Y-%m'), payment_method
)
SELECT 
    month,
    SUM(CASE WHEN payment_method = 'Credit Card' THEN tx_count ELSE 0 END) AS credit_card_tx,
    SUM(CASE WHEN payment_method = 'Debit Card' THEN tx_count ELSE 0 END) AS debit_card_tx,
    SUM(CASE WHEN payment_method = 'PayPal' THEN tx_count ELSE 0 END) AS paypal_tx,
    SUM(CASE WHEN payment_method = 'Bank Transfer' THEN tx_count ELSE 0 END) AS bank_transfer_tx,
    SUM(CASE WHEN payment_method = 'Wire Transfer' THEN tx_count ELSE 0 END) AS wire_transfer_tx,
    SUM(CASE WHEN payment_method = 'Cryptocurrency' THEN tx_count ELSE 0 END) AS crypto_tx
FROM monthly_payment_counts
GROUP BY month
ORDER BY month;

-- 213. Identify customers whose spending pattern changed significantly after a certain date using CTEs.
WITH customer_split AS (
    SELECT customer_id,
           AVG(CASE WHEN transaction_date < '2024-06-01' THEN transaction_amount END) AS avg_before,
           AVG(CASE WHEN transaction_date >= '2024-06-01' THEN transaction_amount END) AS avg_after,
           COUNT(CASE WHEN transaction_date < '2024-06-01' THEN 1 END) AS count_before,
           COUNT(CASE WHEN transaction_date >= '2024-06-01' THEN 1 END) AS count_after
    FROM fintech_transactions3
    GROUP BY customer_id
    HAVING count_before > 5 AND count_after > 5
)
SELECT customer_id, avg_before, avg_after,
       (avg_after - avg_before) / avg_before * 100 AS pct_change
FROM customer_split
WHERE ABS((avg_after - avg_before) / avg_before) > 0.3
ORDER BY pct_change DESC;

-- 214. Calculate the churn probability based on transaction frequency using CTEs.
WITH customer_last_tx AS (
    SELECT customer_id,
           MAX(transaction_date) AS last_transaction_date,
           DATEDIFF('2024-09-30', MAX(transaction_date)) AS days_since_last_tx,
           COUNT(*) AS total_tx,
           AVG(DATEDIFF(transaction_date, LAG(transaction_date) OVER (PARTITION BY customer_id ORDER BY transaction_date))) AS avg_days_between_tx
    FROM fintech_transactions3
    GROUP BY customer_id
)
SELECT customer_id, days_since_last_tx, total_tx, avg_days_between_tx,
       CASE 
           WHEN days_since_last_tx > 3 * avg_days_between_tx THEN 'High Churn Risk'
           WHEN days_since_last_tx > 2 * avg_days_between_tx THEN 'Medium Churn Risk'
           ELSE 'Low Churn Risk'
       END AS churn_risk
FROM customer_last_tx
WHERE avg_days_between_tx IS NOT NULL;

-- 215. Find the optimal price points using transaction clustering with CTEs.
WITH price_clusters AS (
    SELECT 
        CASE 
            WHEN transaction_amount < 50 THEN 'Micro (<$50)'
            WHEN transaction_amount BETWEEN 50 AND 200 THEN 'Small ($50-200)'
            WHEN transaction_amount BETWEEN 200 AND 500 THEN 'Medium ($200-500)'
            WHEN transaction_amount BETWEEN 500 AND 1000 THEN 'Large ($500-1000)'
            WHEN transaction_amount BETWEEN 1000 AND 5000 THEN 'Very Large ($1000-5000)'
            ELSE 'Ultra (>$5000)'
        END AS price_cluster,
        COUNT(*) AS tx_count,
        SUM(transaction_amount) AS total_volume,
        AVG(fraud_flag) AS fraud_rate
    FROM fintech_transactions3
    GROUP BY 
        CASE 
            WHEN transaction_amount < 50 THEN 'Micro (<$50)'
            WHEN transaction_amount BETWEEN 50 AND 200 THEN 'Small ($50-200)'
            WHEN transaction_amount BETWEEN 200 AND 500 THEN 'Medium ($200-500)'
            WHEN transaction_amount BETWEEN 500 AND 1000 THEN 'Large ($500-1000)'
            WHEN transaction_amount BETWEEN 1000 AND 5000 THEN 'Very Large ($1000-5000)'
            ELSE 'Ultra (>$5000)'
        END
)
SELECT price_cluster, tx_count, total_volume, 
       ROUND(fraud_rate * 100, 2) AS fraud_percentage,
       total_volume / tx_count AS avg_ticket_size
FROM price_clusters
ORDER BY 
    CASE price_cluster
        WHEN 'Micro (<$50)' THEN 1
        WHEN 'Small ($50-200)' THEN 2
        WHEN 'Medium ($200-500)' THEN 3
        WHEN 'Large ($500-1000)' THEN 4
        WHEN 'Very Large ($1000-5000)' THEN 5
        WHEN 'Ultra (>$5000)' THEN 6
    END;