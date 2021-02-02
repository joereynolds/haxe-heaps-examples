import Player;
import Block;

final class Main extends hxd.App {

    private var player: Player;
    private var block: Block;

    override function init() {
        var font = hxd.res.DefaultFont.get();
        var text = new h2d.HtmlText.HtmlText(font, s2d);
        font.resizeTo(32);
        text.text = h2d.HtmlText.defaultFormatText("<font color='#FF0000'>COLLISION DETECTION</font>");
        text.x = s2d.width * 0.5;

        this.player = new Player(50, 50, 40, 75);
        this.block = new Block(200, 200, 130, 100);
        s2d.addChild(this.block);
        s2d.addChild(this.player);
    }

    override function update(dt: Float) {
        this.player.update(dt);

        this.player.tile = h2d.Tile.fromColor(0xFF0000);
        if (this.player.bounds.intersects(this.block.bounds)) {
            this.player.tile = h2d.Tile.fromColor(0xFFFFFF);
        }
    }

    static function main() {
        new Main();
    }
 }
