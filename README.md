# Financial Fraud Detection

## Project Overview

Financial institutions process thousands of transactions every day, making it difficult to manually identify suspicious activities and fraudulent transactions.

This project develops a hybrid fraud detection system that combines rule-based fraud scoring and machine learning anomaly detection to identify high-risk transactions based on customer behavior, transaction patterns, and geographic risk indicators.

The solution uses Python for data processing and feature engineering, MySQL for data storage and analysis, and Isolation Forest for anomaly detection.

---

## Business Problem

Fraudulent transactions can result in significant financial losses and security risks for banks and fintech organizations.

The objective of this project is to detect suspicious transactions using:

- Transaction frequency anomalies
- Transaction amount anomalies
- Location-based risk patterns
- Behavioral transaction analysis
- Machine learning-based anomaly detection

---

## Dataset Information

The dataset contains financial transaction records with customer, account, device, and location information.

### Dataset Size

- Total Records: 2,512 Transactions
- Features: Transaction, Customer, Device, Account and Location Attributes

### Key Columns

| Column | Description |
|----------|-------------|
| TransactionID | Unique transaction identifier |
| AccountID | Customer account identifier |
| TransactionAmount | Amount involved in transaction |
| TransactionDate | Date and time of transaction |
| TransactionType | Credit or Debit |
| Location | Transaction location |
| DeviceID | Device used for transaction |
| IP_Address | IP Address used |
| Channel | ATM, Branch or Online |
| LoginAttempts | Number of login attempts |
| AccountBalance | Customer account balance |

---

## Tools & Technologies

- Python
- Pandas
- NumPy
- MySQL
- Scikit-Learn
- Isolation Forest
- Jupyter Notebook

---

## Data Preprocessing

Performed the following preprocessing steps:

- Converted date columns into datetime format
- Handled data inconsistencies
- Created user-level transaction history
- Removed duplicate columns
- Prepared data for SQL storage and machine learning

---

## Feature Engineering

To improve fraud detection performance, multiple behavioral and risk-based features were created.

### 1. Time Since Last Transaction

Calculated the time difference between consecutive transactions for each customer.

Purpose:
- Detect rapid transaction activity
- Identify transaction velocity anomalies

---

### 2. Transaction Velocity Flag

Flagged transactions occurring within a short time interval.

Purpose:
- Detect unusually frequent transactions
- Identify suspicious activity bursts

---

### 3. Average Transaction Amount Per User

Calculated average spending behavior for each account.

Purpose:
- Establish normal spending patterns
- Create customer-level behavioral profiles

---

### 4. Amount Deviation

Measured how far a transaction amount deviates from the user's average transaction amount.

Purpose:
- Detect unusually high-value transactions
- Identify spending anomalies

---

### 5. Location Risk Analysis

Calculated the number of unique locations associated with each customer.

Purpose:
- Detect unusual geographic activity
- Identify location mismatch behavior

---

### 6. Fraud Risk Score

Combined multiple fraud indicators into a single risk score.

Factors considered:

- Amount Anomaly
- Transaction Velocity
- Location Risk

---

## Rule-Based Fraud Detection

A fraud scoring system was developed using engineered features.

### Fraud Classification

| Fraud Score | Risk Level |
|------------|------------|
| 0-1 | Low Risk |
| 2-3 | Medium Risk |
| 4+ | High Fraud Risk |

---

## Machine Learning Approach

### Isolation Forest

Isolation Forest was used as an unsupervised anomaly detection algorithm.

Purpose:

- Detect hidden transaction anomalies
- Validate rule-based fraud detection results
- Identify suspicious transactions not captured by predefined rules

### Results

- Total Anomalies Detected: 126
- Approximate Anomaly Rate: 5%

---

## SQL Integration

Transaction data and engineered features were stored in MySQL for analytical querying.

### SQL Analysis Performed

- Fraud Distribution Analysis
- Location-wise Fraud Analysis
- Risky Customer Identification
- Fraud Percentage by Transaction Channel
- Window Function Analysis
- Transaction Ranking by Risk Score

---

## Key Findings

### Fraud Distribution

| Risk Category | Transactions |
|--------------|-------------|
| Low Risk | 1417 |
| Medium Risk | 976 |
| High Fraud Risk | 119 |

Approximately 4.7% of transactions were classified as High Fraud Risk.

---

### Transaction Amount Analysis

High-risk transactions showed significantly larger transaction amounts compared to normal transactions.

Average Transaction Amount:

| Risk Category | Avg Amount |
|--------------|------------|
| Low Risk | 225.47 |
| Medium Risk | 340.91 |
| High Fraud Risk | 801.14 |

High-risk transactions were approximately 3.5x larger than low-risk transactions.

---

### Channel Analysis

Fraud rates across transaction channels:

| Channel | Fraud Percentage |
|----------|----------------|
| Branch | 5.07% |
| ATM | 4.68% |
| Online | 4.44% |

Fraud risk was distributed across all transaction channels, with branch transactions showing a slightly higher fraud rate.

---

### Location Analysis

Locations with the highest number of high-risk transactions included:

- Memphis
- Omaha
- Boston
- Oklahoma City
- Phoenix
- San Francisco

These locations showed elevated fraud activity and may require additional monitoring.

---

## Advanced SQL Analysis

Used Window Functions to identify the highest-risk transaction for each user.

Example concepts used:

- ROW_NUMBER()
- RANK()
- PARTITION BY
- Aggregate Analysis

This enabled user-level fraud investigation and risk prioritization.

---

## Project Workflow

1. Data Collection
2. Data Cleaning
3. Feature Engineering
4. Rule-Based Fraud Scoring
5. Isolation Forest Modeling
6. SQL Data Storage
7. Fraud Analytics
8. Business Insights Generation

---

## Resume Impact

Developed a hybrid fraud detection system using Python and SQL, engineering behavioral, financial, and geographic risk features and leveraging Isolation Forest to identify approximately 4.7% high-risk transactions and uncover hidden anomaly patterns across user behavior.

---

## Future Improvements

Potential enhancements include:

- Real-time fraud monitoring pipeline
- Interactive Power BI Dashboard
- Advanced Machine Learning Models
- Streaming Transaction Analysis
- Model Performance Evaluation using labeled fraud data


## Author

Durga Sairam
