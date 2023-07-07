CREATE  DATABASE IF NOT EXISTS ${hivevar:DATABASE_NAME};

USE ${hivevar:DATABASE_NAME};

CREATE TABLE IF NOT EXISTS transaction_records(
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
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TextFile;

LOAD DATA LOCAL INPATH '${hivevar:FILE_PATH}' INTO TABLE transaction_records