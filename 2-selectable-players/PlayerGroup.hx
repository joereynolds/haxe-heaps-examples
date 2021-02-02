import Player;

final class PlayerGroup {
    private var players: Array<Player>;
    private var activePlayer: Player;
    private var activePlayerIndex: Int;

    public function new(players: Array<Player>) {
        this.players = players;
        this.activePlayerIndex = 0;
        this.activePlayer = this.players[this.activePlayerIndex];
    }

    public function getPlayers(): Array<Player> {
        return this.players;
    }

    public function update(dt: Float) {
        trace(this.activePlayerIndex);
        if (hxd.Key.isPressed(hxd.Key.TAB)) {
            this.activePlayerIndex = (this.activePlayerIndex + 1) % this.players.length;
            this.activePlayer = this.players[this.activePlayerIndex];
        }

        this.activePlayer.update(dt);
    }
}
