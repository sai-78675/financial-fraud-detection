SELECT 
    fraud_label,
    COUNT(*) AS total_transactions
FROM transactions
GROUP BY fraud_label;