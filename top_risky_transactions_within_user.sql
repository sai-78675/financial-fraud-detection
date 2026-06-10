SELECT *
FROM (
    SELECT 
        AccountID,
        TransactionID,
        TransactionAmount,
        fraud_score,
        RANK() OVER (PARTITION BY AccountID ORDER BY fraud_score DESC) AS rank_within_user
    FROM transactions
) t
WHERE rank_within_user = 1;