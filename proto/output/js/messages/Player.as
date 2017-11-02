package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//Player - 玩家

		var message:Player = new Player();
		message.core = core;
		message.bag = bag;
		message.weapon = weapon;
		message.face = face;
		message.profession = profession;
		message.coin = coin;
		message.coinBind = coinBind;
		message.gold = gold;
		message.goldBind = goldBind;
		message.name = name;
		message.serverName = serverName;
		message.serverNameOld = serverNameOld;
		message.send();

	 **/
	public class Player extends Msg
	{
		public static var Player_PROTO:*;
		
		/**核心属性值*/
		public var core:logic.messages.Stuff;
		
		/**背包*/
		public var bag:Array=[] // Stuff ;
		
		/**武器*/
		public var weapon:logic.messages.Stuff;
		
		/**头像*/
		public var face:logic.messages.Stuff;
		
		/**职业*/
		public var profession:logic.messages.Stuff;
		
		/**游戏币*/
		public var coin:logic.messages.Stuff;
		
		/**游戏币绑定版*/
		public var coinBind:logic.messages.Stuff;
		
		/**钻石或金砖*/
		public var gold:logic.messages.Stuff;
		
		/**钻石或金砖绑定版*/
		public var goldBind:logic.messages.Stuff;
		
		/**名称,区别于用户名,这是具体的玩家实体的名称,一个用户拥有多个玩家实体*/
		public var name:String="";
		
		/**合服后，当前所在服务器的名称*/
		public var serverName:String="";
		
		/**合服前，所在服务器的名称*/
		public var serverNameOld:String="";


		public static var PROTO_STATIC_ID:int = 18; // 协议号
		
		public function Player()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 18; // 协议号
		}
		public override function myEncode():*{
			if(Player_PROTO==null) Player_PROTO = Net.root.lookup("msg.Player");
			var m:* = Player_PROTO.create({core:core, bag:bag, weapon:weapon, face:face, profession:profession, coin:coin, coinBind:coinBind, gold:gold, goldBind:goldBind, name:name, serverName:serverName, serverNameOld:serverNameOld});
			var buffer:* = Player_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

