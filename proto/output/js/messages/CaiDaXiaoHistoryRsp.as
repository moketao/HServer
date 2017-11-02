package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoHistoryRsp - 猜大小历史

		var message:CaiDaXiaoHistoryRsp = new CaiDaXiaoHistoryRsp();
		message.history = history;
		message.roundIDNow = roundIDNow;
		message.roundCountDown = roundCountDown;
		message.roundSum = roundSum;
		message.send();

	 **/
	public class CaiDaXiaoHistoryRsp extends Msg
	{
		public static var CaiDaXiaoHistoryRsp_PROTO:*;
		
		public var history:Array=[] // CaiDaXiaoHistory ;
		
		public var roundIDNow:Number=0;
		
		public var roundCountDown:Number=0;
		
		public var roundSum:logic.messages.CaiDaXiaoReq;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function CaiDaXiaoHistoryRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(CaiDaXiaoHistoryRsp_PROTO==null) CaiDaXiaoHistoryRsp_PROTO = Net.root.lookup("msg.CaiDaXiaoHistoryRsp");
			var m:* = CaiDaXiaoHistoryRsp_PROTO.create({history:history, roundIDNow:roundIDNow, roundCountDown:roundCountDown, roundSum:roundSum});
			var buffer:* = CaiDaXiaoHistoryRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

