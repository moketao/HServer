package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CreatePlayerRsp - 创建Player rsp

		var message:CreatePlayerRsp = new CreatePlayerRsp();
		message.ret = ret;
		message.players = players;
		message.send();

	 **/
	public class CreatePlayerRsp extends Msg
	{
		public static var CreatePlayerRsp_PROTO:*;
		
		public var ret:String="";
		
		public var players:*;


		public static var PROTO_STATIC_ID:int = 4; // 协议号
		
		public function CreatePlayerRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 4; // 协议号
		}
		public override function myEncode():*{
			if(CreatePlayerRsp_PROTO==null) CreatePlayerRsp_PROTO = Net.root.lookup("msg.CreatePlayerRsp");
			var m:* = CreatePlayerRsp_PROTO.create({ret:ret, players:players});
			var buffer:* = CreatePlayerRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

