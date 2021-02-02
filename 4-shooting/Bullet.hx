final class Bullet extends h2d.Bitmap {

    private var direction: Array<Int>;
    private var speed: Int;

    public function new(x: Float, y: Float, width: Int, height: Int, direction: Array<Int>) {
        super();

        this.x = x;
        this.y = y;
        this.height = height;
        this.width = width;
        this.direction = direction;
        this.speed = 600;
    }

    public function update(dt: Float) {
        this.x += this.speed * this.direction[0] * dt;
        this.y += this.speed * this.direction[1] * dt;
    }
}
