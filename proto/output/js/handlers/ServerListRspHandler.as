package logic.handlers
{
	import logic.messages.ServerListRsp;
	import logic.nets.Msg;
	public class ServerListRspHandler
	{
		public static function run(o:ServerListRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}