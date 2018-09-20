extends RigidBody2D

var esta_vivo = true

func _ready():
	$anim.play("andando")
	linear_velocity = Vector2(0,0)

func _process(delta):
	
	if esta_vivo:
		if linear_velocity.y == 0:
			$anim.play("andando")
			
		#elif linear_velocity.y > 0.1:
			#$anim.play("pulando")

func pular():
	linear_velocity = Vector2(0, - 500)
	
func _input(event):
	if esta_vivo and position.y > 200:
		if event.is_action_pressed("espaco") or event.is_action_pressed("toque"):
			pular()
			
func die():
	$anim.stop()
	get_tree().change_scene("res://cenas/gameOver.tscn")