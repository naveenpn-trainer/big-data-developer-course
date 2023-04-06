package org.simplilearn.wordcount;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

import java.io.IOException;

public class WordCountReducer extends Reducer<Text, IntWritable,Text,IntWritable> {
    /*
        C, [1,1,1,1,1,1]  --> reduce()  --> C,6
        Java, [1,1,1,1,1,1]  --> reduce() --> Java,6
     */
    @Override
    protected void reduce(Text key,
                          Iterable<IntWritable> values,
                          Reducer<Text, IntWritable, Text, IntWritable>.Context context)
            throws IOException, InterruptedException {
        int total = 0;
        for(IntWritable val:values){
            total=total+val.get();
        }
        context.write(new Text(key),new IntWritable(total));
    }
}
