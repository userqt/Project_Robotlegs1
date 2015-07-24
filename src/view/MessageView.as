package view
{

	import flash.display.Sprite;
	import flash.text.TextField;

	public class MessageView extends Sprite
	{
		public function MessageView()
		{
			var textField:TextField = new TextField();
			textField.text = "Hello, World";
			addChild( textField );
		}
	}
}
