package logic.handlers
{
	import logic.messages.{{.Name}};
	import logic.nets.Msg;
	public class {{.Name}}Handler
	{
		public static function run(o:{{.Name}}):void
		{
			{{if hasSuffix .Name "Rsp"}}if(!Msg.isOK(o)){return;}{{end}}
			
		}
	}
}