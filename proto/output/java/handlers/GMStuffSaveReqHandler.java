package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.GMStuffSaveReq;
import mainhandler.Session;
public class GMStuffSaveReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		GMStuffSaveReq o = MessageIDs.toGMStuffSaveReq(b);
		return null;
	}
}
