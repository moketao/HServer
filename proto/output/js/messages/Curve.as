package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//Curve - 曲线

		var message:Curve = new Curve();
		message.point = point;
		message.maxNum = maxNum;
		message.curveRange = curveRange;
		message.num = num;
		message.name = name;
		message.send();

	 **/
	public class Curve extends Msg
	{
		public static var Curve_PROTO:*;
		
		public var point:Array=[] // CurvePoint ;
		
		/**（最高等级的）最大数量*/
		public var maxNum:Number=0;
		
		/**曲线或数量的浮动范围*/
		public var curveRange:Number=0;
		
		/**计算出来的，每一个等级对应的数值*/
		public var num:Array=[] // uint64 ;
		
		/**针对的属性名*/
		public var name:String="";


		public static var PROTO_STATIC_ID:int = 5; // 协议号
		
		public function Curve()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 5; // 协议号
		}
		public override function myEncode():*{
			if(Curve_PROTO==null) Curve_PROTO = Net.root.lookup("msg.Curve");
			var m:* = Curve_PROTO.create({point:point, maxNum:maxNum, curveRange:curveRange, num:num, name:name});
			var buffer:* = Curve_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

