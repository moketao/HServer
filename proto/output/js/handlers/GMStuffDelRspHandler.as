package logic.handlers
{
	import logic.messages.GMStuffDelRsp;
	import logic.nets.Msg;
	public class GMStuffDelRspHandler
	{
		public static function run(o:GMStuffDelRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}