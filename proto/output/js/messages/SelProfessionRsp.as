package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SelProfessionRsp - 选择职业rsp

		var message:SelProfessionRsp = new SelProfessionRsp();
		message.ret = ret;
		message.player = player;
		message.send();

	 **/
	public class SelProfessionRsp extends Msg
	{
		public static var SelProfessionRsp_PROTO:*;
		
		public var ret:String="";
		
		public var player:logic.messages.Player;


		public static var PROTO_STATIC_ID:int = 24; // 协议号
		
		public function SelProfessionRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 24; // 协议号
		}
		public override function myEncode():*{
			if(SelProfessionRsp_PROTO==null) SelProfessionRsp_PROTO = Net.root.lookup("msg.SelProfessionRsp");
			var m:* = SelProfessionRsp_PROTO.create({ret:ret, player:player});
			var buffer:* = SelProfessionRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

