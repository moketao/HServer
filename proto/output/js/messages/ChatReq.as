package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//ChatReq - 聊天

		var message:ChatReq = new ChatReq();
		message.content = content;
		message.send();

	 **/
	public class ChatReq extends Msg
	{
		public static var ChatReq_PROTO:*;
		
		public var content:String="";


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function ChatReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(ChatReq_PROTO==null) ChatReq_PROTO = Net.root.lookup("msg.ChatReq");
			var m:* = ChatReq_PROTO.create({content:content});
			var buffer:* = ChatReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

