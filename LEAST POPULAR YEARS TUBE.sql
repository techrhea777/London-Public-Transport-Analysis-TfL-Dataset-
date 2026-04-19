-- least_popular_years_tube
SELECT year, JOURNEY_TYPE, SUM(JOURNEYS_MILLIONS) AS total_journeys_millions
FROM `big-query-tutorial-488409.TFL_JOURNEYS.TFL_JOURNEYS`
WHERE JOURNEY_TYPE = 'Underground & DLR'
GROUP BY year, JOURNEY_TYPE
ORDER BY total_journeys_millions ASC
LIMIT 5;