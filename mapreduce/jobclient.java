package mapreduce;
import java.io.IOException;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
/*
 *job 提交器 是yarn集群的一个客户端，他负责将mr程序需要的信息全部封装成一个配置文件里面
 *然后连同我们mr程序所在的一个jar包，一起提交给yarn，有yarn去启动mr程序中的mrappmaster 
 */
public class jobclient {
	public static void main(String []args) throws IOException, ReflectiveOperationException, InterruptedException{
		Configuration conf=new Configuration();
		//conf.set("yarn.resoucemanager.hostname", value);	
		Job job=Job.getInstance(conf);
		//job.setJar("~/code/WordCount.jar");
		//告知客户端的提交器 mr程序所在的jar包
		//这样就不必使用setjar 这样的方法了
		job.setJarByClass(jobclient.class);
		// 告知mrapp master ，map 和reduce 对应的实现类
		job.setMapperClass(worldcount.class);
		job.setReducerClass(worldcountreduce.class);
		//告知输入，和输出的数据结构的类型
		job.setMapOutputKeyClass(Text.class);
		job.setMapOutputValueClass(IntWritable.class);
		
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(IntWritable.class);
		
		//告知mrappmaster 我们启动的reduce tash的数量
		//启动maptask 的数量 是yarn 会自动的计算
		job.setNumReduceTasks(3);
		
		//指定一个目录而不是文件
		FileInputFormat.setInputPaths(job, new Path("hdfs://localhost/wordcount/"));
		FileOutputFormat.setOutputPath(job,new Path("hdfs://localhost/wordcount/output/"));
		// job.submit()
		//这个要比job.submit 要好，因为这个client并不会在提交任务之后，就退出，而是创建一个线程去监控 map和reduce的运行
		boolean res=job.waitForCompletion(true);
		// 执行成功 状态吗 是0，执行失败 状态码是100
		// 通过echo $? 显示状态码
		System.out.println("wakakka ");
		System.exit(res?0:100);
	}
}
