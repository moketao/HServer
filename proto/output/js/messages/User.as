package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//User - 用户

		var message:User = new User();
		message.pwd = pwd;
		message.name = name;
		message.playerNamesAndServer = playerNamesAndServer;
		message.player = player;
		message.listOfPlayer = listOfPlayer;
		message.send();

	 **/
	public class User extends Msg
	{
		public static var User_PROTO:*;
		
		public var pwd:String="";
		
		public var name:String="";
		
		public var playerNamesAndServer:*;
		
		/**当前控制的player*/
		public var player:*;
		
		/**用户拥有的所有玩家实体*/
		public var listOfPlayer:*;


		public static var PROTO_STATIC_ID:int = 33; // 协议号
		
		public function User()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 33; // 协议号
		}
		public override function myEncode():*{
			if(User_PROTO==null) User_PROTO = Net.root.lookup("msg.User");
			var m:* = User_PROTO.create({pwd:pwd, name:name, playerNamesAndServer:playerNamesAndServer, player:player, listOfPlayer:listOfPlayer});
			var buffer:* = User_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

