package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CurvePoint - 曲线中的点

		var message:CurvePoint = new CurvePoint();
		message.x = x;
		message.y = y;
		message.send();

	 **/
	public class CurvePoint extends Msg
	{
		public static var CurvePoint_PROTO:*;
		
		/**x值*/
		public var x:*;
		
		/**y值*/
		public var y:*;


		public static var PROTO_STATIC_ID:int = 6; // 协议号
		
		public function CurvePoint()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 6; // 协议号
		}
		public override function myEncode():*{
			if(CurvePoint_PROTO==null) CurvePoint_PROTO = Net.root.lookup("msg.CurvePoint");
			var m:* = CurvePoint_PROTO.create({x:x, y:y});
			var buffer:* = CurvePoint_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

