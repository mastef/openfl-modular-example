package;


class Module1 {
	
	public function new () {
		var a = new Module2();
		trace("1 loaded");

		new game.Game1();
		new fla.Common1();
	}
	
}