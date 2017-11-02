package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GetReq - 获取物品

		var message:GetReq = new GetReq();
		message.name = name;
		message.num = num;
		message.userName = userName;
		message.send();

	 **/
	public class GetReq extends Msg
	{
		public static var GetReq_PROTO:*;
		
		public var name:String="";
		
		public var num:Number=0;
		
		public var userName:String="";


		public static var PROTO_STATIC_ID:int = 13; // 协议号
		
		public function GetReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 13; // 协议号
		}
		public override function myEncode():*{
			if(GetReq_PROTO==null) GetReq_PROTO = Net.root.lookup("msg.GetReq");
			var m:* = GetReq_PROTO.create({name:name, num:num, userName:userName});
			var buffer:* = GetReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

