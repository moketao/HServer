package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoTimeRsp - 猜大小时间rsp

		var message:CaiDaXiaoTimeRsp = new CaiDaXiaoTimeRsp();
		message.dtime = dtime;
		message.send();

	 **/
	public class CaiDaXiaoTimeRsp extends Msg
	{
		public static var CaiDaXiaoTimeRsp_PROTO:*;
		
		public var dtime:Number=0;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function CaiDaXiaoTimeRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(CaiDaXiaoTimeRsp_PROTO==null) CaiDaXiaoTimeRsp_PROTO = Net.root.lookup("msg.CaiDaXiaoTimeRsp");
			var m:* = CaiDaXiaoTimeRsp_PROTO.create({dtime:dtime});
			var buffer:* = CaiDaXiaoTimeRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

