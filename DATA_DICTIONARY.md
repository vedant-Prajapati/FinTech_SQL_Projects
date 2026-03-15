# FinTech Transactions Dataset – Data Dictionary

This document explains the structure of the FinTech transaction dataset used in this project.

---

# 📊 Table Name

`fintech_transactions`

This table stores digital payment transactions performed by users.

---

# 📑 Column Definitions

| Column Name        | Data Type | Description                              |
| ------------------ | --------- | ---------------------------------------- |
| transaction_id     | INT       | Unique identifier for each transaction   |
| user_id            | INT       | Unique identifier for the customer       |
| transaction_date   | DATE      | Date when the transaction occurred       |
| amount             | DECIMAL   | Transaction amount                       |
| city               | VARCHAR   | City where the transaction occurred      |
| payment_method     | VARCHAR   | Payment method used for transaction      |
| merchant_category  | VARCHAR   | Type of merchant involved                |
| transaction_status | VARCHAR   | Status of transaction (Success / Failed) |

---

# 💳 Payment Methods

Typical payment methods used in the dataset:

* UPI
* Credit Card
* Debit Card
* Net Banking
* Wallet

---

# 🏪 Merchant Categories

Example merchant categories in the dataset:

* Electronics
* Grocery
* Fashion
* Travel
* Food
* Entertainment
* Health

---

# 🌍 Cities Included

Example cities included in the dataset:

* Delhi
* Mumbai
* Pune
* Bangalore
* Hyderabad
* Chennai
* Kolkata

---

# 📈 Example Record

| transaction_id | user_id | transaction_date | amount | city | payment_method | merchant_category | transaction_status |
| -------------- | ------- | ---------------- | ------ | ---- | -------------- | ----------------- | ------------------ |
| 1001           | 205     | 2024-02-22       | 1200   | Pune | UPI            | Electronics       | Success            |

---

# 🎯 Dataset Usage

This dataset is used to practice:

* SQL querying
* Financial transaction analysis
* Data aggregation
* Customer behavior analysis

---

# ⚠️ Note

This dataset is **synthetic (generated for educational purposes)** and does not represent real financial transaction data.
