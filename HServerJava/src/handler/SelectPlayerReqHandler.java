package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.SelectPlayerReq;
import mainhandler.Session;
public class SelectPlayerReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		SelectPlayerReq o = MessageIDs.toSelectPlayerReq(b);
		return null;
	}
}
