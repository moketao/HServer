package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SelectPlayerRsp - 选择Player

		var message:SelectPlayerRsp = new SelectPlayerRsp();
		message.ret = ret;
		message.mapName = mapName;
		message.player = player;
		message.chat = chat;
		message.send();

	 **/
	public class SelectPlayerRsp extends Msg
	{
		public static var SelectPlayerRsp_PROTO:*;
		
		public var ret:String="";
		
		public var mapName:String="";
		
		public var player:logic.messages.Player;
		
		public var chat:Array=[] // ChatRsp ;


		public static var PROTO_STATIC_ID:int = 26; // 协议号
		
		public function SelectPlayerRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 26; // 协议号
		}
		public override function myEncode():*{
			if(SelectPlayerRsp_PROTO==null) SelectPlayerRsp_PROTO = Net.root.lookup("msg.SelectPlayerRsp");
			var m:* = SelectPlayerRsp_PROTO.create({ret:ret, mapName:mapName, player:player, chat:chat});
			var buffer:* = SelectPlayerRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

