package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoHistoryReq - 猜大小历史

		var message:CaiDaXiaoHistoryReq = new CaiDaXiaoHistoryReq();
		message.send();

	 **/
	public class CaiDaXiaoHistoryReq extends Msg
	{
		public static var CaiDaXiaoHistoryReq_PROTO:*;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function CaiDaXiaoHistoryReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(CaiDaXiaoHistoryReq_PROTO==null) CaiDaXiaoHistoryReq_PROTO = Net.root.lookup("msg.CaiDaXiaoHistoryReq");
			var m:* = CaiDaXiaoHistoryReq_PROTO.create({});
			var buffer:* = CaiDaXiaoHistoryReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

