-- Active: 1753523836938@@127.0.0.1@5432@postgres
SELECT
  ce.Conservation_ID,
  mc.Location,
  SUM(ce.Benefit_Distributed) AS Total_Benefit,
  AVG(ce.Benefit_Distributed) AS Avg_Benefit_Per_Activity,
  SUM(ce.Participants) AS Total_Participants,
  SUM(ce.Benefit_Distributed) / NULLIF(SUM(ce.Participants), 0) AS Benefit_Per_Participant
FROM
  community_engagement ce
JOIN
  mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
GROUP BY
  ce.Conservation_ID, mc.Location
ORDER BY
  Benefit_Per_Participant DESC;