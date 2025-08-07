-- Active: 1753523836938@@127.0.0.1@5432@postgres
SELECT
  c.Location,
  bdc.Data_Type,
  COUNT(*) AS jumlah_data,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY c.Location), 1) AS persentase
FROM
  mangrove_conservation_records c
JOIN
  blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
GROUP BY
  c.Location, bdc.Data_Type
ORDER BY
  c.Location, jumlah_data DESC;