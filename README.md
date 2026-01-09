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
graph LR```
    A[Raw CSV] -->|Extract & Transform| B(Python ETL Engine)
    B -->|Load| C{SQLite Data Warehouse}
    C -->|SQL Window Functions| D[Analytics Layer]
    C -->|Low-Code Workflow| E[KNIME Dashboard]
    D -->|Reporting| F[Business Insights]
