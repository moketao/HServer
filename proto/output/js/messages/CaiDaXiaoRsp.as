package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoRsp - 猜大小下注rsp

		var message:CaiDaXiaoRsp = new CaiDaXiaoRsp();
		message.ret = ret;
		message.roundSum = roundSum;
		message.roundID = roundID;
		message.send();

	 **/
	public class CaiDaXiaoRsp extends Msg
	{
		public static var CaiDaXiaoRsp_PROTO:*;
		
		public var ret:String="";
		
		public var roundSum:logic.messages.CaiDaXiaoReq;
		
		public var roundID:Number=0;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function CaiDaXiaoRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(CaiDaXiaoRsp_PROTO==null) CaiDaXiaoRsp_PROTO = Net.root.lookup("msg.CaiDaXiaoRsp");
			var m:* = CaiDaXiaoRsp_PROTO.create({ret:ret, roundSum:roundSum, roundID:roundID});
			var buffer:* = CaiDaXiaoRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

