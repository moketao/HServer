package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GMStuffDelRsp - 删除物品rsp

		var message:GMStuffDelRsp = new GMStuffDelRsp();
		message.ret = ret;
		message.send();

	 **/
	public class GMStuffDelRsp extends Msg
	{
		public static var GMStuffDelRsp_PROTO:*;
		
		public var ret:String="";


		public static var PROTO_STATIC_ID:int = 8; // 协议号
		
		public function GMStuffDelRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 8; // 协议号
		}
		public override function myEncode():*{
			if(GMStuffDelRsp_PROTO==null) GMStuffDelRsp_PROTO = Net.root.lookup("msg.GMStuffDelRsp");
			var m:* = GMStuffDelRsp_PROTO.create({ret:ret});
			var buffer:* = GMStuffDelRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

