package mainhandler;

import java.util.HashMap;

import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.MessageLiteOrBuilder;

import io.netty.channel.ChannelHandlerContext;

public class Session {
	/**存储所有Session**/
	public static HashMap<String, Session> mapByID = new HashMap<String, Session>();
	public static HashMap<ChannelHandlerContext, Session> mapByCtx = new HashMap<ChannelHandlerContext, Session>();
	public static void add(Session session) {
		mapByID.put(session.name, session);
		mapByCtx.put(session.ctx, session);
	}
	public static void remove(Session session) {
		session.login = false;
		mapByID.remove(session.name);
		mapByCtx.remove(session.ctx);
	}

	public String name;
	public String pwd;
	public boolean login;
	public ChannelHandlerContext ctx;
	public static Session getSessionByCtx(ChannelHandlerContext ctx2) {
		return mapByCtx.get(ctx2);
	}
	public static void remove(ChannelHandlerContext ctx2) {
		Session session = mapByCtx.get(ctx2);
		remove(session);
	}
	public static void send2All(GeneratedMessageV3 submsg) {
    	MessageLiteOrBuilder result = MainHandler.getMsg(submsg);
    	for (Session s : Session.mapByID.values()) {  
    		System.out.println("向"+s.name+"广播一次"+submsg);
    		s.ctx.write(result);
            s.ctx.flush();
    	} 
	}
}
