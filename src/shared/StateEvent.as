package shared
{
	import flash.events.Event;

	public class StateEvent extends Event
	{
		public static const STATE_A:String = "state_a";
		public static const STATE_B:String = "state_b";

		public function StateEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}

		override public function clone():Event
		{
			return new StateEvent(type, bubbles, cancelable);
		}
	}
}
