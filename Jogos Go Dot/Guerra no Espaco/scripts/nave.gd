extends Node2D

var vel = 200 # Velocidade dos movimentos

func _ready(): # Cria o objeto, aqui fica o que deve acontecer
	set_process(true) # Inicia o processo
	pass

func get_input():
	var velocity = Vector2()
	
	if Input.is_action_pressed("direita"): # Olha o botao apertado
		velocity.x += 1
	
	if Input.is_action_pressed("esquerda"):
		velocity.x -= 1
	
	velocity = velocity.normalized() * vel # Movimentando a nave
	$AnimatedSprite.play()

func _process(delta):
	get_input()
	pass
	


