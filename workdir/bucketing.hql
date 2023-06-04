set hive.enforce.bucketing=true;

CREATE TABLE IF NOT EXISTS analytics.transaction_records_bucketing(
    txnno INT, 
    txndate STRING, 
    custno INT, 
    amount DOUBLE, 
    category STRING,
    product STRING, 
    city STRING, 
    state STRING, 
    spendby STRING
)
CLUSTERED BY (state) INTO 10 BUCKETS
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TextFile;

--

FROM analytics.transaction_records txn
INSERT OVERWRITE TABLE analytics.transaction_records_bucketing
select
    txn.txnno,
    txn.txndate,
    txn.custno,
    txn.amount,
    txn.category,
    txn.product,
    txn.city,
    txn.state,
    txn.spendby;

--FROM analytics.transaction_records txn INSERT OVERWRITE TABLE analytics.transaction_records_bucketing select *;