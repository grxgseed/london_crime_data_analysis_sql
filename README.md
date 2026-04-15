# london_crime_data_analysis_sql
SQL analysis of London borough-level crime data using SQLite, exploring trends, distribution, and key patterns.

# London Crime Data Analysis (SQL)

## Overview

This project analyses borough-level crime data in London using SQL (SQLite).
The dataset was transformed from wide format into a structured table to enable time-based and grouped analysis.

## Objectives

* Understand how crime is distributed across London boroughs
* Identify the most common types of crime
* Analyse trends in crime over time
* Assess the proportion of total crime contributed by each borough

## Approach

* Cleaned and structured the dataset
* Wrote SQL queries to aggregate crime by borough, category, and time
* Used GROUP BY, ORDER BY, and subqueries to extract insights

## Key Insights

* Crime is concentrated in a small number of boroughs
* Certain crime categories dominate overall crime levels
* Crime levels vary over time
* A small number of boroughs contribute a disproportionately large share of total crime

## Tools Used

* SQLite
* DB Browser for SQLite

## Data Source

The dataset used in this project is **"MPS Borough Level Crime (most recent 24 months)"**, obtained from the London Datastore.

* Source: London Datastore
* Data provider: Metropolitan Police Service (MPS)
* The dataset contains borough-level crime counts across different categories and time periods.

## Files

* `analysis.sql` – SQL queries and insights
* `crime_analysis.db` – database file
