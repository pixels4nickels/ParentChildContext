package parent
{
	import child.ChildView;

	import robotlegs.bender.bundles.mvcs.Mediator;

	public class ParentViewMediator extends Mediator
	{
		[Inject]
		public var view:ParentView;

		override public function initialize():void
		{
			trace("ParentViewMediator::initialize");
			view.addChild(new ChildView());
		}

	}
}
