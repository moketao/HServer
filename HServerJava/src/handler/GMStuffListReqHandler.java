package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.GMStuffListReq;
import mainhandler.Session;
public class GMStuffListReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		GMStuffListReq o = MessageIDs.toGMStuffListReq(b);
		return null;
	}
}
