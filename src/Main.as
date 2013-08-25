package
{

	import flash.display.Sprite;
	import flash.events.Event;

	import parent.ParentView;

	import robotlegs.bender.framework.impl.Context;

	public class Main extends Sprite
	{
		private var _context:Context;

		public function Main()
		{
//			_context = new Context();
//			_context.afterInitializing(contextInitialized)
//			_context.logLevel = LogLevel.INFO;
//			_context.install(MVCSBundle).configure(ParentConfig).configure(new ContextView(this));

			addEventListener(Event.ADDED_TO_STAGE, init);

		}

		private function init(event:Event):void
		{

			trace("adding parent");
			addChild(new ParentView());
		}
	}
}
