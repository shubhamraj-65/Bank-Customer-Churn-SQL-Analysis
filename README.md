# 🏦 Bank Customer Churn Analysis — SQL

<p align="center">
  <img src="https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL MySQL">
  <img src="https://img.shields.io/badge/Data%20Analysis-SQL-orange?style=for-the-badge" alt="Data Analysis">
  <img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
</p>

<p align="center">
  <b>Customer Churn Analysis using SQL & MySQL</b>
</p>

---

## 📌 Project Overview

This project focuses on analyzing **customer churn in the banking sector using SQL and MySQL**.

The main objective is to explore customer profiles, identify patterns associated with churn, analyze high-risk customer segments, and generate data-driven insights that can help improve customer retention.

The dataset contains **10,000 customer records and 14 attributes** covering customer demographics, financial information, banking products, activity status, and churn status.

---

## 🎯 Business Problem

Customer churn is an important challenge for banks because losing existing customers can negatively impact revenue and long-term customer relationships.

This project aims to answer key business questions such as:

* Why are customers leaving the bank?
* Which customer segments have a higher churn risk?
* Does customer activity affect churn?
* Does geography influence customer churn?
* How do credit score, age, balance, salary, and number of products relate to churn?
* Which customers should the bank prioritize for retention campaigns?

---

## 🗂️ Dataset

The dataset contains customer-level banking information.

### Key Columns

| Column            | Description                              |
| ----------------- | ---------------------------------------- |
| `CustomerId`      | Unique customer identifier               |
| `Surname`         | Customer surname                         |
| `CreditScore`     | Customer credit score                    |
| `Geography`       | Customer geography                       |
| `Gender`          | Customer gender                          |
| `Age`             | Customer age                             |
| `Tenure`          | Number of years with the bank            |
| `Balance`         | Customer account balance                 |
| `NumOfProducts`   | Number of banking products used          |
| `HasCrCard`       | Whether the customer has a credit card   |
| `IsActiveMember`  | Whether the customer is an active member |
| `EstimatedSalary` | Estimated customer salary                |
| `Exited`          | Customer churn status                    |

### Dataset Statistics

* **Total Customers:** 10,000
* **Columns:** 14
* **Geographies:** France, Germany, Spain
* **Churned Customers:** 2,037
* **Non-Churned Customers:** 7,963

---

## 🛠️ Tools & Technologies

<p>
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=flat-square&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/SQL-Analysis-orange?style=flat-square" alt="SQL">
  <img src="https://img.shields.io/badge/GitHub-Version%20Control-181717?style=flat-square&logo=github&logoColor=white" alt="GitHub">
</p>

---

## 🧠 SQL Concepts Covered

This project progressively covers SQL concepts from basic to advanced levels:

* `SELECT`
* `WHERE`
* `DISTINCT`
* `ORDER BY`
* `LIMIT`
* Aggregate Functions
* `GROUP BY`
* `HAVING`
* `CASE WHEN`
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* `RANK()`
* `DENSE_RANK()`
* `ROW_NUMBER()`
* `NTILE()`
* `LAG()`
* Customer Segmentation
* Churn Analysis
* Business Case Studies

---

## 📊 Analysis Progress

| Section | Analysis Topic                    | Status         |
| ------- | --------------------------------- | -------------- |
| 01      | Basic Data Exploration            | ✅ Completed    |
| 02      | Filtering & Sorting               | 🔄 In Progress |
| 03      | Aggregation & GROUP BY            | ⏳ Upcoming     |
| 04      | HAVING & Business Filters         | ⏳ Upcoming     |
| 05      | CASE WHEN & Customer Segmentation | ⏳ Upcoming     |
| 06      | Churn Analysis                    | ⏳ Upcoming     |
| 07      | Subqueries & CTEs                 | ⏳ Upcoming     |
| 08      | Window Functions                  | ⏳ Upcoming     |
| 09      | Business Case Studies             | ⏳ Upcoming     |

---

## 🔎 Section 01 — Basic Data Exploration

The first section contains **20 SQL queries** focused on understanding the structure and basic characteristics of the dataset.

### Analysis Performed

* Total customer count
* Unique customer count
* Table structure and data types
* Initial data inspection
* Geography distribution
* Gender distribution
* Minimum and maximum age
* Average customer age
* Credit score analysis
* Balance analysis
* Estimated salary analysis
* Number of products analysis
* Credit card ownership
* Active vs inactive customer analysis

### SQL File

📁 [`01_basic_data_exploration.sql`](sql/01_basic_data_exploration.sql)

---

## 📁 Project Structure

```text
Bank-Customer-Churn-SQL-Analysis/
│
├── README.md
│
└── sql/
    └── 01_basic_data_exploration.sql
```

As the analysis progresses, additional SQL files will be added for each section.

---

## 💡 Expected Business Insights

The complete analysis will investigate factors such as:

* Customer activity and churn
* Geographic differences in churn
* Product usage and churn
* Customer age and churn
* Credit score and churn
* Balance and churn
* Salary and churn
* High-risk customer segments
* Potential customer retention opportunities

---

## 🚀 Project Goal

The final goal is to build a **complete SQL-based banking customer churn analysis** that moves beyond simple querying and demonstrates the ability to:

1. Explore a real-world dataset
2. Analyze customer behavior
3. Identify churn patterns
4. Segment customers based on risk
5. Apply advanced SQL techniques
6. Translate SQL results into business insights
7. Recommend potential customer retention strategies

---

## 📈 Project Status

**Current Progress:** Section 1 of 9 completed

**SQL Questions Completed:** 20 / 160

**Next:** Filtering & Sorting

---

## 👨‍💻 Author

**Shubham Raj**

B.Tech — Computer Science & Engineering (AI & Data Science)

Aspiring **Data Analyst | Data Engineer**

---

<p align="center">
  ⭐ If you find this project useful, consider giving it a star!
</p>
