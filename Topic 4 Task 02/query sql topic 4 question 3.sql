-- Active: 1753523836938@@127.0.0.1@5432@postgres
WITH risk_categories AS (
  SELECT
    CASE
      WHEN total_risiko >= 60 THEN 'Tinggi'
      WHEN total_risiko >= 30 THEN 'Sedang'
      ELSE 'Rendah'
    END AS kategori_risiko
  FROM (
    -- Subquery perhitungan skor risiko
    SELECT (CASE WHEN rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No' THEN 30 ELSE 0 END +
     CASE WHEN lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted' THEN 40 ELSE 0 END +
     CASE WHEN bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration' THEN 30 ELSE 0 END) AS total_risiko
    FROM mangrove_conservation_records c
    JOIN regulatory_permits rp ON c.Conservation_ID = rp.Conservation_ID
    JOIN land_tenure_records lt ON c.Conservation_ID = lt.Conservation_ID
    JOIN blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
    JOIN biodiversity_monitoring bm ON c.Conservation_ID = bm.Conservation_ID
    LEFT JOIN conservation_activites ca ON c.Conservation_ID = ca.Conservation_ID
  ) t
)
SELECT
  kategori_risiko,
  COUNT(*) AS jumlah_proyek,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 1) AS persentase
FROM risk_categories
GROUP BY kategori_risiko
ORDER BY CASE kategori_risiko
    WHEN 'Tinggi' THEN 1
    WHEN 'Sedang' THEN 2
    ELSE 3
  END;