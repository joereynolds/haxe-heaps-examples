import Player;

final class Main extends hxd.App {

    private var player: Player;

    override function init() {
        var font = hxd.res.DefaultFont.get();
        var text = new h2d.HtmlText.HtmlText(font, s2d);
        font.resizeTo(32);
        text.text = h2d.HtmlText.defaultFormatText("<font color='#FF0000'>SHOOTING BULLETS</font>");
        text.x = s2d.width * 0.5;

        this.player = new Player(50, 50, 40, 75);
        s2d.addChild(this.player);
    }

    override function update(dt: Float) {
        this.player.update(dt);

        for (bullet in this.player.bullets) {
            s2d.addChild(bullet);
            bullet.update(dt);
        }
    }

    static function main() {
        new Main();
    }
 }
