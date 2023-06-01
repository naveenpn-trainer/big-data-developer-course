import sys

from pyspark.sql import SparkSession
from pyspark.sql.functions import *
if __name__ == '__main__':
    input_path = sys.argv[1]
    output_path = sys.argv[2]
    spark = SparkSession.builder.master("local").appName("User").getOrCreate()
    user_df = spark.read.csv(path="../dataset/u.user", sep="|",header=True)
    # user_df.show()
    print(user_df.count())
    user_df.groupBy(col("designation")).agg(count("*").alias("count")).withColumn("percentage",round((col("count")/user_df.count())*100,2)).show()