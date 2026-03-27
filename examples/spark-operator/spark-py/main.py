from  pyspark.sql import SparkSession

spark = SparkSession.builder.appName("spark-py").getOrCreate()

def main():
    data = [("Alice", 34), ("Bob", 45), ("Charlie", 29)]
    columns = ["Name", "Age"]

    df = spark.createDataFrame(data, columns)
    df.show()
    


if __name__ == "__main__":
    main()
    spark.stop()
