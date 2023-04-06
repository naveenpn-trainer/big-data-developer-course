cd dataset
hdfs dfs -put quotes.txt /user/$USER/

yarn jar <JAR_NAME> <PROGRAM_NAME> <HDFS_INPUT_OUT> <HDFS_OUTPUT_PUT>

cd dataset
yarn jar map-reduce-programs-1.0-SNAPSHOT.jar org.simplilearn.wordcount.WordCountDriver \
/user/naveenpntrainergmail/quotes.txt \
/user/naveenpntrainergmail/output_04_03


hdfs dfs -cat /user/$USER/output_04_03/part*

