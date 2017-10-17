package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.{{.Name}};
import mainhandler.Session;
public class {{.Name}}Handler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		{{.Name}} o = MessageIDs.to{{.Name}}(b);
		return null;
	}
}
