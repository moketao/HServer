package logic.handlers
{
	import logic.messages.SelectPlayerRsp;
	import logic.nets.Msg;
	public class SelectPlayerRspHandler
	{
		public static function run(o:SelectPlayerRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}