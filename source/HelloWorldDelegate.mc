using Toybox.WatchUi;

class HelloWorldDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() {
        WatchUi.pushView(new MonkeyView(), new MonkeyDelegate(), WatchUi.SLIDE_LEFT);
    }

}