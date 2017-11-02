package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//ErrAlertNotify - 错误提示

		var message:ErrAlertNotify = new ErrAlertNotify();
		message.errMsg = errMsg;
		message.code = code;
		message.send();

	 **/
	public class ErrAlertNotify extends Msg
	{
		public static var ErrAlertNotify_PROTO:*;
		
		/**错误信息，如：您长时间未操作，链接已断开*/
		public var errMsg:String="";
		
		/**错误代码*/
		public var code:logic.messages.ENError;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function ErrAlertNotify()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(ErrAlertNotify_PROTO==null) ErrAlertNotify_PROTO = Net.root.lookup("msg.ErrAlertNotify");
			var m:* = ErrAlertNotify_PROTO.create({errMsg:errMsg, code:code});
			var buffer:* = ErrAlertNotify_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

