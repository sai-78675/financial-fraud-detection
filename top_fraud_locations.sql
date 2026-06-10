SELECT 
    Location,
    COUNT(*) AS fraud_count
FROM transactions
WHERE fraud_label = 'High Fraud Risk'
GROUP BY Location
ORDER BY fraud_count DESC
LIMIT 10;