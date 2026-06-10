SELECT 
    Channel,
    COUNT(*) AS total_txn,
    SUM(CASE WHEN fraud_label = 'High Fraud Risk' THEN 1 ELSE 0 END) AS fraud_count,
    ROUND(
        100.0 * SUM(CASE WHEN fraud_label = 'High Fraud Risk' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_percentage
FROM transactions
GROUP BY Channel;