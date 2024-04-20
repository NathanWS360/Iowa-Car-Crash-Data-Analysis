SELECT p.Year, SUM(c.Crashes) AS Total_Crashes, p.Population AS Population,
	(SUM(c.Crashes) / p.Population) AS Crash_Rate
FROM crash_table c
INNER JOIN date_table d ON c.Date = d.Date
INNER JOIN population_table p ON d.Year = p.Year
WHERE p.Year != 2024
GROUP BY p.Year, p.Population;