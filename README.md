# Healthcare-SQL-KPI-Analysis

## Project Overview

This project analyzes hospital financial and operational KPIs using SQL. The objective is to identify high-cost treatments, insurance spending patterns, patient hospitalization trends, department-level revenue performance, and city-based healthcare revenue contribution.

---

## Dataset Overview

The dataset contains:
- patient information
- hospital departments
- diagnosis categories
- admission/discharge dates
- billing amounts
- insurance providers
- payment methods
- city information

---
## Business Questions Analyzed

1. Which patients generated above-average hospital costs?
2. How do insured and non-insured patient expenses differ?
3. Which patients had the longest hospital stay?
4. Which departments generate the highest revenue?
5. Which cities contribute the most healthcare revenue?

---

## Query 1 — High-Risk Billing Patients

```sql
SELECT
    patient_name,
    diagnosis,
    bill_amount
FROM hospital_kpi
);
#Insight

Identified high-cost patient cases contributing significantly to healthcare spending.

##Query 2 — Insurance vs Non-Insurance Comparison
SELECT
    CASE
        WHEN insurance_provider = 'None' THEN 'Non-Insured'
        ELSE 'Insured'
    END AS insurance_status,

    ROUND(AVG(bill_amount),2) AS avg_bill_amount

FROM hospital_kpi

GROUP BY insurance_status

ORDER BY avg_bill_amount DESC;

#Insight

Compared treatment spending patterns between insured and non-insured patients.


##Query 3 — Longest Hospital Stay Analysis
SELECT
    patient_name,
    department,
    (discharge_date - admission_date) AS LOS
FROM hospital_kpi
ORDER BY LOS DESC;

#Insight

Analyzed extended hospitalization periods associated with higher operational resource utilization.

##Query 4 — Department Revenue Classification
SELECT
    department,
    SUM(bill_amount) AS total_revenue,
    CASE
        WHEN SUM(bill_amount) >= 200000 THEN 'High Revenue'
        WHEN SUM(bill_amount) >= 100000 THEN 'Medium Revenue'
        ELSE 'Low Revenue'
    END AS revenue_category
FROM hospital_kpi
GROUP BY department
ORDER BY total_revenue DESC;

##Insight

Classified hospital departments based on financial performance and revenue contribution.

##Query 5 — City-Based Revenue Analysis
SELECT
    city,
    SUM(bill_amount) AS total_amount
FROM hospital_kpi
GROUP BY city
ORDER BY total_amount DESC;

#Insight

Identified cities contributing the highest healthcare revenue.


##Key Findings
Cardiology and Neurology generated strong revenue performance.
Insured patients showed higher average treatment spending.
Longer hospitalization periods increased operational resource utilization.
Karachi contributed the highest healthcare revenue.

##Business Recommendations
Improve monitoring of high-cost treatment cases.
Optimize budgeting for high-revenue departments.
Strengthen insurance partnership planning.
Improve discharge planning for long hospital stays.
Expand healthcare services in high-revenue regions.


#Tools Used
PostgreSQL
SQL
Healthcare KPI Analysis

#healthcare-sql-kpi-analysis/
│
├── README.md
├── dataset.sql
├── queries.sql
└── screenshots/






























































































WHERE bill_amount > (
## SQL Skills Used
