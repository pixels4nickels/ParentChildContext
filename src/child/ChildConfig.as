package child
{
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.modularity.api.IModuleConnector;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;

	import shared.StateEvent;

	public class ChildConfig implements IConfig
	{

		[Inject]
		public var injector:IInjector;

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var commandMap:IEventCommandMap;

		[Inject]
		public var contextView:ContextView;

		[Inject]
		public var moduleConnector:IModuleConnector;

		public function configure():void
		{
			mediatorMap.map(ChildView).toMediator(ChildViewMediator);

			moduleConnector.onDefaultChannel().relayEvent(StateEvent.STATE_A);
		}

	}
}
