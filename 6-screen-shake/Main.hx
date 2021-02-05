import Player;
import Block;

using S2dTools;

final class Main extends hxd.App {

    private var player: Player;
    private var block: Block;

    private var originalX: Float;
    private var originalY: Float;

    override function init() {
        var font = hxd.res.DefaultFont.get();
        var text = new h2d.HtmlText.HtmlText(font, s2d);
        font.resizeTo(32);
        text.text = h2d.HtmlText.defaultFormatText("<font color='#FF0000'>SCREEN SHAKE</font>");
        text.x = s2d.width * 0.5;

        this.player = new Player(50, 50, 40, 75);
        this.block = new Block(200, 200, 130, 100);
        s2d.addChild(this.block);
        s2d.addChild(this.player);

        this.originalX = s2d.offsetX;
        this.originalY = s2d.offsetY;
    }

    override function update(dt: Float) {
        this.player.update(dt);
        this.player.tile = h2d.Tile.fromColor(0xFF0000);

        // Always reset back to where we were before we started shaking
        s2d.offsetX = this.originalX;
        s2d.offsetY = this.originalY;

        if (this.player.bounds.intersects(this.block.bounds)) {
            this.player.tile = h2d.Tile.fromColor(0xFFFFFF);
            s2d.shake(10);
        }
    }

    static function main() {
        new Main();
    }
 }
