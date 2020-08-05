import robotlegs.bender.extensions.contextView.ContextView;
import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.framework.impl.Context;
import robotlegs.bender.framework.api.IContext;
import feathers.controls.Application;
import feathers.controls.Label;

class Bootstrap extends Application {
	private var _context:IContext;

	public function new() {
		super();

		_context = new Context().install(MVCSBundle).configure(ModelConfig).configure(new ContextView(this));
	}
}
