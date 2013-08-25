package child
{
	import flash.display.Sprite;
	import flash.events.Event;

	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.impl.Context;

	import shared.StateEvent;

	public class ChildView extends Sprite
	{
		private var _context:Context;

		public function ChildView()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);

		}

		private function init(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			//dispatchEvent(new StateEvent(StateEvent.STATE_A));
			initializeContext();
		}

		private function initializeContext():void
		{
			_context = new Context();
			_context.afterInitializing(contextInitialized);
			_context.install(MVCSBundle).configure(ChildConfig).configure(new ContextView(this));
		}

		private function contextInitialized():void
		{
			trace("ChildView::contextInitialized");
			//dispatchEvent(new StateEvent(StateEvent.STATE_A));
		}

	}
}
