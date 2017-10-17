package logic.handlers
{
	import logic.messages.GMStuffListRsp;
	import logic.nets.Msg;
	public class GMStuffListRspHandler
	{
		public static function run(o:GMStuffListRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}