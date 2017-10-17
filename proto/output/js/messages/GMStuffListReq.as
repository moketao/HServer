package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GMStuffListReq - 获取所有物品

		var message:GMStuffListReq = new GMStuffListReq();
		message.random = random;
		message.send();

	 **/
	public class GMStuffListReq extends Msg
	{
		public static var GMStuffListReq_PROTO:*;
		
		public var random:*;


		public static var PROTO_STATIC_ID:int = 9; // 协议号
		
		public function GMStuffListReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 9; // 协议号
		}
		public override function myEncode():*{
			if(GMStuffListReq_PROTO==null) GMStuffListReq_PROTO = Net.root.lookup("msg.GMStuffListReq");
			var m:* = GMStuffListReq_PROTO.create({random:random});
			var buffer:* = GMStuffListReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

