package context
{

	import org.robotlegs.mvcs.Context;

	import view.MessageView;
	import view.MessageViewMediator;

	/**
	 *     Context is the hear of the application where all the
	 *     initializing of dependency injection and the various core utilities that Robotlegs uses
	 */
	public class HelloWorldContext extends Context
	{
		/**
		 * Every Robotlegs application requires a root-view—an instance of
		 DisplayObjectContainer—which is the view that will be provided to the mediatorMap,
		 so that when child views are added to this root-view they can be automatically mediated
		 (an instance of their mediator is created and provided with the child view that it mediates
		 for).
		 */
		public function HelloWorldContext( view:Project_Robotlegs1 )
		{
			// That is why here we pass our root view
			super( view );
		}

		/**
		 * Inside of your Context you override the startup method.
		 * The startup() method is called when the Context has been fully initialized.
		 * Behind the scenes, prior to calling startup(), the Context is creating instances
		 * of all the core Robotlegs utilities, preparing to receive dependency injection mappings,
		 * and creating the event dispatcher that will be used to communicate amongst your application’s objects.
		 */
		override public function startup():void
		{
			/**
			 * mediatorMap is a utility for mapping mediators to corresponding views
			 * listens to the contextView for ADDED_TO_STAGE
			 * and REMOVED_FROM_STAGE events to automatically create and destroy mediators
			 * as their corresponding view components are added and removed from the display list
			 */
			mediatorMap.mapView( MessageView, MessageViewMediator );
		}
	}
}
