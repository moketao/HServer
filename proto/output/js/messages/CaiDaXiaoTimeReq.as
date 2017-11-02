package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoTimeReq - 猜大小时间

		var message:CaiDaXiaoTimeReq = new CaiDaXiaoTimeReq();
		message.send();

	 **/
	public class CaiDaXiaoTimeReq extends Msg
	{
		public static var CaiDaXiaoTimeReq_PROTO:*;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function CaiDaXiaoTimeReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(CaiDaXiaoTimeReq_PROTO==null) CaiDaXiaoTimeReq_PROTO = Net.root.lookup("msg.CaiDaXiaoTimeReq");
			var m:* = CaiDaXiaoTimeReq_PROTO.create({});
			var buffer:* = CaiDaXiaoTimeReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

