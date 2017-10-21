package handler;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageV3;

import io.netty.channel.ChannelHandlerContext;
import mainhandler.Session;

public interface IRun {
	GeneratedMessageV3 run(ChannelHandlerContext ctx ,ByteString data ,Session s);
}
