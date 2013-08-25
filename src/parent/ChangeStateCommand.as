package parent
{
	import robotlegs.bender.bundles.mvcs.Command;

	import shared.StateEvent;

	public class ChangeStateCommand extends Command
	{

		[Inject]
		public var stateEvent:StateEvent;


		/*
		 *    Changes top level game state
		 *    read incoming state request and do appropriate work,
		 *    then change state on model in order to fire update event.
		 *
		 * */
		override public function execute():void
		{
			switch (stateEvent.type)
			{
				case StateEvent.STATE_A:
					trace("State change A");
					break;
				case StateEvent.STATE_B:
					trace("State change B");
					break;
					//gameModel.state = gameStateEvent.state;
				default:
					throw new Error(stateEvent.type + " is not handled in ChangeGameState command.");
			}
		}

	}
}
