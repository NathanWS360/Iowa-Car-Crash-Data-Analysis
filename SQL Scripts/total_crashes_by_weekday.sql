SELECT d.Day_of_Week, SUM(c.Crashes) AS Total_Crashes
FROM crash_table c
INNER JOIN date_table d ON c.Date = d.Date
GROUP BY d.Day_of_Week
ORDER BY Total_Crashes DESC;