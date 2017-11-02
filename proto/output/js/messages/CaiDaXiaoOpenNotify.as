package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoOpenNotify - 猜大小历史

		var message:CaiDaXiaoOpenNotify = new CaiDaXiaoOpenNotify();
		message.history = history;
		message.roundIDNow = roundIDNow;
		message.roundCountDown = roundCountDown;
		message.send();

	 **/
	public class CaiDaXiaoOpenNotify extends Msg
	{
		public static var CaiDaXiaoOpenNotify_PROTO:*;
		
		public var history:logic.messages.CaiDaXiaoHistory;
		
		public var roundIDNow:Number=0;
		
		public var roundCountDown:Number=0;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function CaiDaXiaoOpenNotify()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(CaiDaXiaoOpenNotify_PROTO==null) CaiDaXiaoOpenNotify_PROTO = Net.root.lookup("msg.CaiDaXiaoOpenNotify");
			var m:* = CaiDaXiaoOpenNotify_PROTO.create({history:history, roundIDNow:roundIDNow, roundCountDown:roundCountDown});
			var buffer:* = CaiDaXiaoOpenNotify_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

