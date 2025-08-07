-- Active: 1753523836938@@127.0.0.1@5432@postgres
WITH risk_scores AS (
  SELECT
    c.Conservation_ID,
    c.Location,
    (CASE WHEN rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No' THEN 30 ELSE 0 END +
     CASE WHEN lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted' THEN 40 ELSE 0 END +
     CASE WHEN bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration' THEN 30 ELSE 0 END) AS total_risiko
  FROM mangrove_conservation_records c
  JOIN regulatory_permits rp ON c.Conservation_ID = rp.Conservation_ID
  JOIN land_tenure_records lt ON c.Conservation_ID = lt.Conservation_ID
  JOIN blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
  JOIN biodiversity_monitoring bm ON c.Conservation_ID = bm.Conservation_ID
  LEFT JOIN conservation_activites ca ON c.Conservation_ID = ca.Conservation_ID
)
SELECT
  Conservation_ID,
  Location,
  total_risiko,
  CASE
    WHEN total_risiko >= 60 THEN 'Tinggi'
    WHEN total_risiko >= 30 THEN 'Sedang'
    ELSE 'Rendah'
  END AS kategori_risiko
FROM risk_scores
ORDER BY total_risiko DESC;