package view.buttons
{

	import events.HelloWorldMessageEvent;

	import flash.events.MouseEvent;

	import org.robotlegs.mvcs.Mediator;

	public class HelloButtonMediator extends Mediator
	{
		[Inject]
		public var buttonView:HelloButton;

		override public function onRegister():void
		{
			addViewListener( MouseEvent.CLICK, mouseClickHandler )
		}

		private function mouseClickHandler( event:MouseEvent ):void
		{
			dispatch( new HelloWorldMessageEvent( HelloWorldMessageEvent.MESSAGE_DISPATCHED, "Hello World", false, false ) );
		}
	}
}
