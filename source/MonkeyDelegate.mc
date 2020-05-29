using Toybox.WatchUi;

class MonkeyDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() {
        WatchUi.pushView(new HelloWorldView(), new HelloWorldDelegate(), WatchUi.SLIDE_RIGHT);
    }

    function onBack() {
        WatchUi.popView(WatchUi.SLIDE_RIGHT);
        return true;
    }
}