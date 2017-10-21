package util;

import java.io.FileOutputStream;
import java.io.IOException;

import msg.Msg.LoginReq;

/**这里是数据压缩示范，前端对应的解压方案是pako_inflate.min.js*/
public class ZLibUtilsExample {
	public static void test(){
		try {
			msg.Msg.LoginReq.Builder login = LoginReq.newBuilder();
			login.setName("abc12123121313212312313212131231321231dfsadfsadfsfdsafasdfsdfasdfsdf");
			byte[] d1 = login.build().toByteArray();
			
			System.out.println("保存数据，压缩前"+d1.length*0.001+"K");
			d1 = ZLibUtils.compress(d1);
			System.out.println("压缩后"+d1.length*0.001+"K");
			
			String path = "E:/ani-"+login.getName()+".bin";
			createFile(path,d1);
			System.out.println("保存完成: "+path);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	//将byte数组写入文件
    public static void createFile(String path, byte[] content) throws IOException {

        FileOutputStream fos = new FileOutputStream(path);

        fos.write(content);
        fos.close();
    }
}
