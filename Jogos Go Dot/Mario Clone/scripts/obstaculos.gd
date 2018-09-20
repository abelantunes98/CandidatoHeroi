extends Node2D

var game
export var speed = 0

func _ready():
	game = get_tree().current_scene

func _process(delta):
	
	if game.state == game.game_state.PLAYING:
		var pos_x = position.x
		pos_x -= speed * delta
		position.x = pos_x
		
		if position.x < -100:
			queue_free()
		
	
func _on_Area2D_body_entered(body):
	if game.state == game.game_state.PLAYING:
		if body.name == "mario":
			game.game_over()


func _on_AreaScore_body_entered(body):
	if game.state == game.game_state.PLAYING:
		if body.name == "mario":
			game.count_score()
			game.aumentaVeloChao()
