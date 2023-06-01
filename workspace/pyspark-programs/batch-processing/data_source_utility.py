from pyspark.sql import SparkSession
from pyspark.sql.types import *
from pyspark.sql.functions import *

spark = SparkSession.builder.appName("Simplilearn Training").master("local").getOrCreate()

def get_user_df():
    custom_schema = StructType([
        StructField("id", IntegerType()),
        StructField("experience", IntegerType()),
        StructField("gender", StringType()),
        StructField("designation", StringType()),
        StructField("salary", IntegerType())
    ])

    user_df = spark.read.csv(path="../dataset/u1.user",
                             sep="|",
                             header=True,
                             schema=custom_schema)

    return user_df