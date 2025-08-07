WITH bulan_izin AS (
  SELECT
    DATE_TRUNC('month', rp.Approval_Date) AS bulan,
    COUNT(*) AS jumlah_izin
  FROM
    regulatory_permits rp
  WHERE
    rp.Permit_Status = 'Approved'
  GROUP BY
    DATE_TRUNC('month', rp.Approval_Date)
),
bulan_transaksi AS (
  SELECT
    DATE_TRUNC('month', bt.Transaction_Date) AS bulan,
    COUNT(*) AS jumlah_transaksi,
    SUM(bt.Carbon_Credits_Transferred) AS total_karbon
  FROM
    blockchain_transactions bt
  GROUP BY
    DATE_TRUNC('month', bt.Transaction_Date)
)
SELECT
  i.bulan,
  i.jumlah_izin,
  t.jumlah_transaksi,
  t.total_karbon
FROM
  bulan_izin i
LEFT JOIN
  bulan_transaksi t ON i.bulan = t.bulan
ORDER BY
  i.bulan;