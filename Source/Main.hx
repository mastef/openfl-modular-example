import openfl.display.Application;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.geom.Rectangle;
import openfl.display.Loader;
import openfl.display.Sprite;
import openfl.display.FPS;

import openfl.events.Event;


class Main extends Sprite {
	
	
	private var fps:FPS;
	
	
	public function new () {
		super ();

		var bitmapData = new BitmapData (200, 200, true, 0xFF24AFC4);
		var rect = new Rectangle (50, 50, 100, 100);
		bitmapData.fillRect (rect, 0xFFCCCCCC);
		js.Browser.document.body.appendChild (bitmapData.image.src);

		addEventListener (Event.ADDED_TO_STAGE, function (_) {
			start(bitmapData);
		});
		
	}
	
	
	private function start (bitmapData:BitmapData):Void {
		fps = new FPS ();
		addChild (fps);
		
		var a = new Module1();
	}
	
	
	// Entry point
	
	
	static function main () {

		var div = js.Browser.document.createElement ("div");
		js.Browser.document.body.appendChild (div);

		var app = new Application ();
		app.create ({
			windows: [{
				width: 550,
				height: 400,
				element: div
			}]
		});
		app.exec ();

		var stage = app.window.stage;
		stage.addChild (new Main ());

	}
}