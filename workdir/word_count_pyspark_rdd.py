from pyspark.sql.session import SparkSession
import sys

if __name__ == '__main__':
    # Step 01 : Create Spark Session
    spark = SparkSession.builder.master("yarn").appName("word count").getOrCreate()

    input_path = sys.argv[1]
    output_path = sys.argv[2]

    input_file = spark.sparkContext.textFile(input_path)

    result = input_file.flatMap(lambda row: row.split(" ")).map(lambda word: (word, 1)).reduceByKey(lambda x, y: x + y)
    result.saveAsTextFile(output_path)