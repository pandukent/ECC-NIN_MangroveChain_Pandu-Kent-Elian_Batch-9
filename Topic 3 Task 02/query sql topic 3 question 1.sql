-- Active: 1753523836938@@127.0.0.1@5432@postgres
SELECT
  ce.Conservation_ID,
  mc.Location,
  ce.Activity_Type,
  COUNT(*) AS Frequency,
  AVG(ce.Participants) AS Avg_Participants,
  SUM(ce.Benefit_Distributed) AS Total_Benefit
FROM
  community_engagement ce
JOIN
  mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
GROUP BY
  ce.Conservation_ID, mc.Location, ce.Activity_Type
ORDER BY
  ce.Conservation_ID, Frequency DESC;