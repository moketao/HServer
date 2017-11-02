package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//WinVO - 赢信息

		var message:WinVO = new WinVO();
		message.name = name;
		message.totalWinCoin = totalWinCoin;
		message.totalWinGold = totalWinGold;
		message.send();

	 **/
	public class WinVO extends Msg
	{
		public static var WinVO_PROTO:*;
		
		public var name:String="";
		
		public var totalWinCoin:int;
		
		public var totalWinGold:int;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function WinVO()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(WinVO_PROTO==null) WinVO_PROTO = Net.root.lookup("msg.WinVO");
			var m:* = WinVO_PROTO.create({name:name, totalWinCoin:totalWinCoin, totalWinGold:totalWinGold});
			var buffer:* = WinVO_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

