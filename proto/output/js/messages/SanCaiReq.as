package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//SanCaiReq - 散财

		var message:SanCaiReq = new SanCaiReq();
		message.say = say;
		message.jin = jin;
		message.yin = yin;
		message.ci = ci;
		message.manNum = manNum;
		message.send();

	 **/
	public class SanCaiReq extends Msg
	{
		public static var SanCaiReq_PROTO:*;
		
		public var say:String="";
		
		public var jin:Number=0;
		
		public var yin:Number=0;
		
		public var ci:Number=0;
		
		public var manNum:Number=0;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function SanCaiReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(SanCaiReq_PROTO==null) SanCaiReq_PROTO = Net.root.lookup("msg.SanCaiReq");
			var m:* = SanCaiReq_PROTO.create({say:say, jin:jin, yin:yin, ci:ci, manNum:manNum});
			var buffer:* = SanCaiReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

