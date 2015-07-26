package view
{

	import events.HelloWorldMessageEvent;

	import org.robotlegs.mvcs.Mediator;

	public class MessageViewMediator extends Mediator
	{
		[Inject]
		public var messageView:MessageView;

		/**
		 * When calling onRegister() at this point, the mediator is already initialized
		 * and all the injections are injected.
		 * In this method we can add event listeners to the view and the application
		 * Every mediator should have onRegister()
		 */
		override public function onRegister():void
		{
			trace( "Mediator registered." );
			addContextListener( HelloWorldMessageEvent.MESSAGE_DISPATCHED, messageHandler );
		}

		private function messageHandler( event:HelloWorldMessageEvent ):void
		{
			messageView.fillText( event.message );
		}

	}
}
