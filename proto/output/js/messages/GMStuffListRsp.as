package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GMStuffListRsp - 获取所有物品

		var message:GMStuffListRsp = new GMStuffListRsp();
		message.ret = ret;
		message.list = list;
		message.send();

	 **/
	public class GMStuffListRsp extends Msg
	{
		public static var GMStuffListRsp_PROTO:*;
		
		public var ret:String="";
		
		public var list:Array=[] // Stuff ;


		public static var PROTO_STATIC_ID:int = 10; // 协议号
		
		public function GMStuffListRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 10; // 协议号
		}
		public override function myEncode():*{
			if(GMStuffListRsp_PROTO==null) GMStuffListRsp_PROTO = Net.root.lookup("msg.GMStuffListRsp");
			var m:* = GMStuffListRsp_PROTO.create({ret:ret, list:list});
			var buffer:* = GMStuffListRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

