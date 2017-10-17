package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//KickNotify - 踢掉线rsp

		var message:KickNotify = new KickNotify();
		message.ret = ret;
		message.send();

	 **/
	public class KickNotify extends Msg
	{
		public static var KickNotify_PROTO:*;
		
		public var ret:String="";


		public static var PROTO_STATIC_ID:int = 15; // 协议号
		
		public function KickNotify()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 15; // 协议号
		}
		public override function myEncode():*{
			if(KickNotify_PROTO==null) KickNotify_PROTO = Net.root.lookup("msg.KickNotify");
			var m:* = KickNotify_PROTO.create({ret:ret});
			var buffer:* = KickNotify_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

