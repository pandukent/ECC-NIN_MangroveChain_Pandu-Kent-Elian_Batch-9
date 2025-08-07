WITH compliance_stats AS (
  SELECT
    Conservation_ID,
    COUNT(*) AS total_records,
    SUM(CASE WHEN Encryption_Level = 'High' AND Consent_Obtained = 'Yes' THEN 1 ELSE 0 END) AS compliant_records
  FROM
    blockchain_data_compliance
  GROUP BY
    Conservation_ID
)
SELECT
  Conservation_ID,
  total_records,
  compliant_records,
  ROUND((compliant_records::numeric / total_records) * 100, 2) AS compliance_percentage
FROM
  compliance_stats
ORDER BY
  compliance_percentage DESC;
