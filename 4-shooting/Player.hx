import Bullet;


final class Player extends h2d.Bitmap {

    private var speed: Int;

    public var bullets: Array<Bullet>;

    public function new(x: Float, y: Float, width: Int, height: Int) {
        super();

        this.x = x;
        this.y = y;
        this.height = height;
        this.width = width;
        this.speed = 400;
        this.bullets = [];
    }

    public function update(dt: Float) {
        var movementVector = [0, 0];
        var moving = true;

        if (hxd.Key.isDown(hxd.Key.UP)) {
            movementVector = [0, -1];
        } else if (hxd.Key.isDown(hxd.Key.DOWN)) {
            movementVector = [0, 1];
        } else if (hxd.Key.isDown(hxd.Key.LEFT)) {
            movementVector = [-1, 0];
        } else if (hxd.Key.isDown(hxd.Key.RIGHT)) {
            movementVector = [1, 0];
        } else {
            moving = false;
        }

        if (hxd.Key.isPressed(hxd.Key.SPACE) && moving) {
            this.bullets.push(new Bullet(this.x, this.y, 5, 5, movementVector));
        }

        this.movement(dt, movementVector);

    }

    private function movement(dt: Float, vector: Array<Int>) {
        this.x += this.speed * vector[0] * dt;
        this.y += this.speed * vector[1] * dt;
    }
}
