# SQL Query Index

This document provides a structured index of SQL queries included in the project.

The queries are organized from **basic to advanced SQL concepts**.

---

# 1️⃣ Basic Queries (1–20)

These queries focus on retrieving data and simple filtering.

Examples:

* Display all transactions
* Select specific columns
* Filter by city
* Filter by payment method
* Filter by transaction amount

Example:

```sql
SELECT *
FROM fintech_transactions2
WHERE city = 'Delhi';
```

---

# 2️⃣ Sorting Queries (21–30)

These queries organize data using sorting techniques.

Concepts covered:

* ORDER BY
* Ascending sorting
* Descending sorting
* Sorting by multiple columns
* Limiting results

Example:

```sql
SELECT *
FROM fintech_transactions2
ORDER BY amount DESC;
```

---

# 3️⃣ Aggregate Function Queries (31–50)

These queries perform numerical analysis on transaction data.

Functions used:

* SUM()
* AVG()
* MAX()
* MIN()
* COUNT()

Example:

```sql
SELECT AVG(amount)
FROM fintech_transactions2;
```

---

# 4️⃣ GROUP BY Queries (36–50)

These queries group data for analytical insights.

Analysis examples:

* Transactions per city
* Spending per user
* Revenue per merchant category
* Payment method usage

Example:

```sql
SELECT city, SUM(amount)
FROM fintech_transactions2
GROUP BY city;
```

---

# 5️⃣ HAVING Clause Queries (51–70)

These queries filter grouped results.

Examples:

* Cities with more than 10 transactions
* Users spending more than ₹5000
* Categories with high average transaction values

Example:

```sql
SELECT user_id, SUM(amount)
FROM fintech_transactions2
GROUP BY user_id
HAVING SUM(amount) > 5000;
```

---

# 6️⃣ Pattern Matching Queries (71–100)

These queries use the `LIKE` operator.

Examples:

* Cities starting with 'D'
* Payment methods containing specific letters
* Merchant categories ending with certain characters

Example:

```sql
SELECT *
FROM fintech_transactions2
WHERE city LIKE 'D%';
```

---

# 7️⃣ Subquery Based Queries (101+)

Advanced queries that compare values with aggregated results.

Examples:

* Transactions greater than average
* Users with highest transactions
* Transactions equal to maximum value

Example:

```sql
SELECT *
FROM fintech_transactions2
WHERE amount > (
    SELECT AVG(amount)
    FROM fintech_transactions2
);
```

---

# 🎯 Purpose of SQL Queries

These queries help practice:

* SQL data exploration
* Financial data analytics
* Business intelligence queries
* Real-world FinTech analysis scenarios

---

# 🚀 Learning Outcome

By working through these queries, users will learn:

* Practical SQL skills
* Financial transaction analysis
* Data aggregation techniques
* Advanced SQL querying

---

⭐ This repository is designed to help learners master SQL through real-world financial data examples.
