package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SelectServerReq - 选择服务器

		var message:SelectServerReq = new SelectServerReq();
		message.serverName = serverName;
		message.send();

	 **/
	public class SelectServerReq extends Msg
	{
		public static var SelectServerReq_PROTO:*;
		
		public var serverName:String="";


		public static var PROTO_STATIC_ID:int = 27; // 协议号
		
		public function SelectServerReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 27; // 协议号
		}
		public override function myEncode():*{
			if(SelectServerReq_PROTO==null) SelectServerReq_PROTO = Net.root.lookup("msg.SelectServerReq");
			var m:* = SelectServerReq_PROTO.create({serverName:serverName});
			var buffer:* = SelectServerReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

