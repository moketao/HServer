package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//ServerListReq - 服务器列表

		var message:ServerListReq = new ServerListReq();
		message.send();

	 **/
	public class ServerListReq extends Msg
	{
		public static var ServerListReq_PROTO:*;


		public static var PROTO_STATIC_ID:int = 30; // 协议号
		
		public function ServerListReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 30; // 协议号
		}
		public override function myEncode():*{
			if(ServerListReq_PROTO==null) ServerListReq_PROTO = Net.root.lookup("msg.ServerListReq");
			var m:* = ServerListReq_PROTO.create({});
			var buffer:* = ServerListReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

