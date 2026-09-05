# 🏦 Bank Customer Churn Analysis — SQL

<p align="center">
  <img src="https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL MySQL">
  <img src="https://img.shields.io/badge/Data%20Analysis-SQL-orange?style=for-the-badge" alt="Data Analysis">
  <img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
</p>

<p align="center">
  <b>Analyzing Bank Customer Churn Using SQL & MySQL</b>
</p>

<p align="center">
  A practical SQL project focused on customer behavior, churn patterns, segmentation, and retention insights.
</p>

---

## 📌 Project Overview

This project focuses on analyzing **bank customer churn using SQL and MySQL**.

The objective is to explore customer characteristics, identify patterns associated with customer churn, analyze high-risk customer segments, and generate data-driven insights that can help a bank improve customer retention.

The project follows a structured approach, starting with **basic data exploration** and gradually progressing toward **advanced SQL analysis and business case studies**.

The dataset contains **10,000 customer records and 14 attributes** covering customer demographics, financial information, banking products, activity status, and churn status.

---

## 🎯 Business Problem

Customer churn is an important challenge for banks because losing existing customers can negatively affect long-term customer relationships and business performance.

This project aims to answer questions such as:

* Why are customers leaving the bank?
* Which customer segments have a higher churn risk?
* Does customer activity affect churn?
* Does geography influence customer churn?
* How does age relate to customer churn?
* Does credit score have an impact on churn?
* How does account balance relate to churn?
* Does the number of banking products affect customer retention?
* Which customers should the bank prioritize for retention campaigns?

---

## 🗂️ Dataset

The project uses a bank customer churn dataset containing customer demographic, financial, and banking-related information.

### 📥 Download Dataset

**[Download Churn_Bank.csv](dataset/Churn_Bank.csv)**

### Dataset Information

| Attribute     | Details          |
| ------------- | ---------------- |
| **File Name** | `Churn_Bank.csv` |
| **Records**   | 10,000 customers |
| **Columns**   | 14               |
| **Format**    | CSV              |
| **Database**  | MySQL            |
| **SQL Table** | `churn_bank`     |

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
* **Total Columns:** 14
* **Geographies:** France, Germany, Spain
* **Male Customers:** 5,457
* **Female Customers:** 4,543
* **Churned Customers:** 2,037
* **Non-Churned Customers:** 7,963

---

## 🛠️ Tools & Technologies

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=flat-square&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/SQL-Analysis-orange?style=flat-square" alt="SQL">
  <img src="https://img.shields.io/badge/GitHub-Version%20Control-181717?style=flat-square&logo=github&logoColor=white" alt="GitHub">
  <img src="https://img.shields.io/badge/CSV-Dataset-lightgrey?style=flat-square" alt="CSV">
</p>

### Primary Tools

* **MySQL** — Database management and SQL execution
* **SQL** — Data exploration and analysis
* **GitHub** — Project version control and documentation
* **CSV** — Source dataset format

---

## 🧠 SQL Concepts Covered

This project progressively covers SQL concepts from beginner to advanced levels.

### Basic SQL

* `SELECT`
* `WHERE`
* `DISTINCT`
* `ORDER BY`
* `LIMIT`

### Aggregation

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `GROUP BY`
* `HAVING`

### Conditional Analysis

* `CASE WHEN`
* Customer segmentation
* Risk categorization
* Business-based filtering

### Advanced SQL

* Subqueries
* Correlated Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `NTILE()`
* `LAG()`

### Business Analysis

* Customer churn analysis
* High-risk customer identification
* Customer segmentation
* Retention analysis
* Business case studies

---

## 📊 Analysis Roadmap

The project is divided into **9 structured sections** containing a total of **160 SQL questions**.

| Section   | Analysis Topic                    | Questions | Status         |
| --------- | --------------------------------- | --------: | -------------- |
| 01        | Basic Data Exploration            |        20 | ✅ Completed    |
| 02        | Filtering & Sorting               |        20 | 🔄 In Progress |
| 03        | Aggregation & GROUP BY            |        25 | ⏳ Upcoming     |
| 04        | HAVING & Business Filters         |        20 | ⏳ Upcoming     |
| 05        | CASE WHEN & Customer Segmentation |        20 | ⏳ Upcoming     |
| 06        | Churn Analysis                    |        20 | ⏳ Upcoming     |
| 07        | Subqueries & CTEs                 |        15 | ⏳ Upcoming     |
| 08        | Window Functions                  |        12 | ⏳ Upcoming     |
| 09        | Interview & Business Case Studies |         8 | ⏳ Upcoming     |
| **Total** |                                   |   **160** |                |

---

## 🔎 Section 01 — Basic Data Exploration

The first section focuses on understanding the structure and basic characteristics of the bank customer dataset.

### Analysis Performed

* Total customer count
* Unique customer count
* Table structure and data types
* Initial data inspection
* Number of different geographies
* Geography-wise customer distribution
* Gender distribution
* Minimum and maximum customer age
* Average customer age
* Minimum and maximum credit score
* Average credit score
* Minimum and maximum customer balance
* Average customer balance
* Minimum and maximum estimated salary
* Average estimated salary
* Number of banking products
* Customers with and without credit cards
* Active and inactive customers

### SQL File

📁 **[View Section 01 — Basic Data Exploration](sql/01_basic_data_exploration.sql)**

---

## 📂 Project Structure

```text
Bank-Customer-Churn-SQL-Analysis/
│
├── README.md
│
├── dataset/
│   └── Churn_Bank.csv
│
└── sql/
    └── 01_basic_data_exploration.sql
```

As the project progresses, additional SQL files will be added for each analysis section.

---

## 💡 Key Business Questions

The complete project will investigate questions such as:

### Customer Profile

* What is the overall customer demographic profile?
* Which geographies have the most customers?
* What is the average age and credit score of customers?

### Customer Behavior

* Are active customers less likely to churn?
* Does the number of products influence customer retention?
* Does credit card ownership have any relationship with churn?

### Financial Characteristics

* Does account balance influence churn?
* Does estimated salary have a relationship with customer churn?
* Are customers with certain credit score ranges more likely to leave?

### Customer Segmentation

* Which age groups are at higher risk?
* Which geographic segments have higher churn?
* Which product-usage segments are more likely to churn?
* Which customer groups should be prioritized for retention?

---

## 📈 Expected Business Insights

The complete analysis will investigate potential relationships between customer churn and:

* Customer age
* Geography
* Gender
* Credit score
* Account balance
* Tenure
* Number of banking products
* Credit card ownership
* Customer activity
* Estimated salary

The final analysis will be used to identify **high-risk customer segments** and potential opportunities for improving customer retention.

---

## 🚀 Project Goals

The main goal of this project is to demonstrate practical SQL and business analysis skills by:

1. Exploring a real-world customer dataset
2. Cleaning and understanding the available data
3. Performing customer-level analysis
4. Identifying churn patterns
5. Segmenting customers based on business conditions
6. Applying intermediate and advanced SQL techniques
7. Solving SQL interview-style problems
8. Converting SQL results into business insights
9. Recommending potential customer retention strategies

---

## 📌 Project Status

### Current Progress

**Sections Completed:** 1 / 9

**SQL Questions Completed:** 20 / 160

**Current Section:** Section 02 — Filtering & Sorting

### Progress

```text
Section 01  ████████████████████  100%
Section 02  ░░░░░░░░░░░░░░░░░░░░   0%
Section 03  ░░░░░░░░░░░░░░░░░░░░   0%
Section 04  ░░░░░░░░░░░░░░░░░░░░   0%
Section 05  ░░░░░░░░░░░░░░░░░░░░   0%
Section 06  ░░░░░░░░░░░░░░░░░░░░   0%
Section 07  ░░░░░░░░░░░░░░░░░░░░   0%
Section 08  ░░░░░░░░░░░░░░░░░░░░   0%
Section 09  ░░░░░░░░░░░░░░░░░░░░   0%
```

---

## 📚 Learning Approach

This project is designed as a **progressive SQL learning and portfolio project**.

The analysis starts with basic SQL queries and gradually moves toward:

**Basic SQL → Filtering → Aggregation → Business Analysis → Segmentation → Churn Analysis → Subqueries → CTEs → Window Functions → Case Studies**

This approach helps demonstrate both **technical SQL skills** and the ability to apply SQL to real-world business problems.

---

## 🎯 Final Outcome

By the end of this project, the repository will contain a complete collection of SQL analyses covering:

* Data exploration
* Customer profiling
* Customer segmentation
* Churn analysis
* High-risk customer identification
* Advanced SQL techniques
* Interview-style SQL problems
* Business case studies
* Data-driven retention recommendations

---

## 👨‍💻 Author

### Shubham Raj

**B.Tech — Computer Science & Engineering (AI & Data Science)**

Aspiring **Data Analyst | Data Engineer**

---

<p align="center">
  ⭐ <b>If you find this project useful, consider giving it a star!</b>
</p>

<p align="center">
  Built with ❤️ using SQL & MySQL
</p>
