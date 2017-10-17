package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//ServerInfo - 服务器

		var message:ServerInfo = new ServerInfo();
		message.name = name;
		message.ip = ip;
		message.online = online;
		message.num = num;
		message.max = max;
		message.send();

	 **/
	public class ServerInfo extends Msg
	{
		public static var ServerInfo_PROTO:*;
		
		public var name:String="";
		
		public var ip:String="";
		
		/**当前在线数*/
		public var online:*;
		
		/**当前用户数*/
		public var num:*;
		
		/**上限*/
		public var max:*;


		public static var PROTO_STATIC_ID:int = 29; // 协议号
		
		public function ServerInfo()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 29; // 协议号
		}
		public override function myEncode():*{
			if(ServerInfo_PROTO==null) ServerInfo_PROTO = Net.root.lookup("msg.ServerInfo");
			var m:* = ServerInfo_PROTO.create({name:name, ip:ip, online:online, num:num, max:max});
			var buffer:* = ServerInfo_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

