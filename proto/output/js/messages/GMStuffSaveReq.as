package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GMStuffSaveReq - 保存物品

		var message:GMStuffSaveReq = new GMStuffSaveReq();
		message.stuff = stuff;
		message.send();

	 **/
	public class GMStuffSaveReq extends Msg
	{
		public static var GMStuffSaveReq_PROTO:*;
		
		public var stuff:*;


		public static var PROTO_STATIC_ID:int = 11; // 协议号
		
		public function GMStuffSaveReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 11; // 协议号
		}
		public override function myEncode():*{
			if(GMStuffSaveReq_PROTO==null) GMStuffSaveReq_PROTO = Net.root.lookup("msg.GMStuffSaveReq");
			var m:* = GMStuffSaveReq_PROTO.create({stuff:stuff});
			var buffer:* = GMStuffSaveReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

