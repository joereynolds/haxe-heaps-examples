import Player;

final class Main extends hxd.App {

    private var player: Player;

    override function init() {
        var text = new h2d.HtmlText.HtmlText(hxd.res.DefaultFont.get(), s2d);
        text.text = h2d.HtmlText.defaultFormatText("<font color='#FF0000'>MOVING RECTANGLES</font>");
        text.x = s2d.width * 0.5;

        this.player = new Player(50, 50, 40, 75);
        s2d.addChild(this.player);
    }

    override function update(dt: Float) {
        this.player.update(dt);
    }

    static function main() {
        new Main();
    }
 }
