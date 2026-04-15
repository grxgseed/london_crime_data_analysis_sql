-- Data Preview
-- Question: What does the dataset look like after transformation?

SELECT *
FROM crime_data
LIMIT 10;

-- Insight: The dataset is structured with crime categories, boroughs, months, 
-- and corresponding crime counts, enabling time-based and grouped analysis.


-- Total Crime Volume
-- Question: What is the total recorded crime across all boroughs and months?

SELECT SUM(crime_count) AS total_crimes
FROM crime_data;

-- Insight: The dataset contains a substantial volume of recorded crime, 
-- highlighting the scale of criminal activity across London.


-- Crime by Borough
-- Question: Which boroughs have the highest total crime levels?

SELECT borough, SUM(crime_count) AS total_crimes
FROM crime_data
GROUP BY borough
ORDER BY total_crimes DESC;

-- Insight: Crime is concentrated in a small number of boroughs, 
-- with a clear ranking of high-crime areas compared to others.


-- Crime by Category
-- Question: Which main crime categories are most common?

SELECT crime_main, SUM(crime_count) AS total_crimes
FROM crime_data
GROUP BY crime_main
ORDER BY total_crimes DESC;

-- Insight: Certain crime categories dominate overall crime levels, 
-- indicating that specific types of offences contribute most to total incidents.


-- Crime Trends Over Time
-- Question: How does total crime change over time?

SELECT month, SUM(crime_count) AS total_crimes
FROM crime_data
GROUP BY month
ORDER BY month;

-- Insight: Crime levels vary over time, suggesting potential seasonal patterns 
-- or external factors influencing crime rates.


-- Percentage Contribution by Borough 
-- Question: What proportion of total crime does each borough account for?

SELECT 
    borough,
    SUM(crime_count) AS total_crimes,
    ROUND(100.0 * SUM(crime_count) / 
        (SELECT SUM(crime_count) FROM crime_data), 2) AS percentage
FROM crime_data
GROUP BY borough
ORDER BY total_crimes DESC;

-- Insight: A small number of boroughs account for a disproportionately large 
-- share of total crime, indicating unequal distribution across London.