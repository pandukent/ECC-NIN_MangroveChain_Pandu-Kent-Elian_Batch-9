WITH activity_stats AS (
  SELECT
    ce.Conservation_ID,
    mc.Location,
    mc.Carbon_Credits,
    COUNT(ce.Engage_ID) AS Activity_Count,
    AVG(ce.Participants) AS Avg_Participants,
    SUM(ce.Benefit_Distributed) AS Total_Benefit,
    AVG(mc.Date_Recorded - ce.Engagement_Date) AS Avg_Days_Between_Activity_And_Record
  FROM
    community_engagement ce
  JOIN
    mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
  GROUP BY
    ce.Conservation_ID, mc.Location, mc.Carbon_Credits
)
SELECT
  Conservation_ID,
  Location,
  Carbon_Credits,
  Activity_Count,
  Avg_Participants,
  Total_Benefit,
  Avg_Days_Between_Activity_And_Record,
  CORR(Activity_Count, Carbon_Credits) OVER () AS Correlation_Activity_Carbon
FROM
  activity_stats
ORDER BY
  Carbon_Credits DESC;