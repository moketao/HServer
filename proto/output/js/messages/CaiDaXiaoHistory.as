package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//CaiDaXiaoHistory - 猜大小历史

		var message:CaiDaXiaoHistory = new CaiDaXiaoHistory();
		message.roundID = roundID;
		message.num = num;
		message.time = time;
		message.serverAllWinCoin = serverAllWinCoin;
		message.serverAllWinGold = serverAllWinGold;
		message.serverAllLostCoin = serverAllLostCoin;
		message.serverAllLostGold = serverAllLostGold;
		message.topWin = topWin;
		message.send();

	 **/
	public class CaiDaXiaoHistory extends Msg
	{
		public static var CaiDaXiaoHistory_PROTO:*;
		
		public var roundID: