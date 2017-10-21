package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.ChatReq;
import mainhandler.Session;
public class ChatReqHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		ChatReq o = MessageIDs.toChatReq(b);
		return null;
	}
}
