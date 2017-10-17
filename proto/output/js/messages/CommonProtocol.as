package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CommonProtocol - 普通协议

		var message:CommonProtocol = new CommonProtocol();
		message.id = id;
		message.submsg = submsg;
		message.send();

	 **/
	public class CommonProtocol extends Msg
	{
		public static var CommonProtocol_PROTO:*;
		
		public var id:*;
		
		public var submsg:*;


		public static var PROTO_STATIC_ID:int = 2; // 协议号
		
		public function CommonProtocol()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 2; // 协议号
		}
		public override function myEncode():*{
			if(CommonProtocol_PROTO==null) CommonProtocol_PROTO = Net.root.lookup("msg.CommonProtocol");
			var m:* = CommonProtocol_PROTO.create({id:id, submsg:submsg});
			var buffer:* = CommonProtocol_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

