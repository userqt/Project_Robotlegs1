package view.buttons
{

	import flash.display.SimpleButton;
	import flash.text.TextField;

	public class HelloButton extends SimpleButton
	{
		public function HelloButton()
		{
			var upColor:uint = 0xFFCC00;
			var overColor:uint = 0xCCFF00;
			var downColor:uint = 0x00CCFF;
			var size:uint = 80;

			downState = new ButtonDisplayState( downColor, size );
			overState = new ButtonDisplayState( overColor, size );
			upState = new ButtonDisplayState( upColor, size );
			hitTestState = new ButtonDisplayState( upColor, size * 2 );
			hitTestState.x = -(size / 4);
			hitTestState.y = hitTestState.x;
			useHandCursor = true;
		}

		public function label( labelText:String ):void
		{
			var buttonLabel:TextField = new TextField();
			buttonLabel.text = labelText;
			buttonLabel.x = 100;
			buttonLabel.y = 100;
			this.addChild( buttonLabel );
		}
	}
}
