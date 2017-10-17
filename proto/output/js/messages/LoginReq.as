package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//LoginReq - 登陆

		var message:LoginReq = new LoginReq();
		message.name = name;
		message.pwd = pwd;
		message.loginRandomStr = loginRandomStr;
		message.send();

	 **/
	public class LoginReq extends Msg
	{
		public static var LoginReq_PROTO:*;
		
		public var name:String="";
		
		public var pwd:String="";
		
		/**用于重连的时候识别是否要踢掉线*/
		public var loginRandomStr:String="";


		public static var PROTO_STATIC_ID:int = 16; // 协议号
		
		public function LoginReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 16; // 协议号
		}
		public override function myEncode():*{
			if(LoginReq_PROTO==null) LoginReq_PROTO = Net.root.lookup("msg.LoginReq");
			var m:* = LoginReq_PROTO.create({name:name, pwd:pwd, loginRandomStr:loginRandomStr});
			var buffer:* = LoginReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

