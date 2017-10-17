package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GMStuffDelReq - 删除物品

		var message:GMStuffDelReq = new GMStuffDelReq();
		message.name = name;
		message.send();

	 **/
	public class GMStuffDelReq extends Msg
	{
		public static var GMStuffDelReq_PROTO:*;
		
		public var name:String="";


		public static var PROTO_STATIC_ID:int = 7; // 协议号
		
		public function GMStuffDelReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 7; // 协议号
		}
		public override function myEncode():*{
			if(GMStuffDelReq_PROTO==null) GMStuffDelReq_PROTO = Net.root.lookup("msg.GMStuffDelReq");
			var m:* = GMStuffDelReq_PROTO.create({name:name});
			var buffer:* = GMStuffDelReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

