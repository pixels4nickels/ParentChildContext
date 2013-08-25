package child
{
	import robotlegs.bender.bundles.mvcs.Mediator;

	import shared.StateEvent;

	public class ChildViewMediator extends Mediator
	{
		[Inject]
		public var view:ChildView;

		override public function initialize():void
		{
			trace("ChildViewMediator::initialize");
			dispatch(new StateEvent(StateEvent.STATE_A));
		}
	}
}
