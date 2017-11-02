package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SelectServerRsp - 选择服务器

		var message:SelectServerRsp = new SelectServerRsp();
		message.ret = ret;
		message.serverName = serverName;
		message.players = players;
		message.send();

	 **/
	public class SelectServerRsp extends Msg
	{
		public static var SelectServerRsp_PROTO:*;
		
		public var ret:String="";
		
		public var serverName:String="";
		
		public var players:logic.messages.PlayerList;


		public static var PROTO_STATIC_ID:int = 28; // 协议号
		
		public function SelectServerRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 28; // 协议号
		}
		public override function myEncode():*{
			if(SelectServerRsp_PROTO==null) SelectServerRsp_PROTO = Net.root.lookup("msg.SelectServerRsp");
			var m:* = SelectServerRsp_PROTO.create({ret:ret, serverName:serverName, players:players});
			var buffer:* = SelectServerRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

