package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.GMStuffDelReq;
import mainhandler.Session;
public class GMStuffDelReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		GMStuffDelReq o = MessageIDs.toGMStuffDelReq(b);
		return null;
	}
}
