package logic.handlers
{
	import logic.messages.GetRsp;
	import logic.nets.Msg;
	public class GetRspHandler
	{
		public static function run(o:GetRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}