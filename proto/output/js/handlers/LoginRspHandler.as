package logic.handlers
{
	import logic.messages.LoginRsp;
	import logic.nets.Msg;
	public class LoginRspHandler
	{
		public static function run(o:LoginRsp):void
		{
			if(!Msg.isOK(o)){return;}
			
		}
	}
}