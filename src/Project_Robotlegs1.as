package
{

	import context.HelloWorldContext;

	import flash.display.Sprite;

	import view.MessageView;

	public class Project_Robotlegs1 extends Sprite
	{

		protected var _context:HelloWorldContext;

		public function Project_Robotlegs1()
		{
			_context = new HelloWorldContext( this );
			init();

		}

		private function init():void
		{
			var message:MessageView = new MessageView();
			addChild( message );
		}
	}
}
