# London Public Transport Analysis (TfL Dataset)

## Project Overview
This project explores public transport usage in London using data provided by Transport for London (TfL). London—home to over 8.5 million people and more than 300 spoken languages—relies on an extensive and efficient transport network.

From iconic landmarks like Tower Bridge to its vast Underground system, London’s infrastructure has evolved far beyond its original horse-and-cart roadways. This project analyzes transport trends using SQL queries on a dataset stored in Google BigQuery.

---

## Dataset Description

**Database:** `TFL`  
**Table:** `JOURNEYS`

| Column | Description | Data Type |
|--------|-------------|----------|
| `MONTH` | Month number (1 = January) | INTEGER |
| `YEAR` | Year | INTEGER |
| `DAYS` | Number of days in the month | INTEGER |
| `REPORT_DATE` | Date reported | DATE |
| `JOURNEY_TYPE` | Mode of transport | VARCHAR |
| `JOURNEYS_MILLIONS` | Number of journeys (millions) | FLOAT |

---

## Objectives

Using SQL, this project answers three key questions:

1. What are the most popular transport types?
2. Which years had the lowest Underground (Tube) usage?
3. How popular is the Emirates Airline cable car over time?

---

## SQL Queries & Insights

### 1. Most Popular Transport Types

```sql
-- most_popular_transport_types
SELECT JOURNEY_TYPE, SUM(JOURNEYS_MILLIONS) AS total_journeys_millions 
FROM `big-query-tutorial-488409.TFL_JOURNEYS.TFL_JOURNEYS`
GROUP BY JOURNEY_TYPE
ORDER BY SUM(JOURNEYS_MILLIONS) DESC;

Insight: Identifies which transport methods dominate overall usage in London.

2. Least Popular Years for the Tube
-- least_popular_years_tube
SELECT year, JOURNEY_TYPE, SUM(JOURNEYS_MILLIONS) AS total_journeys_millions
FROM `big-query-tutorial-488409.TFL_JOURNEYS.TFL_JOURNEYS`
WHERE JOURNEY_TYPE = 'Underground & DLR'
GROUP BY year, JOURNEY_TYPE
ORDER BY total_journeys_millions ASC
LIMIT 5;
Insight: Highlights years with the lowest Underground usage, potentially due to major events or disruptions.

3. Emirates Airline Popularity Over Time
-- emirates_airline_popularity
SELECT month, year, ROUND(JOURNEYS_MILLIONS, 2) AS rounded_journeys_millions FROM `big-query-tutorial-488409.TFL_JOURNEYS.TFL_JOURNEYS`
WHERE JOURNEY_TYPE = 'Emirates Airline' AND JOURNEYS_MILLIONS IS NOT NULL
GROUP BY month, year, ROUND(JOURNEYS_MILLIONS, 2)
ORDER BY rounded_journeys_millions DESC, year 
LIMIT 5;
Insight: Tracks usage trends of the Emirates Airline cable car across different months and years.

Key Learnings
Aggregating data using SUM() and GROUP BY
Filtering results with WHERE
Sorting outputs using ORDER BY
Analyzing real-world transport trends with SQL
How to Use
Upload the dataset to Google BigQuery under the dataset name TFL.
Ensure the table is named JOURNEYS (case-sensitive).
Run the provided SQL queries.
Review and interpret the results.
Conclusion

London’s transport system is one of the most complex in the world. By analyzing journey data, this project provides insights into how millions of people travel across the city and how those patterns evolve over time.
