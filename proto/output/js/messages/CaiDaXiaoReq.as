package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoReq - 猜大小下注

		var message:CaiDaXiaoReq = new CaiDaXiaoReq();
		message.da_coin = da_coin;
		message.xiao_coin = xiao_coin;
		message.baozi_coin = baozi_coin;
		message.dan_coin = dan_coin;
		message.shuang_coin = shuang_coin;
		message.da_gold = da_gold;
		message.xiao_gold = xiao_gold;
		message.baozi_gold = baozi_gold;
		message.dan_gold = dan_gold;
		message.shuang_gold = shuang_gold;
		message.roundNum = roundNum;
		message.send();

	 **/
	public class CaiDaXiaoReq extends Msg
	{
		public static var CaiDaXiaoReq_PROTO:*;
		
		public var da_coin:Number=0;
		
		public var xiao_coin:Number=0;
		
		public var baozi_coin:Number=0;
		
		public var dan_coin:Number=0;
		
		public var shuang_coin:Number=0;
		
		public var da_gold:Number=0;
		
		public var xiao_gold:Number=0;
		
		public var baozi_gold:Number=0;
		
		public var dan_gold:Number=0;
		
		public var shuang_gold:Number=0;
		
		/**只在服务器记录时使用*/
		public var roundNum:Number=0;


		public static var PROTO_STATIC_ID:int = 0; // 协议号
		
		public function CaiDaXiaoReq()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 0; // 协议号
		}
		public override function myEncode():*{
			if(CaiDaXiaoReq_PROTO==null) CaiDaXiaoReq_PROTO = Net.root.lookup("msg.CaiDaXiaoReq");
			var m:* = CaiDaXiaoReq_PROTO.create({da_coin:da_coin, xiao_coin:xiao_coin, baozi_coin:baozi_coin, dan_coin:dan_coin, shuang_coin:shuang_coin, da_gold:da_gold, xiao_gold:xiao_gold, baozi_gold:baozi_gold, dan_gold:dan_gold, shuang_gold:shuang_gold, roundNum:roundNum});
			var buffer:* = CaiDaXiaoReq_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

