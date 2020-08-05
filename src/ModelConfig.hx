import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

class ModelConfig implements IConfig {
	@inject public var injector:IInjector;

	public function new() {}

	public function configure() {
		injector.map(UsersModel).asSingleton();
		trace("Initialized ModelConfig");
	}
}
