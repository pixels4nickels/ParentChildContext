/**
 * Created with IntelliJ IDEA.
 * User: krogers
 * Date: 8/24/13
 * Time: 3:38 PM
 * To change this template use File | Settings | File Templates.
 */
package parent
{
	import flash.display.Sprite;
	import flash.events.Event;

	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.impl.Context;

	public class ParentView extends Sprite
	{
		private var _context:Context;

		public function ParentView()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);

		}

		private function init(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_context = new Context();
			_context.afterInitializing(contextInitialized);
			_context.install(MVCSBundle).configure(ParentConfig).configure(new ContextView(this));
		}

		private function contextInitialized():void
		{
			trace("ParentView::contextInitialized");
		}

	}
}
