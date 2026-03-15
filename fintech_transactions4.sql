SELECT * FROM fintech_transactions4;

-- 1. Retrieve all transactions.
SELECT * FROM fintech_transactions4;

-- 2. Retrieve transactions where amount > 1000.
SELECT * 
FROM fintech_transactions4
WHERE transaction_amount > 1000;


-- 3. Get transactions made using UPI.
SELECT *
FROM fintech_transactions4
WHERE payment_method = 'UPI';

-- 4. Get transactions from Mumbai.
SELECT *
FROM fintech_transactions4
WHERE city = 'Mumbai';

-- 5. Retrieve failed transactions.
SELECT *
FROM fintech_transactions4
WHERE status = 'Failed';

-- 6. Retrieve fraud transactions.
SELECT *
FROM fintech_transactions4
WHERE fraud_flag = 1;

-- 7. Retrieve transactions between 500 and 1000.
SELECT *
FROM fintech_transactions
WHERE transaction_amount BETWEEN 500 AND 1000;

-- 8. Retrieve transactions not using credit card.
SELECT *
FROM fintech_transactions4
WHERE payment_method <> 'Credit Card';

-- 9. Get transactions done on mobile device.
SELECT *
FROM fintech_transactions4
WHERE device_type = 'Mobile';

-- 10. Retrieve transactions in Electronics category.
SELECT *
FROM fintech_transactions4
WHERE merchant_category = 'Electronics';

-- 11. Transactions after 2024-06-01.
SELECT *
FROM fintech_transactions4
WHERE transaction_date > '2024-06-01';

-- 12. Transactions before 2024-03-01.
SELECT *
FROM fintech_transactions4
WHERE transaction_date < '2024-03-01';
-- 13. Transactions in multiple cities.
SELECT *
FROM fintech_transactions
WHERE city IN ('Mumbai','Delhi','Pune');

-- 14. Transactions with wallet payment.
SELECT *
FROM fintech_transactions4
WHERE payment_method='Wallet';

-- 15. Transactions with balance < 500.
SELECT *
FROM fintech_transactions4
WHERE account_balance < 500;

-- 16. Transactions with balance > 5000.
SELECT *
FROM fintech_transactions
WHERE account_balance > 5000;

-- 17. Transactions in Food category.
select *
FROM fintech_transactions4
WHERE merchant_category='Food';

-- 18. Completed transactions.
SELECT *
FROM fintech_transactions4
WHERE status='Completed';

-- 19. Pending transactions.
SELECT *
FROM fintech_transactions4
WHERE status='Pending';

-- 20. Transactions with amount < 100.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount < 100;

-- 21. Sort transactions by amount ascending.
SELECT *
FROM fintech_transactions4
ORDER BY transaction_amount ASC;

-- 22. Sort transactions by amount descending.
SELECT *
FROM fintech_transactions4
ORDER BY transaction_amount DESC;

-- 23. Sort by transaction date.
SELECT *
FROM fintech_transactions4
ORDER BY transaction_date;

-- 24. Sort by customer id.
SELECT *
FROM fintech_transactions4
ORDER BY customer_id;

-- 25. Get top 10 highest transactions.
SELECT *
FROM fintech_transactions4
ORDER BY transaction_amount DESC
LIMIT 10;

-- 26. Get lowest 5 transactions.
SELECT *
FROM fintech_transactions4
ORDER BY transaction_amount
LIMIT 5;

-- 27. Top 10 latest transactions.
SELECT *
FROM fintech_transactions4
ORDER BY transaction_date DESC
LIMIT 10;

-- 28. Sort by city then amount.
SELECT *
FROM fintech_transactions4
ORDER BY city, transaction_amount DESC;

-- 29. Sort by merchant category.
SELECT *
FROM fintech_transactions4
ORDER BY merchant_category;

-- 30. Top 3 fraud transactions by amount.
SELECT *
FROM fintech_transactions4
WHERE fraud_flag=1
ORDER BY transaction_amount DESC
LIMIT 3;

-- 31. Top 5 balances.
SELECT *
FROM fintech_transactions4
ORDER BY account_balance DESC
LIMIT 5;

-- 32. Sort by device type.
SELECT *
FROM fintech_transactions4
ORDER BY device_type;

-- 33. Sort completed transactions by amount.
SELECT *
FROM fintech_transactions4
WHERE status='Completed'
ORDER BY transaction_amount DESC;

-- 34. Latest transactions in Mumbai.
SELECT *
FROM fintech_transactions4
WHERE city='Mumbai'
ORDER BY transaction_date DESC;

-- 35. Highest wallet transactions.
SELECT *
FROM fintech_transactions4
WHERE payment_method='Wallet'
ORDER BY transaction_amount DESC;

-- 36. Sort fraud transactions.
SELECT *
FROM fintech_transactions4
WHERE fraud_flag=1
ORDER BY transaction_amount DESC;

-- 37. Sort transactions by balance.
SELECT *
FROM fintech_transactions4
ORDER BY account_balance DESC;

-- 38. Earliest transactions.
SELECT *
FROM fintech_transactions4
ORDER BY transaction_date
LIMIT 5;

-- 39. Transactions sorted by category then city.
SELECT *
FROM fintech_transactions4
ORDER BY merchant_category, city;

-- 40. Transactions sorted by payment method.
SELECT *
FROM fintech_transactions4
ORDER BY payment_method;

-- 41. Count all transactions.
SELECT COUNT(*) FROM fintech_transactions;

-- 42. Average transaction amount.
SELECT AVG(transaction_amount) FROM fintech_transactions4;

-- 43. Maximum transaction amount.
SELECT MAX(transaction_amount) FROM fintech_transactions4;

-- 44. Minimum transaction amount.
SELECT MIN(transaction_amount) FROM fintech_transactions4;

-- 45. Total transaction amount.
SELECT SUM(transaction_amount) FROM fintech_transactions4;

-- 46. Count transactions per city.
SELECT city, COUNT(*)
FROM fintech_transactions4
GROUP BY city;

-- 47. Average transaction per payment method.
SELECT payment_method, AVG(transaction_amount)
FROM fintech_transactions4
GROUP BY payment_method;

-- 48. Maximum transaction per category.
SELECT merchant_category, MAX(transaction_amount)
FROM fintech_transactions4
GROUP BY merchant_category;

-- 49. Minimum balance per city.
SELECT city, MIN(account_balance)
FROM fintech_transactions4
GROUP BY city;

-- 50. Total transactions per status.
SELECT status, COUNT(*)
FROM fintech_transactions4
GROUP BY status;

-- 51. Find the total transaction amount for each city.
SELECT city, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY city;

-- 52. Find the average account balance for each payment method.
SELECT payment_method, AVG(account_balance) AS avg_balance
FROM fintech_transactions4
GROUP BY payment_method;

-- 53. Count the number of transactions in each merchant category.
SELECT merchant_category, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY merchant_category;

-- 54. Find the maximum account balance in each city.
SELECT city, MAX(account_balance) AS max_balance
FROM fintech_transactions4
GROUP BY city;

-- 55. Find the minimum transaction amount in each merchant category.
SELECT merchant_category, MIN(transaction_amount) AS min_transaction
FROM fintech_transactions4
GROUP BY merchant_category;

-- 56. Find the total number of fraud transactions.
SELECT COUNT(*) AS fraud_transactions
FROM fintech_transactions4
WHERE fraud_flag = 1;

-- 57. Find the average transaction amount for completed transactions.
SELECT AVG(transaction_amount) AS avg_completed_transactions
FROM fintech_transactions4
WHERE status = 'Completed';

-- 58. Count transactions by device type.
SELECT device_type, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY device_type;

-- 59. Find the total transaction amount by payment method.
SELECT payment_method, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY payment_method;

-- 60. Find the number of transactions for each status.
SELECT status, COUNT(*) AS total
FROM fintech_transactions4
GROUP BY status;

-- 61. Find cities with total transaction amount greater than 10,000.
SELECT city, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY city
HAVING SUM(transaction_amount) > 10000;

-- 62. Find merchant categories with more than 20 transactions.
SELECT merchant_category, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY merchant_category
HAVING COUNT(*) > 20;

-- 63. Find payment methods where average transaction amount is greater than 700.
SELECT payment_method, AVG(transaction_amount) AS avg_amount
FROM fintech_transactions4
GROUP BY payment_method
HAVING AVG(transaction_amount) > 700;

-- 64. Find cities with more than 30 transactions.
SELECT city, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY city
HAVING COUNT(*) > 30;


-- 65. Find merchant categories where maximum transaction amount is greater than 1500.
SELECT merchant_category, MAX(transaction_amount) AS max_transaction
FROM fintech_transactions4
GROUP BY merchant_category
HAVING MAX(transaction_amount) > 1500;

-- 66. Find device types with more than 50 transactions.
SELECT device_type, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY device_type
HAVING COUNT(*) > 50;

-- 67. Find payment methods where total transaction amount is greater than 20,000.
SELECT payment_method, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY payment_method
HAVING SUM(transaction_amount) > 20000;

-- 68. Find cities where average account balance is greater than 5000.
SELECT city, AVG(account_balance) AS avg_balance
FROM fintech_transactions4
GROUP BY city
HAVING AVG(account_balance) > 5000;

-- 69. Find merchant categories with total transaction amount greater than 15,000.
SELECT merchant_category, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY merchant_category
HAVING SUM(transaction_amount) > 15000;

-- 70. Find customers with more than 3 transactions.
SELECT customer_id, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY customer_id
HAVING COUNT(*) > 3;

-- 71. Cities with more than 50 transactions.
SELECT city, COUNT(*)
FROM fintech_transactions4
GROUP BY city
HAVING COUNT(*) > 50;

-- 72. Customers with total transactions > 5000.
SELECT customer_id, SUM(transaction_amount)
FROM fintech_transactions4
GROUP BY customer_id
HAVING SUM(transaction_amount) > 5000;

-- 73. Categories with avg transaction > 800.
SELECT merchant_category, AVG(transaction_amount)
FROM fintech_transactions4
GROUP BY merchant_category
HAVING AVG(transaction_amount) > 800;

-- 74. Cities with fraud transactions.
SELECT city, COUNT(*)
FROM fintech_transactions4
WHERE fraud_flag=1
GROUP BY city;

-- 75. Payment methods used more than 30 times.
SELECT payment_method, COUNT(*)
FROM fintech_transactions4
GROUP BY payment_method
HAVING COUNT(*) > 30;

-- 76. Find cities where the maximum account balance is greater than 9000.
SELECT city, MAX(account_balance) AS max_balance
FROM fintech_transactions4
GROUP BY city
HAVING MAX(account_balance) > 9000;

-- 77. Find merchant categories with average transaction amount greater than 1000.
SELECT merchant_category, AVG(transaction_amount) AS avg_amount
FROM fintech_transactions4
GROUP BY merchant_category
HAVING AVG(transaction_amount) > 1000;

-- 78. Find payment methods used by more than 40 transactions.
SELECT payment_method, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY payment_method
HAVING COUNT(*) > 40;

-- 79. Find device types where the total transaction amount is greater than 25,000.
SELECT device_type, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY device_type
HAVING SUM(transaction_amount) > 25000;

-- 80. Find cities where the minimum transaction amount is less than 50.
SELECT city, MIN(transaction_amount) AS min_amount
FROM fintech_transactions4
GROUP BY city
HAVING MIN(transaction_amount) < 50;

-- 81. Assign row numbers to transactions ordered by transaction date.
SELECT transaction_id, transaction_date,
ROW_NUMBER() OVER(ORDER BY transaction_date) AS row_num
FROM fintech_transactions4;

-- 82. Rank transactions by transaction amount.
SELECT transaction_id, transaction_amount,
RANK() OVER(ORDER BY transaction_amount DESC) AS rank_position
FROM fintech_transactions4;

-- 83. Use dense rank for transactions by amount.
SELECT transaction_id, transaction_amount,
DENSE_RANK() OVER(ORDER BY transaction_amount DESC) AS dense_ranks
FROM fintech_transactions4;

-- 84. Assign row numbers partitioned by city.
SELECT city, transaction_id,
ROW_NUMBER() OVER(PARTITION BY city ORDER BY transaction_amount DESC) AS row_num
FROM fintech_transactions4;

-- 85. Rank transactions within each merchant category.
SELECT merchant_category, transaction_id, transaction_amount,
RANK() OVER(PARTITION BY merchant_category ORDER BY transaction_amount DESC) AS rank_in_category
FROM fintech_transactions4;

-- 86. Calculate running total of transaction amounts ordered by date.
SELECT transaction_date, transaction_amount,
SUM(transaction_amount) OVER(ORDER BY transaction_date) AS running_total
FROM fintech_transactions4;

-- 87. Calculate cumulative transaction count.
SELECT transaction_date,
COUNT(*) OVER(ORDER BY transaction_date) AS cumulative_transactions
FROM fintech_transactions4;

-- 88. Find the previous transaction amount using LAG.
SELECT transaction_id, transaction_amount,
LAG(transaction_amount) OVER(ORDER BY transaction_date) AS previous_transaction
FROM fintech_transactions4;

-- 89. Find the next transaction amount using LEAD.
SELECT transaction_id, transaction_amount,
LEAD(transaction_amount) OVER(ORDER BY transaction_date) AS next_transaction
FROM fintech_transactions4;

-- 90. Find the average transaction amount per customer using window function.
SELECT customer_id, transaction_id, transaction_amount,
AVG(transaction_amount) OVER(PARTITION BY customer_id) AS avg_customer_transaction
FROM fintech_transactions4;

-- 91. Find transactions greater than the overall average transaction amount.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount >
(SELECT AVG(transaction_amount) FROM fintech_transactions4);

-- 92. Find transactions equal to the maximum transaction amount.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount =
(SELECT MAX(transaction_amount) FROM fintech_transactions4);

-- 93. Find customers whose total transaction amount exceeds 10,000.
SELECT customer_id
FROM fintech_transactions4
GROUP BY customer_id
HAVING SUM(transaction_amount) > 10000;

-- 94. Find transactions greater than the average transaction amount in their city.
SELECT *
FROM fintech_transactions4 t
WHERE transaction_amount >
(SELECT AVG(transaction_amount)
 FROM fintech_transactions4
 WHERE city = t.city);
 
-- 95. Find transactions greater than the customer's average transaction.
SELECT *
FROM fintech_transactions4 t
WHERE transaction_amount >
(SELECT AVG(transaction_amount)
 FROM fintech_transactions4
 WHERE customer_id = t.customer_id);
 
-- 96. Find the top 3 highest transactions per city.
SELECT *
FROM (
    SELECT city, transaction_id, transaction_amount,
    RANK() OVER(PARTITION BY city ORDER BY transaction_amount DESC) AS rnk
    FROM fintech_transactions4
) t
WHERE rnk <= 3;

-- 97. Find customers who made the highest transaction in each city.
SELECT city, customer_id, transaction_amount
FROM fintech_transactions4 t
WHERE transaction_amount =
(
SELECT MAX(transaction_amount)
FROM fintech_transactions4
WHERE city = t.city
);

-- 98. Calculate the percentage of fraud transactions.
SELECT 
100 * SUM(CASE WHEN fraud_flag = 1 THEN 1 ELSE 0 END) / COUNT(*) AS fraud_percentage
FROM fintech_transactions4;

-- 99. Find monthly transaction totals.
SELECT MONTH(transaction_date) AS month,
SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY MONTH(transaction_date);

-- 100. Display overall transaction statistics.
SELECT 
COUNT(*) AS total_transactions,
SUM(transaction_amount) AS total_revenue,
AVG(transaction_amount) AS avg_transaction,
MAX(transaction_amount) AS max_transaction,
MIN(transaction_amount) AS min_transaction
FROM fintech_transactions4;

-- 101. Rank transactions by amount.
SELECT transaction_id, transaction_amount,
RANK() OVER(ORDER BY transaction_amount DESC) AS rank_no
FROM fintech_transactions4;

-- 102. Row number for transactions.
SELECT transaction_id,
ROW_NUMBER() OVER(ORDER BY transaction_date) AS row_num
FROM fintech_transactions4;

-- 103. Dense rank by amount.
SELECT transaction_id, transaction_amount,
DENSE_RANK() OVER(ORDER BY transaction_amount DESC)
FROM fintech_transactions4;

-- 104. Running total of transactions.
SELECT transaction_date,
SUM(transaction_amount)
OVER(ORDER BY transaction_date)
FROM fintech_transactions4;

-- 105. Partition by customer.
SELECT customer_id,
SUM(transaction_amount)
OVER(PARTITION BY customer_id)
FROM fintech_transactions4;

-- 106. Find the highest transaction amount for each customer.
SELECT customer_id, MAX(transaction_amount) AS max_transaction
FROM fintech_transactions4
GROUP BY customer_id;

-- 107. Find the lowest transaction amount for each customer.
SELECT customer_id, MIN(transaction_amount) AS min_transaction
FROM fintech_transactions4
GROUP BY customer_id;

-- 108. Find total transaction amount per customer.
SELECT customer_id, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY customer_id;

-- 109. Find the number of transactions per customer.
SELECT customer_id, COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY customer_id;

-- 110. Find customers whose total transactions exceed 5000.
SELECT customer_id, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY customer_id
HAVING SUM(transaction_amount) > 5000;

-- 111. Find the latest transaction for each customer.
SELECT customer_id, MAX(transaction_date) AS latest_transaction
FROM fintech_transactions4
GROUP BY customer_id;

-- 112. Find the earliest transaction for each customer.
SELECT customer_id, MIN(transaction_date) AS first_transaction
FROM fintech_transactions4
GROUP BY customer_id;

-- 113. Find the total transaction amount for each payment method.
SELECT payment_method, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY payment_method;

-- 114. Find the number of fraud transactions per payment method.
SELECT payment_method, COUNT(*) AS fraud_count
FROM fintech_transactions4
WHERE fraud_flag = 1
GROUP BY payment_method;

-- 115. Find the average transaction amount per city.
SELECT city, AVG(transaction_amount) AS avg_transaction
FROM fintech_transactions4
GROUP BY city;

-- 116. Find the highest transaction in each city.
SELECT city, MAX(transaction_amount) AS highest_transaction
FROM fintech_transactions4
GROUP BY city;

-- 117. Find the total transaction amount for each merchant category.
SELECT merchant_category, SUM(transaction_amount) AS total_revenue
FROM fintech_transactions4
GROUP BY merchant_category;

-- 118. Find the number of transactions in each merchant category.
SELECT merchant_category, COUNT(*) AS transaction_count
FROM fintech_transactions4
GROUP BY merchant_category;

-- 119. Find the highest account balance in each city.
SELECT city, MAX(account_balance) AS highest_balance
FROM fintech_transactions4
GROUP BY city;

-- 120. Find the average account balance per city.
SELECT city, AVG(account_balance) AS avg_balance
FROM fintech_transactions4
GROUP BY city;

-- 121. Rank customers by total transaction amount.
SELECT customer_id,
SUM(transaction_amount) AS total_spent,
RANK() OVER(ORDER BY SUM(transaction_amount) DESC) AS spending_rank
FROM fintech_transactions4
GROUP BY customer_id;

-- 122. Assign row numbers to transactions for each customer.
SELECT customer_id, transaction_id,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY transaction_date) AS transaction_order
FROM fintech_transactions4;

-- 123. Find cumulative transaction amount per customer.
SELECT customer_id, transaction_date,
SUM(transaction_amount)
OVER(PARTITION BY customer_id ORDER BY transaction_date) AS cumulative_amount
FROM fintech_transactions4;

-- 124. Find previous transaction amount for each customer.
SELECT customer_id, transaction_date, transaction_amount,
LAG(transaction_amount)
OVER(PARTITION BY customer_id ORDER BY transaction_date) AS previous_transaction
FROM fintech_transactions4;

-- 125. Find next transaction amount for each customer.
SELECT customer_id, transaction_date, transaction_amount,
LEAD(transaction_amount)
OVER(PARTITION BY customer_id ORDER BY transaction_date) AS next_transaction
FROM fintech_transactions4;

-- 126. Find top 3 transactions for each customer.
SELECT *
FROM (
    SELECT customer_id, transaction_id, transaction_amount,
    RANK() OVER(PARTITION BY customer_id ORDER BY transaction_amount DESC) AS rnk
    FROM fintech_transactions4
) t
WHERE rnk <= 3;

-- 127. Find transactions above the overall average transaction amount.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount >
(SELECT AVG(transaction_amount) FROM fintech_transactions4);

-- 128. Find transactions below the overall average transaction amount.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount <
(SELECT AVG(transaction_amount) FROM fintech_transactions4);

-- 129. Find customers who made transactions greater than 1500.
SELECT DISTINCT customer_id
FROM fintech_transactions4
WHERE transaction_amount > 1500;

-- 130. Find customers with fraud transactions.
SELECT DISTINCT customer_id
FROM fintech_transactions4
WHERE fraud_flag = 1;

-- 131. Find total fraud transactions per city.
SELECT city, COUNT(*) AS fraud_count
FROM fintech_transactions4
WHERE fraud_flag = 1
GROUP BY city;

-- 132. Find the city with the highest transaction amount.
SELECT city, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY city
ORDER BY total_amount DESC
LIMIT 1;

-- 133. Find the most used payment method.
SELECT payment_method, COUNT(*) AS usage_count
FROM fintech_transactions4
GROUP BY payment_method
ORDER BY usage_count DESC
LIMIT 1;

-- 134. Find top 5 cities with highest transaction totals.
SELECT city, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY city
ORDER BY total_amount DESC
LIMIT 5;

-- 135. Find the merchant category with the highest revenue.
SELECT merchant_category, SUM(transaction_amount) AS total_revenue
FROM fintech_transactions4
GROUP BY merchant_category
ORDER BY total_revenue DESC
LIMIT 1;

-- 136. Find total transaction amount per device type.
SELECT device_type, SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY device_type;

-- 137. Find average transaction amount for fraud transactions.
SELECT AVG(transaction_amount) AS avg_fraud_transaction
FROM fintech_transactions4
WHERE fraud_flag = 1;

-- 138. Find customers whose transaction count is greater than 5.
SELECT customer_id, COUNT(*) AS transaction_count
FROM fintech_transactions4
GROUP BY customer_id
HAVING COUNT(*) > 5;

-- 139. Find customers whose average transaction amount is greater than 800.
SELECT customer_id, AVG(transaction_amount) AS avg_amount
FROM fintech_transactions4
GROUP BY customer_id
HAVING AVG(transaction_amount) > 800;

-- 140. Show summary statistics of transactions.
SELECT 
COUNT(*) AS total_transactions,
SUM(transaction_amount) AS total_amount,
AVG(transaction_amount) AS average_amount,
MAX(transaction_amount) AS highest_transaction,
MIN(transaction_amount) AS lowest_transaction
FROM fintech_transactions4;

-- 141. Transactions greater than average.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount >
(SELECT AVG(transaction_amount) FROM fintech_transactions4);

-- 142. Customers with max transaction.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount =
(SELECT MAX(transaction_amount) FROM fintech_transactions4);

-- 143. Transactions greater than city average.
SELECT *
FROM fintech_transactions4 t
WHERE transaction_amount >
(SELECT AVG(transaction_amount)
 FROM fintech_transactions4
 WHERE city = t.city);
 
-- 144. Transactions above customer average.
SELECT *
FROM fintech_transactions4 t
WHERE transaction_amount >
(SELECT AVG(transaction_amount)
 FROM fintech_transactions4
 WHERE customer_id = t.customer_id);
 
-- 145. Find the total transaction amount for each month.
SELECT MONTH(transaction_date) AS month,
SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY MONTH(transaction_date);

-- 146. Find the number of transactions per month.
SELECT MONTH(transaction_date) AS month,
COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY MONTH(transaction_date);

-- 147. Find the highest transaction amount in each month.
SELECT MONTH(transaction_date) AS month,
MAX(transaction_amount) AS highest_transaction
FROM fintech_transactions4
GROUP BY MONTH(transaction_date);

-- 148. Find the lowest transaction amount in each month.
SELECT MONTH(transaction_date) AS month,
MIN(transaction_amount) AS lowest_transaction
FROM fintech_transactions4
GROUP BY MONTH(transaction_date);

-- 149. Find the average transaction amount per month.
SELECT MONTH(transaction_date) AS month,
AVG(transaction_amount) AS avg_transaction
FROM fintech_transactions4
GROUP BY MONTH(transaction_date);

-- 150. Find customers who made transactions in more than one city.
SELECT customer_id
FROM fintech_transactions4
GROUP BY customer_id
HAVING COUNT(DISTINCT city) > 1;

-- 151. Find customers who used more than one payment method.
SELECT customer_id
FROM fintech_transactions4
GROUP BY customer_id
HAVING COUNT(DISTINCT payment_method) > 1;

-- 152. Find customers who made both fraud and non-fraud transactions.
SELECT customer_id
FROM fintech_transactions4
GROUP BY customer_id
HAVING COUNT(DISTINCT fraud_flag) > 1;

-- 153. Find cities where fraud transactions occurred.
SELECT DISTINCT city
FROM fintech_transactions4
WHERE fraud_flag = 1;

-- 154. Find total fraud transaction amount per city.
SELECT city,
SUM(transaction_amount) AS fraud_total
FROM fintech_transactions4
WHERE fraud_flag = 1
GROUP BY city;

-- 155. Find the percentage of fraud transactions per city.
SELECT city,
100 * SUM(CASE WHEN fraud_flag = 1 THEN 1 ELSE 0 END) / COUNT(*) AS fraud_percentage
FROM fintech_transactions4
GROUP BY city;

-- 156. Find the average account balance of customers who made fraud transactions.
SELECT AVG(account_balance) AS avg_balance
FROM fintech_transactions4
WHERE fraud_flag = 1;

-- 157. Find the highest fraud transaction amount.
SELECT MAX(transaction_amount) AS highest_fraud_transaction
FROM fintech_transactions4
WHERE fraud_flag = 1;

-- 158. Find the top 5 fraud transactions.
SELECT *
FROM fintech_transactions4
WHERE fraud_flag = 1
ORDER BY transaction_amount DESC
LIMIT 5;

-- 159. Find the number of fraud transactions per device type.
SELECT device_type,
COUNT(*) AS fraud_count
FROM fintech_transactions4
WHERE fraud_flag = 1
GROUP BY device_type;

-- 160. Find device types with the highest fraud transaction amount.
SELECT device_type,
SUM(transaction_amount) AS fraud_amount
FROM fintech_transactions4
WHERE fraud_flag = 1
GROUP BY device_type
ORDER BY fraud_amount DESC;

-- 161. Find customers who made transactions above the global average.
SELECT DISTINCT customer_id
FROM fintech_transactions4
WHERE transaction_amount >
(SELECT AVG(transaction_amount) FROM fintech_transactions4);

-- 162. Find transactions greater than the average transaction in their merchant category.
SELECT *
FROM fintech_transactions4 t
WHERE transaction_amount >
(
SELECT AVG(transaction_amount)
FROM fintech_transactions4
WHERE merchant_category = t.merchant_category
);

-- 163. Find the city with the highest average transaction amount.
SELECT city, AVG(transaction_amount) AS avg_amount
FROM fintech_transactions4
GROUP BY city
ORDER BY avg_amount DESC
LIMIT 1;

-- 164. Find the payment method generating the highest revenue.
SELECT payment_method,
SUM(transaction_amount) AS total_revenue
FROM fintech_transactions4
GROUP BY payment_method
ORDER BY total_revenue DESC
LIMIT 1;

-- 165. Find the merchant category with the highest number of transactions.
SELECT merchant_category,
COUNT(*) AS total_transactions
FROM fintech_transactions4
GROUP BY merchant_category
ORDER BY total_transactions DESC
LIMIT 1;

-- 166. Find the average balance of customers per payment method.
SELECT payment_method,
AVG(account_balance) AS avg_balance
FROM fintech_transactions4
GROUP BY payment_method;

-- 167. Find customers whose total transaction amount is above the average customer spending.
SELECT customer_id, SUM(transaction_amount) AS total_spent
FROM fintech_transactions4
GROUP BY customer_id
HAVING SUM(transaction_amount) >
(
SELECT AVG(total_amount)
FROM
(
SELECT SUM(transaction_amount) AS total_amount
FROM fintech_transactions4
GROUP BY customer_id
) AS customer_totals
);

-- 168. Find the top 3 cities with the highest fraud transaction count.
SELECT city,
COUNT(*) AS fraud_count
FROM fintech_transactions4
WHERE fraud_flag = 1
GROUP BY city
ORDER BY fraud_count DESC
LIMIT 3;

-- 169. Find customers who made the highest transaction in the dataset.
SELECT *
FROM fintech_transactions4
WHERE transaction_amount =
(SELECT MAX(transaction_amount) FROM fintech_transactions4);

-- 170. Find the difference between each transaction and the average transaction amount.
SELECT transaction_id,
transaction_amount,
transaction_amount -
(SELECT AVG(transaction_amount) FROM fintech_transactions4) AS difference_from_avg
FROM fintech_transactions4;

-- 171. Fraud transaction percentage.
SELECT 
100 * SUM(CASE WHEN fraud_flag=1 THEN 1 ELSE 0 END)/COUNT(*) 
AS fraud_percentage
FROM fintech_transactions4;

-- 172. Monthly transaction totals.
SELECT MONTH(transaction_date) AS month,
SUM(transaction_amount)
FROM fintech_transactions4
GROUP BY MONTH(transaction_date);

-- 173. Top spending customer.
SELECT customer_id, SUM(transaction_amount) AS total
FROM fintech_transactions4
GROUP BY customer_id
ORDER BY total DESC
LIMIT 1;

-- 174. Average balance per city.
SELECT city, AVG(account_balance)
FROM fintech_transactions4
GROUP BY city;

-- 175. Highest transaction per customer.
SELECT customer_id, MAX(transaction_amount)
FROM fintech_transactions4
GROUP BY customer_id;

-- 176. Fraud count per device.
SELECT device_type, COUNT(*)
FROM fintech_transactions4
WHERE fraud_flag=1
GROUP BY device_type;

-- 177. Category revenue.
SELECT merchant_category,
SUM(transaction_amount)
FROM fintech_transactions4
GROUP BY merchant_category;

-- 178. City with highest transaction volume.
SELECT city, COUNT(*)
FROM fintech_transactions4
GROUP BY city
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 179. Payment method revenue share.
SELECT payment_method,
SUM(transaction_amount)
FROM fintech_transactions4
GROUP BY payment_method;

-- 180. Daily transaction totals.
SELECT transaction_date,
SUM(transaction_amount)
FROM fintech_transactions4
GROUP BY transaction_date;

-- 181. Customers with more than 5 transactions.
SELECT customer_id, COUNT(*)
FROM fintech_transactions4
GROUP BY customer_id
HAVING COUNT(*) > 5;

-- 182. Most used payment method.
SELECT payment_method, COUNT(*)
FROM fintech_transactions4
GROUP BY payment_method
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 183. Fraud transactions by city.
SELECT city, COUNT(*)
FROM fintech_transactions4
WHERE fraud_flag=1
GROUP BY city;

-- 184. Top category by revenue.
SELECT merchant_category, SUM(transaction_amount)
FROM fintech_transactions4
GROUP BY merchant_category
ORDER BY SUM(transaction_amount) DESC
LIMIT 1;

-- 185. Average fraud transaction amount.
SELECT AVG(transaction_amount)
FROM fintech_transactions4
WHERE fraud_flag=1;

-- 186. Balance distribution by city.
SELECT city, AVG(account_balance)
FROM fintech_transactions4
GROUP BY city;

-- 187. Top 5 customers by spending.
SELECT customer_id, SUM(transaction_amount) total
FROM fintech_transactions4
GROUP BY customer_id
ORDER BY total DESC
LIMIT 5;

-- 188. Transactions per device type.
SELECT device_type, COUNT(*)
FROM fintech_transactions4
GROUP BY device_type;

-- 189. Fraud transactions by payment method.
SELECT payment_method, COUNT(*)
FROM fintech_transactions4
WHERE fraud_flag=1
GROUP BY payment_method;

-- 190. Transactions per category.
SELECT merchant_category, COUNT(*)
FROM fintech_transactions4
GROUP BY merchant_category;

-- 191. Average transaction per city.
SELECT city, AVG(transaction_amount)
FROM fintech_transactions4
GROUP BY city;

-- 192. Highest balance customer.
SELECT customer_id, MAX(account_balance)
FROM fintech_transactions4
GROUP BY customer_id
ORDER BY MAX(account_balance) DESC
LIMIT 1;

-- 193. Total completed transactions.
SELECT COUNT(*)
FROM fintech_transactions4
WHERE status='Completed';

-- 194. Total pending transactions.
SELECT COUNT(*)
FROM fintech_transactions4
WHERE status='Pending';

-- 195. Revenue from electronics category.
SELECT SUM(transaction_amount)
FROM fintech_transactions4
WHERE merchant_category='Electronics';

-- 196. Fraud transactions above 1000.
SELECT *
FROM fintech_transactions4
WHERE fraud_flag=1 AND transaction_amount>1000;

-- 197. Wallet transactions per city.
SELECT city, COUNT(*)
FROM fintech_transactions4
WHERE payment_method='Wallet'
GROUP BY city;

-- 198. Average balance of fraud users.
SELECT AVG(account_balance)
FROM fintech_transactions4
WHERE fraud_flag=1;

-- 199. Highest transaction per city.
SELECT city, MAX(transaction_amount)
FROM fintech_transactions4
GROUP BY city;

-- 200. Overall transaction summary.
SELECT 
COUNT(*) total_transactions,
SUM(transaction_amount) total_revenue,
AVG(transaction_amount) avg_transaction
FROM fintech_transactions4;