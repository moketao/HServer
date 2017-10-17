//此文件由 protomap 批量生成，不要编辑此文件
package msg;
import java.util.HashMap;
import handler.*;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
public final class MessageIDs {
	public static HashMap<Integer, Object> protoMap;
	public static HashMap<Object, Integer> classMap;
	public static HashMap<Integer, Object> handleMap;
	public static void init(){
		protoMap = new HashMap<Integer, Object>();
		classMap = new HashMap<Object, Integer>();
		handleMap = new HashMap<Integer, Object>();

		//协议号与协议的对应
		{{- range .Messages}}
		protoMap.put({{.Code}}, Msg.{{.Name}}.class);
		classMap.put(Msg.{{.Name}}.class, {{.Code}});
		{{if hasSuffix .Name "Req"}}handleMap.put({{.Code}}, new {{.Name}}Handler());{{end}}
		{{end}}

		{{ range .Messages -}}
		public static Msg.{{.Name}} to{{.Name}}(ByteString data) {Msg.{{.Name}}.Builder b = Msg.{{.Name}}.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		{{ end}}
	}
}
