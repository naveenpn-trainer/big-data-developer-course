CREATE TABLE analytics.transaction_records_partition_bucket(
    txnno INT,
    txndate STRING,
    custno INT,
    amount DOUBLE,
    product STRING,
    city STRING,
    state STRING,
    spendby STRING
)
PARTITIONED BY (category STRING)
CLUSTERED BY(state) into 10 BUCKETS
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TextFile;


FROM analytics.transaction_records_partition_bucket txn
INSERT OVERWRITE TABLE analytics.TransactionRecordsByCat PARTITION(category)
select
    txn.txnno,
    txn.txndate,
    txn.custno,
    txn.amount,
    txn.product,
    txn.city,
    txn.state,
    txn.spendby,
    txn.category;