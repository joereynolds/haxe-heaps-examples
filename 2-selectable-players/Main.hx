import Player;
import PlayerGroup;

final class Main extends hxd.App {
    private var playerGroup: PlayerGroup;

    override function init() {
        var font = hxd.res.DefaultFont.get();
        var text = new h2d.HtmlText.HtmlText(font, s2d);
        font.resizeTo(32);
        text.text = h2d.HtmlText.defaultFormatText("<font color='#FF0000'>SELECTABLE PLAYERS</font>");
        text.x = s2d.width * 0.5;

        var firstPlayer = new Player(50, 50, 40, 75);
        var secondPlayer = new Player(50, 150, 40, 75);
        var thirdPlayer = new Player(50, 250, 40, 75);

        this.playerGroup = new PlayerGroup([firstPlayer, secondPlayer, thirdPlayer]);

        for (player in this.playerGroup.getPlayers()) {
            s2d.addChild(player);
        }
    }

    override function update(dt: Float) {
        this.playerGroup.update(dt);
    }

    static function main() {
        new Main();
    }
 }
