final class Block extends h2d.Bitmap {

    public var bounds: h2d.col.Bounds;

    public function new(x: Int, y: Int, width: Int, height: Int) {
        super();

        this.x = x;
        this.y = y;
        this.height = height;
        this.width = width;
        this.bounds = h2d.col.Bounds.fromValues(x, y, width, height);
    }
}
