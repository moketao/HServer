package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CreatePlayerReq - 创建Player

		var message:CreatePlayerReq = new CreatePlayerReq();
		message.playerName = playerName;
		message.profession = profession;
		message.send();

	 **/
	public class CreatePlayerReq extends Msg
	{
		public static var CreatePlayerReq_PROTO:*;
		
		public var playerName:String="";
		
		public var profession:Number=0;


		public static var PROTO_STATIC_ID:int = 3; // 协议号
		
		public function CreatePlayerReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 3; // 协议号
		}
		public override function myEncode():*{
			if(CreatePlayerReq_PROTO==null) CreatePlayerReq_PROTO = Net.root.lookup("msg.CreatePlayerReq");
			var m:* = CreatePlayerReq_PROTO.create({playerName:playerName, profession:profession});
			var buffer:* = CreatePlayerReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

