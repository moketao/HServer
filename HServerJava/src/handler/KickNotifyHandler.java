package handler;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;
import io.netty.channel.ChannelHandlerContext;
import msg.MessageIDs;
import msg.Msg.KickNotify;
import mainhandler.Session;
public class KickNotifyHandler implements IRun  {
	public GeneratedMessageV3 run(ChannelHandlerContext ctx,ByteString b ,Session c){
		KickNotify o = MessageIDs.toKickNotify(b);
		return null;
	}
}
