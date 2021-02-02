final class Player extends h2d.Bitmap {

    private var speed: Int;

    public function new(x: Int, y: Int, width: Int, height: Int) {
        super();

        this.x = x;
        this.y = y;
        this.height = height;
        this.width = width;
        this.speed = 400;
    }

    public function update(dt: Float) {
        if (hxd.Key.isDown(hxd.Key.UP)) {
            this.movement(dt, [0, -1]);
        }
        if (hxd.Key.isDown(hxd.Key.DOWN)) {
            this.movement(dt, [0, 1]);
        }
        if (hxd.Key.isDown(hxd.Key.LEFT)) {
            this.movement(dt, [-1, 0]);
        }
        if (hxd.Key.isDown(hxd.Key.RIGHT)) {
            this.movement(dt, [1, 0]);
        }
    }

    private function movement(dt: Float, vector: Array<Int>) {
        this.x += this.speed * vector[0] * dt;
        this.y += this.speed * vector[1] * dt;
    }
}
