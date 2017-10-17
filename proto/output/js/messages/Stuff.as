package logic.messages
{

	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//Stuff - 物品或物品

		var message:Stuff = new Stuff();
		message.name = name;
		message.num = num;
		message.level = level;
		message.numType = numType;
		message.numStr = numStr;
		message.icon = icon;
		message.desc = desc;
		message.getWay = getWay;
		message.index = index;
		message.curve = curve;
		message.levelMax = levelMax;
		message.tag = tag;
		message.sub = sub;
		message.send();

	 **/
	public class Stuff extends Msg
	{
		public static var Stuff_PROTO:*;
		
		/**名称,在配置里读取*/
		public var name:String="";
		
		/**数量*/
		public var num:*;
		
		/**等级*/
		public var level:*;
		
		/**数量类型，只在编辑器中使用，用于辨别示范包含文字，0代表纯数字，1代表包含文字枚举。*/
		public var numType:*;
		
		/**如果是文字枚举，则本数组包含对应数值的文字含义。*/
		public var numStr:String="";
		
		/**图标名称*/
		public var icon:String="";
		
		/**文字描述*/
		public var desc:String="";
		
		/**获得途径说明*/
		public var getWay:String="";
		
		/**背包下标（位置）*/
		public var index:*;
		
		/**曲线*/
		public var curve:*;
		
		/**最大等级*/
		public var levelMax:*;
		
		/**分类、功能标签*/
		public var tag:*;
		
		/**子物品集合*/
		public var sub:*;


		public static var PROTO_STATIC_ID:int = 32; // 协议号
		
		public function Stuff()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = 32; // 协议号
		}
		public override function myEncode():*{
			if(Stuff_PROTO==null) Stuff_PROTO = Net.root.lookup("msg.Stuff");
			var m:* = Stuff_PROTO.create({name:name, num:num, level:level, numType:numType, numStr:numStr, icon:icon, desc:desc, getWay:getWay, index:index, curve:curve, levelMax:levelMax, tag:tag, sub:sub});
			var buffer:* = Stuff_PROTO.encode( m ).finish();
			return buffer
		}
	}
	
}

