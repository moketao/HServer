package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//GMStuffSaveRsp - 保存物品Rsp

		var message:GMStuffSaveRsp = new GMStuffSaveRsp();
		message.ret = ret;
		message.send();

	 **/
	public class GMStuffSaveRsp extends Msg
	{
		public static var GMStuffSaveRsp_PROTO:*;
		
		public var ret:String="";


		public static var PROTO_STATIC_ID:int = 12; // 协议号
		
		public function GMStuffSaveRsp()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 12; // 协议号
		}
		public override function myEncode():*{
			if(GMStuffSaveRsp_PROTO==null) GMStuffSaveRsp_PROTO = Net.root.lookup("msg.GMStuffSaveRsp");
			var m:* = GMStuffSaveRsp_PROTO.create({ret:ret});
			var buffer:* = GMStuffSaveRsp_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

