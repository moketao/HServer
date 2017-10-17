package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//RegReq - 注册

		var message:RegReq = new RegReq();
		message.name = name;
		message.pwd = pwd;
		message.send();

	 **/
	public class RegReq extends Msg
	{
		public static var RegReq_PROTO:*;
		
		public var name:String="";
		
		public var pwd:String="";


		public static var PROTO_STATIC_ID:int = 21; // 协议号
		
		public function RegReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 21; // 协议号
		}
		public override function myEncode():*{
			if(RegReq_PROTO==null) RegReq_PROTO = Net.root.lookup("msg.RegReq");
			var m:* = RegReq_PROTO.create({name:name, pwd:pwd});
			var buffer:* = RegReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

