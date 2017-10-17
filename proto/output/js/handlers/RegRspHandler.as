package logic.handlers
{
	import logic.messages.RegRsp;
	import logic.nets.Msg;
	public class RegRspHandler
	{
		public static function run(o:RegRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}