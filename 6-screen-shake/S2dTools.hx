/*
   We use a static extension as a clean method of adding shake behaviour
   to our 2D scene.
*/
class S2dTools {
    static public function shake(scene: h2d.Scene, shakeSeverity: Int) {
        scene.offsetX = Math.random() * shakeSeverity;
        scene.offsetY = Math.random() * shakeSeverity;
    }
}
