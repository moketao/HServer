package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SelProfessionReq - 选择职业

		var message:SelProfessionReq = new SelProfessionReq();
		message.index = index;
		message.send();

	 **/
	public class SelProfessionReq extends Msg
	{
		public static var SelProfessionReq_PROTO:*;
		
		public var index:int;


		public static var PROTO_STATIC_ID:int = 23; // 协议号
		
		public function SelProfessionReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 23; // 协议号
		}
		public override function myEncode():*{
			if(SelProfessionReq_PROTO==null) SelProfessionReq_PROTO = Net.root.lookup("msg.SelProfessionReq");
			var m:* = SelProfessionReq_PROTO.create({index:index});
			var buffer:* = SelProfessionReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

