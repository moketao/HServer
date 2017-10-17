package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//ChatRsp - 聊天rsp

		var message:ChatRsp = new ChatRsp();
		message.name = name;
		message.icon = icon;
		message.content = content;
		message.time = time;
		message.channelType = channelType;
		message.send();

	 **/
	public class ChatRsp extends Msg
	{
		public static var ChatRsp_PROTO:*;
		
		public var name:String="";
		
		public var icon:String="";
		
		public var content:String="";
		
		public var time:*;
		
		public var channelType:*;


		public static var PROTO_STATIC_ID:int = 1; // 协议号
		
		public function ChatRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 1; // 协议号
		}
		public override function myEncode():*{
			if(ChatRsp_PROTO==null) ChatRsp_PROTO = Net.root.lookup("msg.ChatRsp");
			var m:* = ChatRsp_PROTO.create({name:name, icon:icon, content:content, time:time, channelType:channelType});
			var buffer:* = ChatRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

