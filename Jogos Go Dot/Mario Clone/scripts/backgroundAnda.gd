extends ParallaxBackground
var offset_x = 0
var game

export var speed = 0

func _ready():
		game = get_tree().current_scene

func _process(delta):
	if game.state == game.game_state.PLAYING:
		offset_x -= speed * delta
		scroll_offset = Vector2(offset_x, 0)


