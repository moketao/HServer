import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;
import mainhandler.WebSocketChannelInitializer;
import msg.MessageIDs;

//import javax.script.ScriptEngineManager; //TODO:加入脚本？
public final class WebSocketServer {

    private static final int PORT = 8090;
    private final static EventLoopGroup bossGroup = new NioEventLoopGroup();
    private final static EventLoopGroup workerGroup = new NioEventLoopGroup();
    public static void main(String[] args) throws Exception {
    	MessageIDs.init();
        try {
        	ServerBootstrap b = new ServerBootstrap();
            b.group(bossGroup, workerGroup)
                    .channel(NioServerSocketChannel.class)
                    .handler(new LoggingHandler(LogLevel.INFO))
                    .childHandler(new WebSocketChannelInitializer());

            Channel ch = b.bind(PORT).sync().channel();
            ch.closeFuture().sync();
        } finally {
            bossGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }
}
