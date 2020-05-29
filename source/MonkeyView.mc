using Toybox.WatchUi;

class MonkeyView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MonkeyLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        
        dc.drawText(dc.getWidth() / 2,
  		      		dc.getHeight() - 60,
        			Graphics.FONT_XTINY,
        			"Monkey version: " + monkeyVersion(),
        			Graphics.TEXT_JUSTIFY_CENTER);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

	function monkeyVersion() {
		var mySettings = System.getDeviceSettings();
		var version = mySettings.monkeyVersion;
		
		return Lang.format("$1$.$2$.$3$", version);
	}
}
