package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GetRsp - 获取物品rsp

		var message:GetRsp = new GetRsp();
		message.ret = ret;
		message.stuff = stuff;
		message.send();

	 **/
	public class GetRsp extends Msg
	{
		public static var GetRsp_PROTO:*;
		
		public var ret:String="";
		
		public var stuff:*;


		public static var PROTO_STATIC_ID:int = 14; // 协议号
		
		public function GetRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 14; // 协议号
		}
		public override function myEncode():*{
			if(GetRsp_PROTO==null) GetRsp_PROTO = Net.root.lookup("msg.GetRsp");
			var m:* = GetRsp_PROTO.create({ret:ret, stuff:stuff});
			var buffer:* = GetRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

