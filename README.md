# titanic-end-to-end-pipeline
Pipeline de Engenharia de Dados e Analytics usando Python, SQL e KNIME

# 🚢 Titanic End-to-End Data Pipeline

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-Data_Warehouse-003B57?logo=sqlite&logoColor=white)
![SQL](https://img.shields.io/badge/Skill-Window_Functions-orange)
![KNIME](https://img.shields.io/badge/Tool-KNIME_Analytics-yellow)
![Status](https://img.shields.io/badge/Status-Completed-success)

## 📋 Executive Summary
This project goes beyond the standard Titanic competition analysis. Instead of just training a model, I simulated a real-world **Corporate Data Pipeline**. 

The goal was to demonstrate **Data Engineering** and **Analytics Engineering** capabilities by taking raw data, processing it through an ETL pipeline using Python, storing it in a centralized Data Warehouse (SQLite), and creating Business Intelligence layers using SQL and KNIME.

## 🏗️ Architecture & Workflow

The pipeline follows a "Bronze to Gold" layer architecture pattern:

```mermaid
graph LR
    A[Raw CSV] -->|Extract & Transform| B(Python ETL Engine)
    B -->|Load| C{SQLite Data Warehouse}
    C -->|SQL Window Functions| D[Analytics Layer]
    C -->|Low-Code Workflow| E[KNIME Dashboard]
    D -->|Reporting| F[Business Insights]

1. The ETL Engine (Python & Pandas)
Located in notebooks/01_etl_pipeline.ipynb.

Data Cleaning: Handled missing values using statistical imputation based on social titles (e.g., using the median age of "Masters" for boys instead of the global mean).

Complex Regex: Extracted social titles and cleaned formatted names (e.g., removing parentheses from married women's names).

Feature Engineering: Created logic-based features such as IsMarried and FamilySize to uncover social patterns.

2. The Data Warehouse (SQLite)
Instead of flat files, the project centralizes data in a relational database (project_db.sqlite), simulating an Enterprise Data Warehouse.

Raw Layer: Where original data lands.

Refined Layer: Cleaned data ready for modeling.

Gold Layer: Aggregated tables optimized for BI tools (Power BI/Tableau).

3. Analytics & Reporting (SQL & KNIME)
Advanced SQL: Utilized Window Functions and CTEs to analyze fare prices relative to class averages, identifying passengers who paid premium rates within their own segments.

KNIME Workflow: Built a visual workflow to audit data quality and automate the generation of daily management reports (xlsx).

📊 Key Business Insights
By querying the Data Warehouse, we discovered patterns often missed in simple correlations:

The "Marriage" Factor:

We isolated married women using title extraction (Mrs).

Result: Married women had a 79% survival rate, compared to 71% for single women (Miss).

Survival by "Clan" (Surname Analysis):

Grouped passengers by extracted surnames.

Result: Large families in 3rd class (e.g., Sage family, 7 members) had a near 0% survival rate, indicating that trying to stay together was fatal during the evacuation.

Fare Anomalies:

Using SQL Window Functions, we identified passengers paying >1.5x the average of their class. These individuals had priority access to lifeboats regardless of age.


titanic-end-to-end-pipeline/
├── assets/                  # Project diagrams and snapshots
├── data/
│   ├── raw/                 # Original Titanic CSV
│   └── processed/           # Refined CSV and SQLite Database
├── knime_workflow/          # KNIME .knwf analytics files
├── notebooks/               # Python ETL Code (Jupyter/Colab)
├── sql_queries/             # SQL scripts for Analysis and Dashboarding
└── README.md                # Project Documentation
