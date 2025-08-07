SELECT
  bdc.Access_Level,
  bdc.Data_Type,
  COUNT(bt.Transaction_ID) AS jumlah_transaksi,
  SUM(bt.Carbon_Credits_Transferred) AS total_karbon,
  AVG(bt.Carbon_Credits_Transferred) AS rata_karbon
FROM
  blockchain_data_compliance bdc
LEFT JOIN
  blockchain_transactions bt ON bdc.Conservation_ID = bt.Conservation_ID
GROUP BY
  bdc.Access_Level, bdc.Data_Type
ORDER BY
  total_karbon DESC;