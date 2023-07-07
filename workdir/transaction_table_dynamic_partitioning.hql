SET hive.exec.dynamic.partition.mode=nonstrict;
SET hive.exec.dynamic.partition=true;

USE ${hivevar:database};

FROM transaction_records txn
INSERT into TABLE transaction_records_partitioned PARTITION(category)
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

