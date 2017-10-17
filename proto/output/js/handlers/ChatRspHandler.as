package logic.handlers
{
	import logic.messages.ChatRsp;
	import logic.nets.Msg;
	public class ChatRspHandler
	{
		public static function run(o:ChatRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}