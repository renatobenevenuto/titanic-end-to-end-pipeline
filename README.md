# titanic-end-to-end-pipeline
Pipeline de Engenharia de Dados e Analytics usando Python, SQL e KNIME

# 🚢 Titanic End-to-End Data Pipeline

![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![SQLite](https://img.shields.io/badge/SQLite-Data_Warehouse-003B57)
![KNIME](https://img.shields.io/badge/Tool-KNIME_Analytics-yellow)
![Status](https://img.shields.io/badge/Status-Completed-success)

## 📋 Executive Summary
This project simulates a real-world **Corporate Data Pipeline**. 
Instead of just training a model, I built a complete flow: **ETL (Python) -> Data Warehouse (SQLite) -> Analytics (SQL/KNIME)**.

## 🏗️ Architecture
The project follows a "Bronze to Gold" layer architecture:

1.  **Extract & Transform (Python):** * Cleaning raw CSV data.
    * Imputing missing ages based on social titles.
    * Feature Engineering (`IsMarried`, `FamilySize`).
2.  **Load (SQLite):** * Centralizing data in a `project_db.sqlite` Data Warehouse.
3.  **Analytics (SQL & KNIME):** * Window Functions for price analysis.
    * Automated dashboarding for business reporting.

---

## 📊 Key Business Insights

1.  **The "Marriage" Factor:**
    * Married women (`Mrs`) had a **79% survival rate**, compared to 71% for single women (`Miss`).
2.  **Survival by "Clan":**
    * Large families in 3rd class had near 0% survival rate due to evacuation difficulties.
3.  **Fare Anomalies:**
    * Passengers paying >1.5x the class average had priority access to lifeboats.

## 📂 Repository Structure

* `notebooks/`: Python ETL Code (Jupyter/Colab).
* `data/`: Raw and Processed data (SQLite).
* `sql_queries/`: SQL scripts for Analysis.
* `knime_workflow/`: Low-code analytics files.

## 🚀 How to Run
1.  Open `notebooks/01_etl_pipeline.ipynb` to generate the database.
2.  Use a SQLite client to run queries from `sql_queries/`.
3.  Import `knime_workflow/` into KNIME to view the dashboard.

---
*Author: Renato Benevenuto*
