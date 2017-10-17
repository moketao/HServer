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
			{{- range .Messages }}
				"msg.{{.Name}}" : {{.Code}},
			{{- end}}
				"tail":"tail"
		};
		public static var map2:Object = {
			{{- range .Messages }}
				"{{.Code}}" : "msg.{{.Name}}",
			{{- end}}
				"tail":"tail"
		};
		public static var mapfun:Object = {
			{{- range  .Messages }}
				{{- if or (hasSuffix .Name "Rsp") (hasSuffix .Name "Notify") }}
				"{{- .Code}}" : {{.Name}}Handler.run,{{- end -}}
			{{ end -}}
			"tail":"tail"
		};
		public static function init():void
		{
			{{ range  .Messages }}
				{{- if or (hasSuffix .Name "Rsp") (hasSuffix .Name "Notify") }}
				Net.watch({{- .Code}},null,"",null,null,"{{.Name}}");{{ end -}}
			{{ end }}
		}
	}
}