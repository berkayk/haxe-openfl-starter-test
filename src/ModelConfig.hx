import robotlegs.bender.framework.api.IContext;
import org.swiftsuspenders.utils.DescribedType;
import robotlegs.bender.framework.impl.Context;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

@:keepSub
class ModelConfig implements IConfig implements DescribedType {
	@inject public var injector:IInjector;
	@inject public var context:IContext;

	public function new() {}

	public function configure() {
		context.afterInitializing(init);
	}

	private function init():Void {
		injector.map(UsersModel).asSingleton();
		trace("Initialized ModelConfig at init method.");
	}
}
