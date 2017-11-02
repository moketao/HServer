package logic.messages
{
{{if .IsEnum}}
	/** {{.Name}} - {{.Desc}} */
	public class {{.Name}}
	{
		{{- range $i,$v := .Values }}
		public static var {{$v.Name}}:int = {{$v.Number}};	//{{$v.Desc}}
		{{- end }}
	}
{{else}}
	import logic.nets.Net;
	import logic.nets.Msg;
	/**
		//{{.Name}} - {{.Desc}}

		var message:{{.Name}} = new {{.Name}}();
		{{- range $i,$v := .Fields }}
		message.{{$v.Name}} = {{$v.Name}};
		{{- end }}
		message.send();

	 **/
	public class {{.Name}} extends Msg
	{
		public static var {{.Name}}_PROTO:*;

		{{- range $i,$v := .Fields }}
		{{if $v.Desc}}
		/**{{$v.Desc}}*/{{end}}
		public var {{$v.Name}}:{{toAsType $v.Type  $v.Label}};
		{{- end }}


		public static var PROTO_STATIC_ID:int = {{.Code}}; // 协议号
		
		public function {{.Name}}()
		{
			initCode();
		}
		public function initCode():void{
			PROTO_ID = {{.Code}}; // 协议号
		}
		public override function myEncode():*{
			if({{.Name}}_PROTO==null) {{.Name}}_PROTO = Net.root.lookup("msg.{{.Name}}");
			var m:* = {{.Name}}_PROTO.create({
				{{- $c := counter -}}
				{{- range $i,$v := .Fields -}}
				{{- if call $c}}, {{end -}}
				{{$v.Name}}:{{$v.Name}}
				{{- end -}}
			});
			var buffer:* = {{.Name}}_PROTO.encode( m ).finish();
			return buffer
		}
	}
	{{end}}
}

