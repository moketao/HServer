package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//RegRsp - 注册rsp

		var message:RegRsp = new RegRsp();
		message.ret = ret;
		message.code = code;
		message.send();

	 **/
	public class RegRsp extends Msg
	{
		public static var RegRsp_PROTO:*;
		
		public var ret:String="";
		
		public var code:*;


		public static var PROTO_STATIC_ID:int = 22; // 协议号
		
		public function RegRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 22; // 协议号
		}
		public override function myEncode():*{
			if(RegRsp_PROTO==null) RegRsp_PROTO = Net.root.lookup("msg.RegRsp");
			var m:* = RegRsp_PROTO.create({ret:ret, code:code});
			var buffer:* = RegRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

