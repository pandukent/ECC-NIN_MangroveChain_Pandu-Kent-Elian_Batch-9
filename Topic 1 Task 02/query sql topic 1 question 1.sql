-- Active: 1753523836938@@127.0.0.1@5432@postgres
SELECT
  rp.Permit_Status AS "Status Izin",
  AVG(bm.Tree_Density) AS "Rata-Rata Kerapatan Pohon",
  AVG(
    CASE
      WHEN bm.Water_Quality = 'Good' THEN 3
      WHEN bm.Water_Quality = 'Moderate' THEN 2
      WHEN bm.Water_Quality = 'Poor' THEN 1
      ELSE 0
    END
  ) AS "Skor Rata-Rata Kualitas Air",
  COUNT(*) AS "Jumlah Proyek"
FROM
  regulatory_permits AS rp
INNER JOIN
  biodiversity_monitoring AS bm ON rp.Conservation_ID = bm.Conservation_ID
GROUP BY
  rp.Permit_Status
ORDER BY
  "Rata-Rata Kerapatan Pohon" DESC;
