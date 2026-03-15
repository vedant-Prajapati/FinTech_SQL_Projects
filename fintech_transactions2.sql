SELECT * FROM fintech_transactions_200_rows;

-- 1. Display all records
SELECT * FROM fintech_transactions2;

-- 2. Display only transaction_id and amount
SELECT transaction_id, amount FROM fintech_transactions2;

-- 3. Show all unique cities
SELECT DISTINCT city FROM fintech_transactions2;

-- 4. Show unique payment methods
SELECT DISTINCT payment_method FROM fintech_transactions2;

-- 5. Show unique merchant categories
SELECT DISTINCT merchant_category FROM fintech_transactions2;

-- 6. Count total transactions
SELECT COUNT(*) FROM fintech_transactions2;

-- 7. Show transactions where city is Delhi
SELECT * FROM fintech_transactions2
WHERE city='Delhi';

-- 8. Show successful transactions
SELECT * FROM fintech_transactions2
WHERE transaction_status='Success';

-- 9. Show transactions with amount greater than 1000
SELECT * FROM fintech_transactions2
WHERE amount > 1000;

-- 10. Show transactions less than 500
SELECT * FROM fintech_transactions2
WHERE amount < 500;

-- 11. Show transactions from Pune
SELECT * FROM fintech_transactions2
WHERE city='Pune';

-- 12. Show transactions using UPI
SELECT * FROM fintech_transactions2
WHERE payment_method='UPI';

-- 13. Show transactions in Electronics category
SELECT * FROM fintech_transactions2
WHERE merchant_category='Electronics';

-- 14. Display transaction IDs with amount greater than 3000
SELECT transaction_id, amount
FROM fintech_transactions2
WHERE amount > 3000;

-- 15. Display users who made transactions above 2000
SELECT user_id
FROM fintech_transactions2
WHERE amount > 2000;

-- 16. Show transactions on 22-02-2024
SELECT *
FROM fintech_transactions2
WHERE transaction_date='22-02-2024';

-- 17. Display failed transactions
SELECT *
FROM fintech_transactions2
WHERE transaction_status='Failed';

-- 18. Show transactions above 4000
SELECT *
FROM fintech_transactions2
WHERE amount > 4000;

-- 19. Show transactions below 100
SELECT *
FROM fintech_transactions2
WHERE amount < 100;

-- 20. Show transactions between 100 and 1000
SELECT *
FROM fintech_transactions2
WHERE amount BETWEEN 100 AND 1000;

-- 21. Sort transactions by amount ascending
SELECT * FROM fintech_transactions2
ORDER BY amount ASC;

-- 22. Sort transactions by amount descending
SELECT * FROM fintech_transactions2
ORDER BY amount DESC;

-- 23. Sort by city
SELECT * FROM fintech_transactions2
ORDER BY city;

-- 24. Sort by transaction date
SELECT * FROM fintech_transactions2
ORDER BY transaction_date;

-- 25. Sort by payment method
SELECT * FROM fintech_transactions2
ORDER BY payment_method;

-- 26. Show top 10 highest transactions
SELECT * FROM fintech_transactions2
ORDER BY amount DESC
LIMIT 10;

-- 27. Show lowest 10 transactions
SELECT * FROM fintech_transactions2
ORDER BY amount ASC
LIMIT 10;

-- 28. Sort by city then amount
SELECT *
FROM fintech_transactions2
ORDER BY city, amount;

-- 29. Sort by merchant category descending
SELECT *
FROM fintech_transactions2
ORDER BY merchant_category DESC;

-- 30. Show latest transactions
SELECT *
FROM fintech_transactions2
ORDER BY transaction_date DESC;

-- 31. Find total transaction amount
SELECT SUM(amount) FROM fintech_transactions2;

-- 32. Find average transaction amount
SELECT AVG(amount) FROM fintech_transactions2;

-- 33. Find maximum transaction
SELECT MAX(amount) FROM fintech_transactions2;

-- 34. Find minimum transaction
SELECT MIN(amount) FROM fintech_transactions2;

-- 35. Count successful transactions
SELECT COUNT(*)
FROM fintech_transactions2
WHERE transaction_status='Success';

-- 36. Count transactions per city
SELECT city, COUNT(*)
FROM fintech_transactions2
GROUP BY city;

-- 37. Total amount by city
SELECT city, SUM(amount)
FROM fintech_transactions2
GROUP BY city;

-- 38. Average amount per payment method
SELECT payment_method, AVG(amount)
FROM fintech_transactions2
GROUP BY payment_method;

-- 39. Count transactions per category
SELECT merchant_category, COUNT(*)
FROM fintech_transactions2
GROUP BY merchant_category;

-- 40. Max transaction per city
SELECT city, MAX(amount)
FROM fintech_transactions2
GROUP BY city;

-- 41. Total amount per merchant category
SELECT merchant_category, SUM(amount)
FROM fintech_transactions2
GROUP BY merchant_category;

-- 42. Average transaction per city
SELECT city, AVG(amount)
FROM fintech_transactions2
GROUP BY city;

-- 43. Count transactions per payment method
SELECT payment_method, COUNT(*)
FROM fintech_transactions2
GROUP BY payment_method;

-- 44. Highest transaction per category
SELECT merchant_category, MAX(amount)
FROM fintech_transactions2
GROUP BY merchant_category;

-- 45. Minimum transaction per category
SELECT merchant_category, MIN(amount)
FROM fintech_transactions2
GROUP BY merchant_category;

-- 46. Total amount per payment method
SELECT payment_method, SUM(amount)
FROM fintech_transactions2
GROUP BY payment_method;

-- 47. Transaction count per user
SELECT user_id, COUNT(*)
FROM fintech_transactions2
GROUP BY user_id;

-- 48. Average amount per user
SELECT user_id, AVG(amount)
FROM fintech_transactions2
GROUP BY user_id;

-- 49. Total spending per user
SELECT user_id, SUM(amount)
FROM fintech_transactions2
GROUP BY user_id;

-- 50. Max transaction per user
SELECT user_id, MAX(amount)
FROM fintech_transactions2
GROUP BY user_id;

-- 51. Cities with more than 10 transactions
SELECT city, COUNT(*)
FROM fintech_transactions2
GROUP BY city
HAVING COUNT(*) > 10;

-- 52. Users spending more than 5000
SELECT user_id, SUM(amount)
FROM fintech_transactions2
GROUP BY user_id
HAVING SUM(amount) > 5000;

-- 53. Categories with average amount >1000
SELECT merchant_category, AVG(amount)
FROM fintech_transactions2
GROUP BY merchant_category
HAVING AVG(amount) > 1000;

-- 54. Payment methods used more than 20 times
SELECT payment_method, COUNT(*)
FROM fintech_transactions2
GROUP BY payment_method
HAVING COUNT(*) > 20;

-- 55. Cities with total transaction >10000
SELECT city, SUM(amount)
FROM fintech_transactions2
GROUP BY city
HAVING SUM(amount) > 10000;

-- 56. Show cities where total transaction amount is greater than 20,000
SELECT city, SUM(amount) AS total_amount
FROM fintech_transactions2
GROUP BY city
HAVING SUM(amount) > 20000;

-- 57. Show merchant categories having more than 15 transactions
SELECT merchant_category, COUNT(*) AS transaction_count
FROM fintech_transactions2
GROUP BY merchant_category
HAVING COUNT(*) > 15;

-- 58. Show payment methods with total transaction amount greater than 10,000
SELECT payment_method, SUM(amount) AS total_amount
FROM fintech_transactions2
GROUP BY payment_method
HAVING SUM(amount) > 10000;

-- 59. Show users who made more than 5 transactions
SELECT user_id, COUNT(*) AS total_transactions
FROM fintech_transactions2
GROUP BY user_id
HAVING COUNT(*) > 5;

-- 60. Show categories where maximum transaction is greater than 5000
SELECT merchant_category, MAX(amount) AS max_transaction
FROM fintech_transactions2
GROUP BY merchant_category
HAVING MAX(amount) > 5000;

-- 61. Show cities where minimum transaction amount is less than 100
SELECT city, MIN(amount) AS min_transaction
FROM fintech_transactions2
GROUP BY city
HAVING MIN(amount) < 100;

-- 62. Show users whose total spending is greater than 15,000
SELECT user_id, SUM(amount) AS total_spent
FROM fintech_transactions2
GROUP BY user_id
HAVING SUM(amount) > 15000;

-- 63. Show payment methods where average transaction amount is greater than 1000
SELECT payment_method, AVG(amount) AS avg_amount
FROM fintech_transactions2
GROUP BY payment_method
HAVING AVG(amount) > 1000;

-- 64. Show merchant categories where total amount is less than 5000
SELECT merchant_category, SUM(amount) AS total_amount
FROM fintech_transactions2
GROUP BY merchant_category
HAVING SUM(amount) < 5000;

-- 65. Show cities having more than 20 successful transactions
SELECT city, COUNT(*) AS success_count
FROM fintech_transactions2
WHERE transaction_status = 'Success'
GROUP BY city
HAVING COUNT(*) > 20;

-- 66. Show payment methods used in more than 30 transactions
SELECT payment_method, COUNT(*) AS usage_count
FROM fintech_transactions2
GROUP BY payment_method
HAVING COUNT(*) > 30;

-- 67. Show categories with average transaction less than 500
SELECT merchant_category, AVG(amount) AS avg_amount
FROM fintech_transactions2
GROUP BY merchant_category
HAVING AVG(amount) < 500;

-- 68. Show users whose maximum transaction amount is greater than 7000
SELECT user_id, MAX(amount) AS max_transaction
FROM fintech_transactions2
GROUP BY user_id
HAVING MAX(amount) > 7000;

-- 69. Show cities where total failed transaction amount is greater than 3000
SELECT city, SUM(amount) AS failed_amount
FROM fintech_transactions2
WHERE transaction_status = 'Failed'
GROUP BY city
HAVING SUM(amount) > 3000;

-- 70. Show merchant categories with more than 10 successful transactions
SELECT merchant_category, COUNT(*) AS success_count
FROM fintech_transactions2
WHERE transaction_status = 'Success'
GROUP BY merchant_category
HAVING COUNT(*) > 10;

-- 71. Cities starting with 'D'
SELECT * FROM fintech_transactions2
WHERE city LIKE 'D%';

-- 72. Cities ending with 'i'
SELECT * FROM fintech_transactions2
WHERE city LIKE '%i';

-- 73. Cities containing 'e'
SELECT * FROM fintech_transactions2
WHERE city LIKE '%e%';

-- 74. Payment methods starting with C
SELECT * FROM fintech_transactions2
WHERE payment_method LIKE 'C%';

-- 75. Merchant categories containing 'o'
SELECT * FROM fintech_transactions2
WHERE merchant_category LIKE '%o%';

-- 76. Find transactions where city contains the letter 'a'
SELECT *
FROM fintech_transactions2
WHERE city LIKE '%a%';

-- 77. Find payment methods ending with 'I'
SELECT *
FROM fintech_transactions2
WHERE payment_method LIKE '%I';

-- 78. Find merchant categories starting with 'E'
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE 'E%';

-- 79. Find cities with exactly 5 characters
SELECT *
FROM fintech_transactions2
WHERE city LIKE '_____';

-- 80. Find payment methods containing 'ar'
SELECT *
FROM fintech_transactions2
WHERE payment_method LIKE '%ar%';

-- 81. Find transactions where city starts with 'M'
SELECT *
FROM fintech_transactions2
WHERE city LIKE 'M%';

-- 82. Find merchant categories ending with 's'
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE '%s';

-- 83. Find cities where the second letter is 'e'
SELECT *
FROM fintech_transactions2
WHERE city LIKE '_e%';

-- 84. Find payment methods starting with 'N'
SELECT *
FROM fintech_transactions2
WHERE payment_method LIKE 'N%';

-- 85. Find merchant categories containing 't'
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE '%t%';

-- 86. Find transactions where city starts with 'B' and ends with 'i'
SELECT *
FROM fintech_transactions2
WHERE city LIKE 'B%i';

-- 87. Find merchant categories starting with 'F'
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE 'F%';

-- 88. Find cities containing 'oo'
SELECT *
FROM fintech_transactions2
WHERE city LIKE '%oo%';

-- 89. Find payment methods where the third letter is 'd'
SELECT *
FROM fintech_transactions2
WHERE payment_method LIKE '__d%';

-- 90. Find merchant categories containing 'ar'
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE '%ar%';

-- 91. Find cities ending with 'e'
SELECT *
FROM fintech_transactions2
WHERE city LIKE '%e';

-- 92. Find payment methods containing the letter 'e'
SELECT *
FROM fintech_transactions2
WHERE payment_method LIKE '%e%';

-- 93. Find merchant categories with exactly 7 characters
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE '_______';

-- 94. Find cities starting with 'K'
SELECT *
FROM fintech_transactions2
WHERE city LIKE 'K%';

-- 95. Find payment methods starting with 'C'
SELECT *
FROM fintech_transactions2
WHERE payment_method LIKE 'C%';

-- 96. Find merchant categories ending with 'y'
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE '%y';

-- 97. Find cities containing 'ra'
SELECT *
FROM fintech_transactions2
WHERE city LIKE '%ra%';

-- 98. Find payment methods with exactly 4 characters
SELECT *
FROM fintech_transactions2
WHERE payment_method LIKE '____';

-- 99. Find merchant categories starting with 'G'
SELECT *
FROM fintech_transactions2
WHERE merchant_category LIKE 'G%';

-- 100. Find cities where the last letter is 'a'
SELECT *
FROM fintech_transactions2
WHERE city LIKE '%a';

-- 101. Transactions greater than average amount
SELECT *
FROM fintech_transactions2
WHERE amount > (
SELECT AVG(amount)
FROM fintech_transactions2);

-- 102. Transactions equal to maximum amount
SELECT *
FROM fintech_transactions2
WHERE amount = (
SELECT MAX(amount)
FROM fintech_transactions2);

-- 103. Users who made highest transaction
SELECT user_id
FROM fintech_transactions2
WHERE amount = (
SELECT MAX(amount)
FROM fintech_transactions2);

-- 104. Transactions lower than average
SELECT *
FROM fintech_transactions2
WHERE amount < (
SELECT AVG(amount)
FROM fintech_transactions2);

-- 105. Find transactions greater than the average transaction amount 
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 106. Find transactions less than the average amount
SELECT *
FROM fintech_transactions2
WHERE amount < (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 107. Find the transaction with the maximum amount
SELECT *
FROM fintech_transactions2
WHERE amount = (
    SELECT MAX(amount)
    FROM fintech_transactions2
);

-- 108. Find the transaction with the minimum amount
SELECT *
FROM fintech_transactions2
WHERE amount = (
    SELECT MIN(amount)
    FROM fintech_transactions2
);

--  109. Find users who made transactions greater than average
SELECT DISTINCT user_id
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 110. Find transactions in the city with the highest transaction amount
SELECT *
FROM fintech_transactions2
WHERE city = (
    SELECT city
    FROM fintech_transactions2
    ORDER BY amount DESC
    LIMIT 1
);

-- 111. Find transactions where amount equals the highest transaction
SELECT *
FROM fintech_transactions2
WHERE amount = (
    SELECT MAX(amount)
    FROM fintech_transactions2
);

-- 112. Find transactions where amount equals the lowest transaction
SELECT *
FROM fintech_transactions2
WHERE amount = (
    SELECT MIN(amount)
    FROM fintech_transactions2
);

-- 113. Find transactions greater than the minimum amount
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT MIN(amount)
    FROM fintech_transactions2
);

-- 114. Find transactions lower than the maximum amount
SELECT *
FROM fintech_transactions2
WHERE amount < (
    SELECT MAX(amount)
    FROM fintech_transactions2
);

-- 115. Find users who made the highest transaction
SELECT user_id
FROM fintech_transactions2
WHERE amount = (
    SELECT MAX(amount)
    FROM fintech_transactions2
);

-- 116. Find cities where transaction amount is above overall average
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 117. Find transactions equal to average amount
SELECT *
FROM fintech_transactions2
WHERE amount = (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 118. Find transactions above average in Delhi
SELECT *
FROM fintech_transactions2
WHERE city = 'Delhi'
AND amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 119. Find transactions with amount greater than average of successful transactions
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
    WHERE transaction_status = 'Success'
);

-- 120. Find transactions with amount less than average of failed transactions
SELECT *
FROM fintech_transactions2
WHERE amount < (
    SELECT AVG(amount)
    FROM fintech_transactions2
    WHERE transaction_status = 'Failed'
);

-- 121. Find transactions above the maximum failed transaction amount
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT MAX(amount)
    FROM fintech_transactions2
    WHERE transaction_status = 'Failed'
);

-- 122. Find successful transactions above average successful amount
SELECT *
FROM fintech_transactions2
WHERE transaction_status = 'Success'
AND amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
    WHERE transaction_status = 'Success'
);

-- 123. Find failed transactions below average failed amount
SELECT *
FROM fintech_transactions2
WHERE transaction_status = 'Failed'
AND amount < (
    SELECT AVG(amount)
    FROM fintech_transactions2
    WHERE transaction_status = 'Failed'
);

-- 124. Find transactions greater than the average transaction in Mumbai
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
    WHERE city = 'Mumbai'
);

-- 125. Find cities with transactions above overall average
SELECT DISTINCT city
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 126. Find users whose transaction amount equals the maximum
SELECT user_id
FROM fintech_transactions2
WHERE amount = (
    SELECT MAX(amount)
    FROM fintech_transactions2
);

-- 127. Find merchant categories where transaction amount exceeds average
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
);

-- 128. Find transactions above the minimum successful transaction
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT MIN(amount)
    FROM fintech_transactions2
    WHERE transaction_status = 'Success'
);

-- 129. Find transactions below the maximum successful transaction
SELECT *
FROM fintech_transactions2
WHERE amount < (
    SELECT MAX(amount)
    FROM fintech_transactions2
    WHERE transaction_status = 'Success'
);

-- 130. Find transactions above average transaction amount in Pune 
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
    WHERE city = 'Pune'
);

-- 131. Categorize transaction size
SELECT transaction_id,
CASE
WHEN amount < 500 THEN 'Low'
WHEN amount BETWEEN 500 AND 2000 THEN 'Medium'
ELSE 'High'
END AS transaction_type
FROM fintech_transactions2;

-- 132. Label successful vs failed
SELECT transaction_id,
CASE
WHEN transaction_status='Success' THEN 'Completed'
ELSE 'Not Completed'
END AS status
FROM fintech_transactions2;

-- 133. Categorize transactions as Low, Medium, or High
SELECT transaction_id, amount,
CASE
WHEN amount < 500 THEN 'Low'
WHEN amount BETWEEN 500 AND 2000 THEN 'Medium'
ELSE 'High'
END AS transaction_category
FROM fintech_transactions2;

-- 134. Show transaction status description
SELECT transaction_id,
CASE
WHEN transaction_status = 'Success' THEN 'Completed'
WHEN transaction_status = 'Failed' THEN 'Failed Transaction'
ELSE 'Pending'
END AS status_description
FROM fintech_transactions2;

-- 135. Label transactions based on payment method 
SELECT transaction_id, payment_method,
CASE
WHEN payment_method = 'UPI' THEN 'Digital Payment'
WHEN payment_method = 'Card' THEN 'Card Payment'
ELSE 'Other Payment'
END AS payment_type
FROM fintech_transactions2;

-- 136. Classify transactions by amount level
SELECT transaction_id, amount,
CASE
WHEN amount < 1000 THEN 'Small'
WHEN amount BETWEEN 1000 AND 5000 THEN 'Medium'
ELSE 'Large'
END AS amount_level
FROM fintech_transactions2;

-- 137. Show whether transaction amount is above average
SELECT transaction_id, amount,
CASE
WHEN amount > (SELECT AVG(amount) FROM fintech_transactions)
THEN 'Above Average'
ELSE 'Below Average'
END AS amount_comparison
FROM fintech_transactions2;

-- 138. Identify successful and unsuccessful transactions
SELECT transaction_id,
CASE
WHEN transaction_status = 'Success'
THEN 'Successful'
ELSE 'Unsuccessful'
END AS result
FROM fintech_transactions2;

-- 139. Label transactions as high risk if amount > 5000
SELECT transaction_id, amount,
CASE
WHEN amount > 5000 THEN 'High Risk'
ELSE 'Normal'
END AS risk_level
FROM fintech_transactions2;

-- 140. Categorize cities as Metro or Non-Metro
SELECT transaction_id, city,
CASE
WHEN city IN ('Mumbai','Delhi','Bangalore','Chennai')
THEN 'Metro'
ELSE 'Non-Metro'
END AS city_type
FROM fintech_transactions2;

-- 141. Identify large transactions
SELECT transaction_id, amount,
CASE
WHEN amount > 3000 THEN 'Large Transaction'
ELSE 'Regular Transaction'
END AS transaction_size
FROM fintech_transactions2;

-- 142. Show whether payment is digital or physical
SELECT transaction_id, payment_method,
CASE
WHEN payment_method IN ('UPI','Net Banking','Wallet')
THEN 'Digital'
ELSE 'Physical'
END AS payment_category
FROM fintech_transactions2;

-- 143. Categorize transactions based on merchant category
SELECT transaction_id, merchant_category,
CASE
WHEN merchant_category = 'Electronics' THEN 'Tech Purchase'
WHEN merchant_category = 'Grocery' THEN 'Daily Needs'
ELSE 'Other'
END AS purchase_type
FROM fintech_transactions2;

-- 144. Label transactions as expensive if amount > 4000
SELECT transaction_id, amount,
CASE
WHEN amount > 4000 THEN 'Expensive'
ELSE 'Affordable'
END AS price_category
FROM fintech_transactions2;

--  145. Identify weekend transactions (example logic)
SELECT transaction_id, transaction_date,
CASE
WHEN DAYOFWEEK(transaction_date) IN (1,7)
THEN 'Weekend'
ELSE 'Weekday'
END AS day_type
FROM fintech_transactions2;

-- 146. Mark transactions as micro if amount < 100
SELECT transaction_id, amount,
CASE
WHEN amount < 100 THEN 'Micro Transaction'
ELSE 'Regular'
END AS micro_flag
FROM fintech_transactions2;

-- 147. Categorize transactions into spending levels
SELECT transaction_id, amount,
CASE
WHEN amount < 500 THEN 'Low Spend'
WHEN amount BETWEEN 500 AND 3000 THEN 'Moderate Spend'
ELSE 'High Spend'
END AS spending_level
FROM fintech_transactions2; 

-- 148. Identify failed transactions clearly
SELECT transaction_id, transaction_status,
CASE
WHEN transaction_status = 'Failed'
THEN 'Needs Investigation'
ELSE 'OK'
END AS review_status
FROM fintech_transactions2;

-- 149. Mark big digital transactions
SELECT transaction_id, amount, payment_method,
CASE
WHEN payment_method='UPI' AND amount>3000
THEN 'Big Digital Payment'
ELSE 'Normal Payment'
END AS payment_flag
FROM fintech_transactions2;

-- 150. Categorize city spending
SELECT city, amount,
CASE
WHEN amount > 2000 THEN 'High Spending City Transaction'
ELSE 'Normal Spending'
END AS city_spend_category
FROM fintech_transactions2;

-- 151. Classify user spending behaviour
SELECT user_id, amount,
CASE
WHEN amount > 5000 THEN 'Heavy Spender'
ELSE 'Normal Spender'
END AS user_category
FROM fintech_transactions2;

-- 152. Label transactions with cashback eligibility
SELECT transaction_id, amount,
CASE
WHEN amount > 1000 THEN 'Eligible for Cashback'
ELSE 'Not Eligible'
END AS cashback_status
FROM fintech_transactions2;

-- 153. Mark premium transactions
SELECT transaction_id, amount,
CASE
WHEN amount > 7000 THEN 'Premium Transaction'
ELSE 'Standard Transaction'
END AS premium_flag
FROM fintech_transactions2;

-- 154. Show fraud suspicion for very high transactions
SELECT transaction_id, amount,
CASE
WHEN amount > 10000 THEN 'Possible Fraud'
ELSE 'Normal'
END AS fraud_flag
FROM fintech_transactions2;

-- 155. Categorize transactions by status color code
SELECT transaction_id, transaction_status,
CASE
WHEN transaction_status='Success' THEN 'Green'
WHEN transaction_status='Failed' THEN 'Red'
ELSE 'Yellow'
END AS status_color
FROM fintech_transactions2;

-- 156. Identify popular payment method type
SELECT payment_method,
CASE
WHEN payment_method='UPI' THEN 'Most Popular'
ELSE 'Other'
END AS popularity
FROM fintech_transactions2;

-- 157. Categorize transaction amount brackets
SELECT transaction_id, amount,
CASE
WHEN amount BETWEEN 0 AND 500 THEN '0-500'
WHEN amount BETWEEN 501 AND 2000 THEN '501-2000'
ELSE '2001+'
END AS amount_range
FROM fintech_transactions2;

-- 158. Identify VIP transactions
SELECT transaction_id, amount,
CASE
WHEN amount > 8000 THEN 'VIP Transaction'
ELSE 'Normal'
END AS vip_flag
FROM fintech_transactions2;

-- 159. Mark quick review transactions
SELECT transaction_id, amount,
CASE
WHEN amount > 6000 THEN 'Manual Review Required'
ELSE 'Auto Approved'
END AS review_type
FROM fintech_transactions2;

-- 160. Classify transactions for reporting
SELECT transaction_id, amount,
CASE
WHEN amount < 1000 THEN 'Category A'
WHEN amount BETWEEN 1000 AND 5000 THEN 'Category B'
ELSE 'Category C'
END AS report_category
FROM fintech_transactions2;

-- 161. Rank transactions by amount
SELECT transaction_id, amount,
RANK() OVER(ORDER BY amount DESC) AS rank_no
FROM fintech_transactions2;

-- 162. Row number by amount
SELECT transaction_id, amount,
ROW_NUMBER() OVER(ORDER BY amount DESC)
FROM fintech_transactions2;

-- 163. Dense rank
SELECT transaction_id, amount,
DENSE_RANK() OVER(ORDER BY amount DESC)
FROM fintech_transactions2;

-- 164. Running total
SELECT transaction_id,
SUM(amount) OVER(ORDER BY transaction_id)
FROM fintech_transactions2;

-- 164. Calculate running total of transaction amounts
SELECT transaction_id, amount,
SUM(amount) OVER (ORDER BY transaction_id) AS running_total
FROM fintech_transactions2;

-- 165. Assign row number based on highest transaction amount
SELECT transaction_id, amount,
ROW_NUMBER() OVER (ORDER BY amount DESC) AS row_num
FROM fintech_transactions2;

-- 166. Rank transactions based on amount
SELECT transaction_id, amount,
RANK() OVER (ORDER BY amount DESC) AS transaction_rank
FROM fintech_transactions2;

-- 167. Dense rank transactions by amount
SELECT transaction_id, amount,
DENSE_RANK() OVER (ORDER BY amount DESC) AS dense_ranks
FROM fintech_transactions2;

-- 168. Rank transactions within each city
SELECT transaction_id, city, amount,
RANK() OVER (PARTITION BY city ORDER BY amount DESC) AS city_rank
FROM fintech_transactions2;

-- 169. Row number for transactions within each payment method
SELECT transaction_id, payment_method, amount,
ROW_NUMBER() OVER (PARTITION BY payment_method ORDER BY amount DESC) AS payment_rank
FROM fintech_transactions2;

-- 170. Find cumulative transaction amount per city
SELECT city, transaction_id, amount,
SUM(amount) OVER (PARTITION BY city ORDER BY transaction_id) AS city_running_total
FROM fintech_transactions2;

-- 171. Calculate average transaction amount per city
SELECT transaction_id, city, amount,
AVG(amount) OVER (PARTITION BY city) AS city_avg_amount
FROM fintech_transactions2;

-- 172. Find maximum transaction amount per city
SELECT transaction_id, city, amount,
MAX(amount) OVER (PARTITION BY city) AS max_city_transaction
FROM fintech_transactions2;

-- 173. Find minimum transaction amount per city
SELECT transaction_id, city, amount,
MIN(amount) OVER (PARTITION BY city) AS min_city_transaction
FROM fintech_transactions2;

-- 174. Show total transaction amount per payment method
SELECT transaction_id, payment_method, amount,
SUM(amount) OVER (PARTITION BY payment_method) AS total_payment_amount
FROM fintech_transactions2;

-- 175. Show transaction difference from previous transaction
SELECT transaction_id, amount,
amount - LAG(amount) OVER (ORDER BY transaction_id) AS amount_difference
FROM fintech_transactions2;

-- 176. Show next transaction amount
SELECT transaction_id, amount,
LEAD(amount) OVER (ORDER BY transaction_id) AS next_transaction_amount
FROM fintech_transactions2;

-- 177. Find first transaction amount in each city
SELECT transaction_id, city, amount,
FIRST_VALUE(amount) OVER (PARTITION BY city ORDER BY transaction_id) AS first_city_transaction
FROM fintech_transactions2;

-- 178. Find last transaction amount in each city
SELECT transaction_id, city, amount,
LAST_VALUE(amount) OVER (
PARTITION BY city 
ORDER BY transaction_id
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
) AS last_city_transaction
FROM fintech_transactions2;

-- 179. Find top transaction per city
SELECT *
FROM (
SELECT transaction_id, city, amount,
ROW_NUMBER() OVER (PARTITION BY city ORDER BY amount DESC) AS rank_no
FROM fintech_transactions2
) t
WHERE rank_no = 1;

-- 180. Show transaction percentage contribution 
SELECT transaction_id, amount,
(amount * 100.0 / SUM(amount) OVER()) AS percentage_contribution
FROM fintech_transactions2;

-- 181. Top 5 spending users
SELECT user_id, SUM(amount) AS total_spent
FROM fintech_transactions2
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 5;

-- 182. Most used payment method
SELECT payment_method, COUNT(*) AS usage_count
FROM fintech_transactions2
GROUP BY payment_method
ORDER BY usage_count DESC
LIMIT 1;

-- 183. City with highest transaction amount
SELECT city, SUM(amount) total
FROM fintech_transactions2
GROUP BY city
ORDER BY total DESC
LIMIT 1;

-- 184. Category with highest spending
SELECT merchant_category, SUM(amount)
FROM fintech_transactions2
GROUP BY merchant_category
ORDER BY SUM(amount) DESC
LIMIT 1;

-- 185. Daily transaction count 
SELECT transaction_date, COUNT(*)
FROM fintech_transactions2
GROUP BY transaction_date;

-- 186. Total failed transaction amount
SELECT SUM(amount)
FROM fintech_transactions2
WHERE transaction_status='Failed';

-- 187. Highest transaction in each city
SELECT city, MAX(amount)
FROM fintech_transactions2
GROUP BY city;

-- 188. Users with more than 3 transactions
SELECT user_id, COUNT(*)
FROM fintech_transactions2
GROUP BY user_id
HAVING COUNT(*) > 3;

-- 189. Payment method with highest average
SELECT payment_method, AVG(amount)
FROM fintech_transactions2
GROUP BY payment_method
ORDER BY AVG(amount) DESC;

-- 190. Transaction percentage per city
SELECT city,
COUNT(*)*100/(SELECT COUNT(*) FROM fintech_transactions) AS percentage
FROM fintech_transactions2
GROUP BY city;

-- 191. Find total transactions for each merchant category
SELECT merchant_category, COUNT(*) AS total_transactions
FROM fintech_transactions2
GROUP BY merchant_category;

-- 192. Find the city with the highest number of transactions
SELECT city, COUNT(*) AS transaction_count
FROM fintech_transactions2
GROUP BY city
ORDER BY transaction_count DESC
LIMIT 1;

-- 193. Calculate total transaction amount per day
SELECT transaction_date, SUM(amount) AS daily_total
FROM fintech_transactions2
GROUP BY transaction_date
ORDER BY transaction_date;

-- 194. Find the city with the highest number of failed transactions
SELECT city, COUNT(*) AS failed_transactions
FROM fintech_transactions2
WHERE transaction_status = 'Failed'
GROUP BY city
ORDER BY failed_transactions DESC
LIMIT 1;

-- 195. Find merchant category with highest average transaction amount
SELECT merchant_category, AVG(amount) AS avg_transaction
FROM fintech_transactions2
GROUP BY merchant_category
ORDER BY avg_transaction DESC
LIMIT 1;

-- 196. Calculate success rate of transactions
SELECT 
COUNT(CASE WHEN transaction_status='Success' THEN 1 END)*100.0/COUNT(*) 
AS success_rate_percentage
FROM fintech_transactions2;

-- 197. Find top 10 highest transactions
SELECT *
FROM fintech_transactions2
ORDER BY amount DESC
LIMIT 10;

-- 198. Find top 3 transactions in each city
SELECT *
FROM (
SELECT transaction_id, city, amount,
ROW_NUMBER() OVER (PARTITION BY city ORDER BY amount DESC) AS rank_no
FROM fintech_transactions2
) t
WHERE rank_no <= 3;

-- 199. Find users with highest average transaction amount
SELECT user_id, AVG(amount) AS avg_transaction
FROM fintech_transactions2
GROUP BY user_id
ORDER BY avg_transaction DESC
LIMIT 5;

-- 200. Generate overall transaction summary report
SELECT 
COUNT(*) AS total_transactions,
SUM(amount) AS total_amount,
AVG(amount) AS average_amount,
MAX(amount) AS highest_transaction,
MIN(amount) AS lowest_transaction
FROM fintech_transactions2;