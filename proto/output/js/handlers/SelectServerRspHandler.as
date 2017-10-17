package logic.handlers
{
	import logic.messages.SelectServerRsp;
	import logic.nets.Msg;
	public class SelectServerRspHandler
	{
		public static function run(o:SelectServerRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}