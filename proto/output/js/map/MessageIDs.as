package logic.nets
{
	import logic.handlers.*;
	
	public class MessageIDs
	{
		public static function getID(key:String):int
		{
			return map[key];
		}
		public static function getKey(id:String):String
		{
			return map2[id];
		}
		public static function getFun(id:String):Function
		{
			return mapfun[id];
		}
		public static var map:Object = {
				"msg.ChatReq" : 0,
				"msg.ChatRsp" : 1,
				"msg.CommonProtocol" : 2,
				"msg.CreatePlayerReq" : 3,
				"msg.CreatePlayerRsp" : 4,
				"msg.Curve" : 5,
				"msg.CurvePoint" : 6,
				"msg.GMStuffDelReq" : 7,
				"msg.GMStuffDelRsp" : 8,
				"msg.GMStuffListReq" : 9,
				"msg.GMStuffListRsp" : 10,
				"msg.GMStuffSaveReq" : 11,
				"msg.GMStuffSaveRsp" : 12,
				"msg.GetReq" : 13,
				"msg.GetRsp" : 14,
				"msg.KickNotify" : 15,
				"msg.LoginReq" : 16,
				"msg.LoginRsp" : 17,
				"msg.Player" : 18,
				"msg.PlayerList" : 19,
				"msg.PlayerNamesAndServer" : 20,
				"msg.RegReq" : 21,
				"msg.RegRsp" : 22,
				"msg.SelProfessionReq" : 23,
				"msg.SelProfessionRsp" : 24,
				"msg.SelectPlayerReq" : 25,
				"msg.SelectPlayerRsp" : 26,
				"msg.SelectServerReq" : 27,
				"msg.SelectServerRsp" : 28,
				"msg.ServerInfo" : 29,
				"msg.ServerListReq" : 30,
				"msg.ServerListRsp" : 31,
				"msg.Stuff" : 32,
				"msg.User" : 33,
				"tail":"tail"
		};
		public static var map2:Object = {
				"0" : "msg.ChatReq",
				"1" : "msg.ChatRsp",
				"2" : "msg.CommonProtocol",
				"3" : "msg.CreatePlayerReq",
				"4" : "msg.CreatePlayerRsp",
				"5" : "msg.Curve",
				"6" : "msg.CurvePoint",
				"7" : "msg.GMStuffDelReq",
				"8" : "msg.GMStuffDelRsp",
				"9" : "msg.GMStuffListReq",
				"10" : "msg.GMStuffListRsp",
				"11" : "msg.GMStuffSaveReq",
				"12" : "msg.GMStuffSaveRsp",
				"13" : "msg.GetReq",
				"14" : "msg.GetRsp",
				"15" : "msg.KickNotify",
				"16" : "msg.LoginReq",
				"17" : "msg.LoginRsp",
				"18" : "msg.Player",
				"19" : "msg.PlayerList",
				"20" : "msg.PlayerNamesAndServer",
				"21" : "msg.RegReq",
				"22" : "msg.RegRsp",
				"23" : "msg.SelProfessionReq",
				"24" : "msg.SelProfessionRsp",
				"25" : "msg.SelectPlayerReq",
				"26" : "msg.SelectPlayerRsp",
				"27" : "msg.SelectServerReq",
				"28" : "msg.SelectServerRsp",
				"29" : "msg.ServerInfo",
				"30" : "msg.ServerListReq",
				"31" : "msg.ServerListRsp",
				"32" : "msg.Stuff",
				"33" : "msg.User",
				"tail":"tail"
		};
		public static var mapfun:Object = {
				"1" : ChatRspHandler.run,
				"4" : CreatePlayerRspHandler.run,
				"8" : GMStuffDelRspHandler.run,
				"10" : GMStuffListRspHandler.run,
				"12" : GMStuffSaveRspHandler.run,
				"14" : GetRspHandler.run,
				"15" : KickNotifyHandler.run,
				"17" : LoginRspHandler.run,
				"22" : RegRspHandler.run,
				"24" : SelProfessionRspHandler.run,
				"26" : SelectPlayerRspHandler.run,
				"28" : SelectServerRspHandler.run,
				"31" : ServerListRspHandler.run,"tail":"tail"
		};
		public static function init():void
		{
			
				Net.watch(1,null,"",null,null,"ChatRsp");
				Net.watch(4,null,"",null,null,"CreatePlayerRsp");
				Net.watch(8,null,"",null,null,"GMStuffDelRsp");
				Net.watch(10,null,"",null,null,"GMStuffListRsp");
				Net.watch(12,null,"",null,null,"GMStuffSaveRsp");
				Net.watch(14,null,"",null,null,"GetRsp");
				Net.watch(15,null,"",null,null,"KickNotify");
				Net.watch(17,null,"",null,null,"LoginRsp");
				Net.watch(22,null,"",null,null,"RegRsp");
				Net.watch(24,null,"",null,null,"SelProfessionRsp");
				Net.watch(26,null,"",null,null,"SelectPlayerRsp");
				Net.watch(28,null,"",null,null,"SelectServerRsp");
				Net.watch(31,null,"",null,null,"ServerListRsp");
		}
	}
}