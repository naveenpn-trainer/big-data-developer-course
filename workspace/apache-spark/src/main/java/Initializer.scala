import org.apache.spark.sql.SparkSession

object Initializer {

  def main(args: Array[String]): Unit = {
    val spark = SparkSession.builder().appName("").master("local").getOrCreate()

  }
}
