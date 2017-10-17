package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//PlayerNamesAndServer - 服务器名和玩家名

		var message:PlayerNamesAndServer = new PlayerNamesAndServer();
		message.serverName = serverName;
		message.playerName = playerName;
		message.send();

	 **/
	public class PlayerNamesAndServer extends Msg
	{
		public static var PlayerNamesAndServer_PROTO:*;
		
		public var serverName:String="";
		
		public var playerName:String="";


		public static var PROTO_STATIC_ID:int = 20; // 协议号
		
		public function PlayerNamesAndServer()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 20; // 协议号
		}
		public override function myEncode():*{
			if(PlayerNamesAndServer_PROTO==null) PlayerNamesAndServer_PROTO = Net.root.lookup("msg.PlayerNamesAndServer");
			var m:* = PlayerNamesAndServer_PROTO.create({serverName:serverName, playerName:playerName});
			var buffer:* = PlayerNamesAndServer_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

