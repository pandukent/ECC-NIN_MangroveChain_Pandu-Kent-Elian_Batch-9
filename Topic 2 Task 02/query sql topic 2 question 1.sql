-- Active: 1753523836938@@127.0.0.1@5432@postgres
SELECT
  fs.Conservation_ID,
  fs.Source_Name AS "Sumber Dana",
  fs.Amount_IDR,
  ei.CO2_Sequestration_Tonnes,
  ei.CO2_Sequestration_Tonnes / (fs.Amount_IDR/1000000) AS "CO2_per_juta_IDR",
  ei.Impact_Type
FROM
  funding_sources fs
JOIN
  environmental_impact ei ON fs.Conservation_ID = ei.Conservation_ID
WHERE
  ei.Impact_Type = 'Carbon Storage'
ORDER BY
  "CO2_per_juta_IDR" DESC;