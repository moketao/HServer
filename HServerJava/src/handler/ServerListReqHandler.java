package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.ServerListReq;
import mainhandler.Session;
public class ServerListReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		ServerListReq o = MessageIDs.toServerListReq(b);
		return null;
	}
}
