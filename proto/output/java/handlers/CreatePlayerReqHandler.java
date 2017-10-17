package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.CreatePlayerReq;
import mainhandler.Session;
public class CreatePlayerReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		CreatePlayerReq o = MessageIDs.toCreatePlayerReq(b);
		return null;
	}
}
