-- emirates_airline_popularity
SELECT month, year, ROUND(JOURNEYS_MILLIONS, 2) AS rounded_journeys_millions FROM `big-query-tutorial-488409.TFL_JOURNEYS.TFL_JOURNEYS`
WHERE JOURNEY_TYPE = 'Emirates Airline' AND JOURNEYS_MILLIONS IS NOT NULL
GROUP BY month, year, ROUND(JOURNEYS_MILLIONS, 2)
ORDER BY rounded_journeys_millions DESC, year 
LIMIT 5;