-- Active: 1753523836938@@127.0.0.1@5432@postgres
SELECT
  fs.Conservation_ID,
  fs.Source_Name,
  fs.Amount_IDR,
  ei.CO2_Sequestration_Tonnes,
  ei.CO2_Sequestration_Tonnes / (fs.Amount_IDR/1000000) AS CO2_per_juta_IDR,
  bdc.Encryption_Level,
  bdc.Consent_Obtained
FROM
  funding_sources fs
JOIN
  environmental_impact ei ON fs.Conservation_ID = ei.Conservation_ID
JOIN
  blockchain_data_compliance bdc ON fs.Conservation_ID = bdc.Conservation_ID
WHERE
  ei.Impact_Type = 'Carbon Storage'
  AND bdc.Encryption_Level = 'High'
  AND bdc.Consent_Obtained = 'Yes'
  AND fs.Amount_IDR >= 50000000
ORDER BY
  CO2_per_juta_IDR DESC,
  fs.Amount_IDR DESC;