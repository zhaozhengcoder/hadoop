package mapreduce;
import java.io.IOException;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
/*
 * KEYIN 读到的一行数据的偏移量 lONG
 * KEYOUT 读到的一行数据的内容 STRING
 * keyout 输出一个单词，是一个string的类型
 * valueout int值
 * hadoop 有自己的一套序列化的机制，他的序列化比jdk的序列化更加精简，
 * 可以提高网络的传输效率
 * long --》 longwritable
 * string --》 text
 * integer --》 intwritable
 * null  --> nullwritable
 */
public class worldcount extends Mapper<LongWritable,Text,Text,IntWritable>{
	//重载Mapper类的map方法
	//key 其实对应   keyin
	// value 就是  keyout
	protected void map(LongWritable key,Text value,Context context) throws IOException, InterruptedException{
		// 将拿到的这行数据按照空格切分
		String line=value.toString();
		String [] linewords = line.split(" ");
		for(String word:linewords){
			// 所以在context里面写的内容就是 key：word，value 是1
			context.write(new Text(word), new IntWritable(1));
		}
	}
}
