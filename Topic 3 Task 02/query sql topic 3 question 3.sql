WITH community_stats AS (
  SELECT
    ce.Conservation_ID,
    mc.Location,
    COUNT(DISTINCT cm.Member_ID) AS Total_Community_Members,
    SUM(ce.Participants) AS Total_Participants,
    SUM(ce.Participants)*100.0 / NULLIF(COUNT(DISTINCT cm.Member_ID), 0) AS Participation_Percentage
  FROM
    community_engagement ce
  JOIN
    mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
  CROSS JOIN
    community_members cm
  GROUP BY
    ce.Conservation_ID, mc.Location
)
SELECT
  Conservation_ID,
  Location,
  Total_Community_Members,
  Total_Participants,
  Participation_Percentage,
  RANK() OVER (ORDER BY Participation_Percentage DESC) AS Participation_Rank
FROM
  community_stats
ORDER BY
  Participation_Percentage DESC;