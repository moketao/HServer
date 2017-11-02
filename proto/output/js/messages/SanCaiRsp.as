package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SanCaiRsp - 散财 rsp

		var message:SanCaiRsp = new SanCaiRsp();
		message.ret = ret;
		message.send();

	 **/
	public class SanCaiRsp extends Msg
	{
		public static var SanCaiRsp_PROTO:*;
		
		public var ret:String="";


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function SanCaiRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(SanCaiRsp_PROTO==null) SanCaiRsp_PROTO = Net.root.lookup("msg.SanCaiRsp");
			var m:* = SanCaiRsp_PROTO.create({ret:ret});
			var buffer:* = SanCaiRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

