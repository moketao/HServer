package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.SelectServerReq;
import mainhandler.Session;
public class SelectServerReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		SelectServerReq o = MessageIDs.toSelectServerReq(b);
		return null;
	}
}
