package demo2;

import java.io.IOException;
import java.io.InputStream;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IOUtils;

public class demo {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Configuration conf=new Configuration();
		conf.set("fs.defaultFS", "hdfs://localhost/");
		FileSystem fs=FileSystem.get(conf);
		InputStream in =fs.open(new Path("/hello.txt"));
		IOUtils.copyBytes(in, System.out, 1024,false);
		IOUtils.closeStream(in);
	}

}
