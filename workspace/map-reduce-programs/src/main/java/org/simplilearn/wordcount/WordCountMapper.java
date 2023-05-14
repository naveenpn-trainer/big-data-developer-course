package org.simplilearn.wordcount;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class WordCountMapper extends Mapper<LongWritable, Text, Text, IntWritable> {
    /*
        C C++ Python
        Python C Python

     */
    @Override
    protected void map(LongWritable key,
                       Text value,
                       Mapper<LongWritable, Text, Text, IntWritable>.Context context) throws IOException, InterruptedException {
        String line = value.toString();
        String [] words = line.split(" ");
        for(String word : words){
            context.write(new Text(word), new IntWritable(1));
        }
    }

    /*
        c,1
        c+=,1
        python,1
        python,1
        c,1
        python,1

     */
}
