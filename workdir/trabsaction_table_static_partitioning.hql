USE ${hivevar:database};


CREATE TABLE IF NOT EXISTS transaction_records_partitioned(
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
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TextFile;

FROM transaction_records txn
INSERT INTO TABLE transaction_records_partitioned PARTITION(category='Exercise & Fitness')
select
    txn.txnno,
    txn.txndate,
    txn.custno,
    txn.amount,
    txn.product,
    txn.city,
    txn.state,
    txn.spendby
where category='Exercise & Fitness';


FROM transaction_records txn
INSERT INTO TABLE transaction_records_partitioned PARTITION(category='Gymnastics')
select
    txn.txnno,
    txn.txndate,
    txn.custno,
    txn.amount,
    txn.product,
    txn.city,
    txn.state,
    txn.spendby
where category='Gymnastics';
