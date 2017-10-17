package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//ServerListRsp - 服务器列表Rsp

		var message:ServerListRsp = new ServerListRsp();
		message.ret = ret;
		message.serverinfo = serverinfo;
		message.send();

	 **/
	public class ServerListRsp extends Msg
	{
		public static var ServerListRsp_PROTO:*;
		
		public var ret:String="";
		
		public var serverinfo:*;


		public static var PROTO_STATIC_ID:int = 31; // 协议号
		
		public function ServerListRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 31; // 协议号
		}
		public override function myEncode():*{
			if(ServerListRsp_PROTO==null) ServerListRsp_PROTO = Net.root.lookup("msg.ServerListRsp");
			var m:* = ServerListRsp_PROTO.create({ret:ret, serverinfo:serverinfo});
			var buffer:* = ServerListRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

