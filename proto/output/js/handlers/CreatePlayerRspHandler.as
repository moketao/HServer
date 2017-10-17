package logic.handlers
{
	import logic.messages.CreatePlayerRsp;
	import logic.nets.Msg;
	public class CreatePlayerRspHandler
	{
		public static function run(o:CreatePlayerRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}