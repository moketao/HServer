package logic.handlers
{
	import logic.messages.SelProfessionRsp;
	import logic.nets.Msg;
	public class SelProfessionRspHandler
	{
		public static function run(o:SelProfessionRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}