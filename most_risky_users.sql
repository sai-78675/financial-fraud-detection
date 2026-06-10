SELECT 
    AccountID,
    COUNT(*) AS fraud_transactions
FROM transactions
WHERE fraud_label = 'High Fraud Risk'
GROUP BY AccountID
ORDER BY fraud_transactions DESC
LIMIT 10;