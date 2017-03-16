package mapreduce;
import java.io.IOException;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

public class worldcountreduce extends  Reducer <Text,IntWritable,Text,IntWritable> {
	// 一组相同的key，调用一次reduce
	//相当于调用一次 ，计算一个key对应的个数
	protected void reduce (Text key,Iterable<IntWritable> values,Context context) throws IOException, InterruptedException{
		
		//统计单词数
		int count=0;
		for(IntWritable value :values){
			count=count+value.get();
		}
		
		//将输出的结果放到context 里面
		context.write(key,new IntWritable(count));
	}
	
}
