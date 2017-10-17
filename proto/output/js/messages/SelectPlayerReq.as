package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SelectPlayerReq - 选择Player

		var message:SelectPlayerReq = new SelectPlayerReq();
		message.playerName = playerName;
		message.send();

	 **/
	public class SelectPlayerReq extends Msg
	{
		public static var SelectPlayerReq_PROTO:*;
		
		public var playerName:String="";


		public static var PROTO_STATIC_ID:int = 25; // 协议号
		
		public function SelectPlayerReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 25; // 协议号
		}
		public override function myEncode():*{
			if(SelectPlayerReq_PROTO==null) SelectPlayerReq_PROTO = Net.root.lookup("msg.SelectPlayerReq");
			var m:* = SelectPlayerReq_PROTO.create({playerName:playerName});
			var buffer:* = SelectPlayerReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

