//此文件由 protomap 批量生成，不要编辑此文件
package msg;
import java.util.HashMap;
import handler.*;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
public final class MessageIDs {
	public static HashMap<Integer, Object> protoMap;
	public static HashMap<Object, Integer> classMap;
	public static HashMap<Integer, Object> handleMap;
	public static void init(){
		protoMap = new HashMap<Integer, Object>();
		classMap = new HashMap<Object, Integer>();
		handleMap = new HashMap<Integer, Object>();

		//协议号与协议的对应
		protoMap.put(0, Msg.ChatReq.class);
		classMap.put(Msg.ChatReq.class, 0);
		handleMap.put(0, new ChatReqHandler());
		
		protoMap.put(1, Msg.ChatRsp.class);
		classMap.put(Msg.ChatRsp.class, 1);
		
		
		protoMap.put(2, Msg.CommonProtocol.class);
		classMap.put(Msg.CommonProtocol.class, 2);
		
		
		protoMap.put(3, Msg.CreatePlayerReq.class);
		classMap.put(Msg.CreatePlayerReq.class, 3);
		handleMap.put(3, new CreatePlayerReqHandler());
		
		protoMap.put(4, Msg.CreatePlayerRsp.class);
		classMap.put(Msg.CreatePlayerRsp.class, 4);
		
		
		protoMap.put(5, Msg.Curve.class);
		classMap.put(Msg.Curve.class, 5);
		
		
		protoMap.put(6, Msg.CurvePoint.class);
		classMap.put(Msg.CurvePoint.class, 6);
		
		
		protoMap.put(7, Msg.GMStuffDelReq.class);
		classMap.put(Msg.GMStuffDelReq.class, 7);
		handleMap.put(7, new GMStuffDelReqHandler());
		
		protoMap.put(8, Msg.GMStuffDelRsp.class);
		classMap.put(Msg.GMStuffDelRsp.class, 8);
		
		
		protoMap.put(9, Msg.GMStuffListReq.class);
		classMap.put(Msg.GMStuffListReq.class, 9);
		handleMap.put(9, new GMStuffListReqHandler());
		
		protoMap.put(10, Msg.GMStuffListRsp.class);
		classMap.put(Msg.GMStuffListRsp.class, 10);
		
		
		protoMap.put(11, Msg.GMStuffSaveReq.class);
		classMap.put(Msg.GMStuffSaveReq.class, 11);
		handleMap.put(11, new GMStuffSaveReqHandler());
		
		protoMap.put(12, Msg.GMStuffSaveRsp.class);
		classMap.put(Msg.GMStuffSaveRsp.class, 12);
		
		
		protoMap.put(13, Msg.GetReq.class);
		classMap.put(Msg.GetReq.class, 13);
		handleMap.put(13, new GetReqHandler());
		
		protoMap.put(14, Msg.GetRsp.class);
		classMap.put(Msg.GetRsp.class, 14);
		
		
		protoMap.put(15, Msg.KickNotify.class);
		classMap.put(Msg.KickNotify.class, 15);
		
		
		protoMap.put(16, Msg.LoginReq.class);
		classMap.put(Msg.LoginReq.class, 16);
		handleMap.put(16, new LoginReqHandler());
		
		protoMap.put(17, Msg.LoginRsp.class);
		classMap.put(Msg.LoginRsp.class, 17);
		
		
		protoMap.put(18, Msg.Player.class);
		classMap.put(Msg.Player.class, 18);
		
		
		protoMap.put(19, Msg.PlayerList.class);
		classMap.put(Msg.PlayerList.class, 19);
		
		
		protoMap.put(20, Msg.PlayerNamesAndServer.class);
		classMap.put(Msg.PlayerNamesAndServer.class, 20);
		
		
		protoMap.put(21, Msg.RegReq.class);
		classMap.put(Msg.RegReq.class, 21);
		handleMap.put(21, new RegReqHandler());
		
		protoMap.put(22, Msg.RegRsp.class);
		classMap.put(Msg.RegRsp.class, 22);
		
		
		protoMap.put(23, Msg.SelProfessionReq.class);
		classMap.put(Msg.SelProfessionReq.class, 23);
		handleMap.put(23, new SelProfessionReqHandler());
		
		protoMap.put(24, Msg.SelProfessionRsp.class);
		classMap.put(Msg.SelProfessionRsp.class, 24);
		
		
		protoMap.put(25, Msg.SelectPlayerReq.class);
		classMap.put(Msg.SelectPlayerReq.class, 25);
		handleMap.put(25, new SelectPlayerReqHandler());
		
		protoMap.put(26, Msg.SelectPlayerRsp.class);
		classMap.put(Msg.SelectPlayerRsp.class, 26);
		
		
		protoMap.put(27, Msg.SelectServerReq.class);
		classMap.put(Msg.SelectServerReq.class, 27);
		handleMap.put(27, new SelectServerReqHandler());
		
		protoMap.put(28, Msg.SelectServerRsp.class);
		classMap.put(Msg.SelectServerRsp.class, 28);
		
		
		protoMap.put(29, Msg.ServerInfo.class);
		classMap.put(Msg.ServerInfo.class, 29);
		
		
		protoMap.put(30, Msg.ServerListReq.class);
		classMap.put(Msg.ServerListReq.class, 30);
		handleMap.put(30, new ServerListReqHandler());
		
		protoMap.put(31, Msg.ServerListRsp.class);
		classMap.put(Msg.ServerListRsp.class, 31);
		
		
		protoMap.put(32, Msg.Stuff.class);
		classMap.put(Msg.Stuff.class, 32);
		
		
		protoMap.put(33, Msg.User.class);
		classMap.put(Msg.User.class, 33);
		
		

		public static Msg.ChatReq toChatReq(ByteString data) {Msg.ChatReq.Builder b = Msg.ChatReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.ChatRsp toChatRsp(ByteString data) {Msg.ChatRsp.Builder b = Msg.ChatRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.CommonProtocol toCommonProtocol(ByteString data) {Msg.CommonProtocol.Builder b = Msg.CommonProtocol.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.CreatePlayerReq toCreatePlayerReq(ByteString data) {Msg.CreatePlayerReq.Builder b = Msg.CreatePlayerReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.CreatePlayerRsp toCreatePlayerRsp(ByteString data) {Msg.CreatePlayerRsp.Builder b = Msg.CreatePlayerRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.Curve toCurve(ByteString data) {Msg.Curve.Builder b = Msg.Curve.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.CurvePoint toCurvePoint(ByteString data) {Msg.CurvePoint.Builder b = Msg.CurvePoint.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GMStuffDelReq toGMStuffDelReq(ByteString data) {Msg.GMStuffDelReq.Builder b = Msg.GMStuffDelReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GMStuffDelRsp toGMStuffDelRsp(ByteString data) {Msg.GMStuffDelRsp.Builder b = Msg.GMStuffDelRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GMStuffListReq toGMStuffListReq(ByteString data) {Msg.GMStuffListReq.Builder b = Msg.GMStuffListReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GMStuffListRsp toGMStuffListRsp(ByteString data) {Msg.GMStuffListRsp.Builder b = Msg.GMStuffListRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GMStuffSaveReq toGMStuffSaveReq(ByteString data) {Msg.GMStuffSaveReq.Builder b = Msg.GMStuffSaveReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GMStuffSaveRsp toGMStuffSaveRsp(ByteString data) {Msg.GMStuffSaveRsp.Builder b = Msg.GMStuffSaveRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GetReq toGetReq(ByteString data) {Msg.GetReq.Builder b = Msg.GetReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.GetRsp toGetRsp(ByteString data) {Msg.GetRsp.Builder b = Msg.GetRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.KickNotify toKickNotify(ByteString data) {Msg.KickNotify.Builder b = Msg.KickNotify.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.LoginReq toLoginReq(ByteString data) {Msg.LoginReq.Builder b = Msg.LoginReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.LoginRsp toLoginRsp(ByteString data) {Msg.LoginRsp.Builder b = Msg.LoginRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.Player toPlayer(ByteString data) {Msg.Player.Builder b = Msg.Player.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.PlayerList toPlayerList(ByteString data) {Msg.PlayerList.Builder b = Msg.PlayerList.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.PlayerNamesAndServer toPlayerNamesAndServer(ByteString data) {Msg.PlayerNamesAndServer.Builder b = Msg.PlayerNamesAndServer.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.RegReq toRegReq(ByteString data) {Msg.RegReq.Builder b = Msg.RegReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.RegRsp toRegRsp(ByteString data) {Msg.RegRsp.Builder b = Msg.RegRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.SelProfessionReq toSelProfessionReq(ByteString data) {Msg.SelProfessionReq.Builder b = Msg.SelProfessionReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.SelProfessionRsp toSelProfessionRsp(ByteString data) {Msg.SelProfessionRsp.Builder b = Msg.SelProfessionRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.SelectPlayerReq toSelectPlayerReq(ByteString data) {Msg.SelectPlayerReq.Builder b = Msg.SelectPlayerReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.SelectPlayerRsp toSelectPlayerRsp(ByteString data) {Msg.SelectPlayerRsp.Builder b = Msg.SelectPlayerRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.SelectServerReq toSelectServerReq(ByteString data) {Msg.SelectServerReq.Builder b = Msg.SelectServerReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.SelectServerRsp toSelectServerRsp(ByteString data) {Msg.SelectServerRsp.Builder b = Msg.SelectServerRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.ServerInfo toServerInfo(ByteString data) {Msg.ServerInfo.Builder b = Msg.ServerInfo.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.ServerListReq toServerListReq(ByteString data) {Msg.ServerListReq.Builder b = Msg.ServerListReq.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.ServerListRsp toServerListRsp(ByteString data) {Msg.ServerListRsp.Builder b = Msg.ServerListRsp.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.Stuff toStuff(ByteString data) {Msg.Stuff.Builder b = Msg.Stuff.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		public static Msg.User toUser(ByteString data) {Msg.User.Builder b = Msg.User.newBuilder();try {b.mergeFrom(data);}catch (InvalidProtocolBufferException e) {e.printStackTrace();}return b.build();}
		
	}
}
