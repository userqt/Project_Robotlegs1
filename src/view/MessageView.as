package view
{

	import flash.display.Sprite;
	import flash.text.TextField;

	import view.buttons.HelloButton;

	public class MessageView extends Sprite
	{
		private var _message:TextField;

		public function MessageView()
		{
			var textField:TextField = new TextField();
			textField.width = 200;
			textField.text = "First Robotlegs Application";
			addChild( textField );

			_message = new TextField();
			_message.x = 0;
			_message.y = 50;
			addChild( _message );

			createButton();
		}

		public function fillText( text:String ):void
		{
			_message.text = text;
		}

		private function createButton():void
		{
			var helloButton:HelloButton = new HelloButton();
			helloButton.label( "Say Hello" );
			addChild( helloButton );
		}
	}
}
