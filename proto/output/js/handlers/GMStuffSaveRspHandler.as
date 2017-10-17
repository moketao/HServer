package logic.handlers
{
	import logic.messages.GMStuffSaveRsp;
	import logic.nets.Msg;
	public class GMStuffSaveRspHandler
	{
		public static function run(o:GMStuffSaveRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}