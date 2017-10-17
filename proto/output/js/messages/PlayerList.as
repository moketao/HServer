package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//PlayerList - player列表

		var message:PlayerList = new PlayerList();
		message.player = player;
		message.send();

	 **/
	public class PlayerList extends Msg
	{
		public static var PlayerList_PROTO:*;
		
		public var player:*;


		public static var PROTO_STATIC_ID:int = 19; // 协议号
		
		public function PlayerList()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 19; // 协议号
		}
		public override function myEncode():*{
			if(PlayerList_PROTO==null) PlayerList_PROTO = Net.root.lookup("msg.PlayerList");
			var m:* = PlayerList_PROTO.create({player:player});
			var buffer:* = PlayerList_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

