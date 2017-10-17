package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//LoginRsp - 登录rsp

		var message:LoginRsp = new LoginRsp();
		message.ret = ret;
		message.serverList = serverList;
		message.send();

	 **/
	public class LoginRsp extends Msg
	{
		public static var LoginRsp_PROTO:*;
		
		public var ret:String="";
		
		public var serverList:*;


		public static var PROTO_STATIC_ID:int = 17; // 协议号
		
		public function LoginRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 17; // 协议号
		}
		public override function myEncode():*{
			if(LoginRsp_PROTO==null) LoginRsp_PROTO = Net.root.lookup("msg.LoginRsp");
			var m:* = LoginRsp_PROTO.create({ret:ret, serverList:serverList});
			var buffer:* = LoginRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

