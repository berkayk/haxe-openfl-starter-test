import notifier.Notifier;

@:keepSub
class UsersModel {
	public var name = new Notifier<String>();
	public var id = new Notifier<String>();

	public function new() {}
}
