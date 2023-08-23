$ >cd workdir
$> hdfs dfs -put quotes.txt /user/$USER/

Syntax to execute MapReduce Program
$> yarn jar <JAR_NAME> <PROGRAM_NAME> <HDFS_INPUT_PATH> <HDFS_OUTPUT_PATH>
$> echo $USER
naveenpntrainergmail


yarn jar map-reduce-programs-1.0-SNAPSHOT.jar org.training.wordcount.WordCountDriver \
/user/naveenpntrainergmail/quotes.txt \
/user/naveenpntrainergmail/output_08_001


hdfs dfs -cat /user/$USER/output_04_03/part*

