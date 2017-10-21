package mainhandler;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.MessageLiteOrBuilder;

import handler.IRun;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import msg.MessageIDs;
import msg.Msg;
import msg.Msg.CommonProtocol.Builder;


@ChannelHandler.Sharable
public class MainHandler extends SimpleChannelInboundHandler<Msg.CommonProtocol> {
	
	
	/**
     * 客户端与服务端会话连接成功
     */
    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
		super.channelActive(ctx);
		Session s = new Session();
		s.name = Math.random()+"";
		s.ctx = ctx;
		Session.add(s);
        System.out.println("客户端与服务端会话连接成功");
        
        

//        msg.Msg.LoginReq.Builder out = LoginReq.newBuilder();
//		out.setToken("143ab333cafsdfsafsdfa");
//		MainHandler.send(ctx, out.build());
//		msg.Msg.LoginReq.Builder out2 = LoginReq.newBuilder();
//		out.setToken("1533324cccasdf");
//		MainHandler.send(ctx, out2.build());
    }

    /**
     * 服务端接收到客户端消息
     */
    @Override
	protected void channelRead0(ChannelHandlerContext ctx, Msg.CommonProtocol msg) throws Exception {
//        System.out.println("收到消息:");
//        System.out.println(msg.getId());
//        System.out.println(msg.getSubmsg());

		Object a_handler = MessageIDs.handleMap.get(msg.getId());
		if(a_handler != null){
			Session session = Session.getSessionByCtx(ctx);
			GeneratedMessageV3 result = ((IRun) a_handler).run(ctx,msg.getSubmsg(),session);	//调用逻辑类的 run 函数
			if(result != null){
				//逻辑类的 run 函数有可能返回一个对象，代表回复信息
				send(ctx,result);
			}
		}else{
			System.out.println("msg id "+msg.getId()+", no handler work for it.");
		}
        
	}	
    public final static MessageLiteOrBuilder getMsg(GeneratedMessageV3 submsg){
    	Builder out = Msg.CommonProtocol.newBuilder();						//Msg.CommonProtocol是包装类
    	out.setId(MessageIDs.classMap.get(submsg.getClass()));				//根据返回的对象，获取对应的 消息 id，并写入包装类
    	out.setSubmsg(submsg.toByteString());								//将返回对象写入data
    	return out;
    }
    public static void send(ChannelHandlerContext ctx, MessageLiteOrBuilder result) {
    	MessageLiteOrBuilder pack = getMsg((GeneratedMessageV3) result);
    	ctx.write(pack);
        ctx.flush();
	}
    
	/**
     * 服务端监听到客户端异常
     */
    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        System.out.println("异常:"+cause.toString());
    }

    /**
     * 客户端与服务端会话连接断开
     */
    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
    	Session.remove(ctx);
    	super.channelInactive(ctx);
    	System.out.println("客户端与服务端会话连接断开");
    } 
}