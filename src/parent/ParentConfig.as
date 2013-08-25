package parent
{
	import child.ChildView;
	import child.ChildViewMediator;

	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.modularity.api.IModuleConnector;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;

	import shared.StateEvent;

	public class ParentConfig implements IConfig
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
			mediatorMap.map(ParentView).toMediator(ParentViewMediator);

			commandMap.map(StateEvent.STATE_A).toCommand(ChangeStateCommand);
			commandMap.map(StateEvent.STATE_B).toCommand(ChangeStateCommand);

			moduleConnector.onDefaultChannel().receiveEvent(StateEvent.STATE_A);
		}

	}
}
