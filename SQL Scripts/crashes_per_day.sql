SELECT c.Date, d.Year, SUM(c.Crashes) AS Total_Crashes
FROM crash_table c
INNER JOIN date_table d ON c.Date = d.Date
GROUP BY c.Date, d.Year;