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
			addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(event:Event):void
		{
			addChild(new ParentView());
		}
	}
}
