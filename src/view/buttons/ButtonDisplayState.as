package view.buttons
{

	import flash.display.Shape;

	public class ButtonDisplayState extends Shape
	{
		private var bgColor:uint;
		private var size:uint;

		public function ButtonDisplayState( bgColor:uint, size:uint )
		{
			this.bgColor = bgColor;
			this.size = size;
			draw();
		}

		private function draw():void
		{
			graphics.beginFill( bgColor );
			graphics.drawRect( 100, 100, size, size );
			graphics.endFill();
		}
	}
}
