import h2d.Scene;

final class Main extends hxd.App {

    private var mainMenu: h2d.Scene;
    private var mainMenuText: h2d.Text.Text;

    private var shopMenu: h2d.Scene;
    private var shopMenuText: h2d.Text.Text;

    private var originalScene: h2d.Scene;

    override function init() {
        var font = hxd.res.DefaultFont.get();
        var text = new h2d.HtmlText.HtmlText(font, s2d);
        font.resizeTo(32);
        text.text = h2d.HtmlText.defaultFormatText("<font color='#FF0000'>SCENE MANAGEMENT</font>");
        text.x = s2d.width * 0.5;

        var defaultText = new h2d.Text.Text(font, s2d);
        defaultText.text = "Escape goes to the main menu.\nTab goes to the shop.\nBackspace returns here.";

        this.originalScene = s2d;

        this.mainMenu = new Scene();
        this.mainMenuText = new h2d.Text.Text(font, this.mainMenu);
        this.mainMenuText.text = "This is the main menu";

        this.shopMenu = new Scene();
        this.shopMenuText = new h2d.Text.Text(font, this.shopMenu);
        this.shopMenuText.text = "This is the shop";
    }

    override function update(dt: Float) {
        if (hxd.Key.isPressed(hxd.Key.ESCAPE)) {
            this.setScene2D(this.mainMenu);
        }
        if (hxd.Key.isPressed(hxd.Key.TAB)) {
            this.setScene2D(this.shopMenu);
        }
        if (hxd.Key.isPressed(hxd.Key.BACKSPACE)) {
            this.setScene2D(this.originalScene);
        }
    }

    static function main() {
        new Main();
    }
 }
