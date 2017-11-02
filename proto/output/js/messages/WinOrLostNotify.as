package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//WinOrLostNotify - 输赢通知

		var message:WinOrLostNotify = new WinOrLostNotify();
		message.type = type;
		message.open = open;
		message.totalWinCoin = totalWinCoin;
		message.totalWinGold = totalWinGold;
		message.totalLostCoin = totalLostCoin;
		message.totalLostGold = totalLostGold;
		message.send();

	 **/
	public class WinOrLostNotify extends Msg
	{
		public static var WinOrLostNotify_PROTO:*;
		
		public var type:int;
		
		public var open:Array=[] // int32 ;
		
		public var totalWinCoin:int;
		
		public var totalWinGold:int;
		
		public var totalLostCoin:int;
		
		public var totalLostGold:int;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function WinOrLostNotify()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(WinOrLostNotify_PROTO==null) WinOrLostNotify_PROTO = Net.root.lookup("msg.WinOrLostNotify");
			var m:* = WinOrLostNotify_PROTO.create({type:type, open:open, totalWinCoin:totalWinCoin, totalWinGold:totalWinGold, totalLostCoin:totalLostCoin, totalLostGold:totalLostGold});
			var buffer:* = WinOrLostNotify_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

