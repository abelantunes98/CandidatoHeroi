extends RigidBody2D

var esta_vivo = true

func _ready():
	linear_velocity = Vector2(0,0)
	

func _process(delta):
	# chamando animacoes
	if esta_vivo:
		if linear_velocity.y == 0: #Se tiver no chao ele corre
			$anim.play("andando")
		
		elif linear_velocity.y < -0.1:
			$anim.play("pulando")
		

# movimentos
func pular():
	linear_velocity = Vector2(0, -450)
	$anim.play("pulando")
	
	
# Eventos de entrada
func _input(event):
	if esta_vivo:
		if event.is_action_pressed("espaco"):
			pass
		
func morrer():
	if esta_vivo:
		esta_vivo = false
	