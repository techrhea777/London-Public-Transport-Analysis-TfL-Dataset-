# London Public Transport Analysis (TfL Dataset)

## Project Overview
This project explores public transport usage in London using data from Transport for London (TfL). As one of the world’s largest and most diverse cities—with over 8.5 million residents and hundreds of languages spoken—London depends heavily on its extensive transport network.

From the Underground to newer systems like the Emirates Airline cable car, the city’s infrastructure plays a critical role in daily life. This project uses SQL to analyze transport trends and identify patterns in how people move across London over time.

## Dataset

The data is stored in a BigQuery database.

**Database:** `TFL`  
**Table:** `JOURNEYS`

### Columns

- `MONTH` – Month number (1 = January)  
- `YEAR` – Year  
- `DAYS` – Number of days in the month  
- `REPORT_DATE` – Date reported  
- `JOURNEY_TYPE` – Mode of transport  
- `JOURNEYS_MILLIONS` – Number of journeys (in millions)  

## Skills Practiced
This project focuses on essential SQL skills, including:
- Aggregating data using functions like `SUM()`
- Grouping data with `GROUP BY`
- Filtering rows using `WHERE`
- Sorting results with `ORDER BY`
- Analyzing time-based trends
- Working with real-world datasets

## Project Tasks

### 1. Most popular transport types
Determine which transport methods are used the most overall.

Requirements:
- Use the `JOURNEYS` table
- Calculate total journeys for each `JOURNEY_TYPE`
- Return:
  - `JOURNEY_TYPE`
  - total journeys
- Sort results in descending order of total journeys
- Save the output as `most_popular_transport_types`

### 2. Least popular years for Underground & DLR
Identify the years with the lowest total usage of the Underground & DLR.

Requirements:
- Filter for `JOURNEY_TYPE = 'Underground & DLR'`
- Aggregate total journeys by year
- Return:
  - `year`
  - `JOURNEY_TYPE`
  - total journeys
- Sort results in ascending order
- Limit to the lowest 5 years
- Save the output as `least_popular_years_tube`

### 3. Most popular months for Emirates Airline
Find the months and years when the Emirates Airline had the highest usage.

Requirements:
- Filter for `JOURNEY_TYPE = 'Emirates Airline'`
- Exclude missing journey values
- Return:
  - `month`
  - `year`
  - journey volume (rounded to 2 decimal places)
- Sort by journey volume (highest first), then by year
- Limit to the top 5 results
- Save the output as `emirates_airline_popularity`

## Important Instructions
- Use the exact output names:
  - `most_popular_transport_types`
  - `least_popular_years_tube`
  - `emirates_airline_popularity`
- Do not rename outputs accidentally by creating extra cells
- Ensure results follow sorting and filtering requirements exactly

## Goal
The aim of this project is to better understand how London’s public transport system is used over time. By analyzing journey volumes across different transport types and time periods, you can uncover patterns in commuter behavior and identify trends in urban mobility.
