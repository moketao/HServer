package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.SelProfessionReq;
import mainhandler.Session;
public class SelProfessionReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		SelProfessionReq o = MessageIDs.toSelProfessionReq(b);
		return null;
	}
}
