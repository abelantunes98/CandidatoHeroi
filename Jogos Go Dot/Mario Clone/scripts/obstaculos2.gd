extends Node2D

onready var lixeiro = preload("res://prefabs/obstaculos.tscn") 

func _ready():
	pass
	
func _on_Timer_timeout():
	criar_obstaculo()
	
func criar_obstaculo():
	var clone_lixo = lixeiro.instance()
	clone_lixo.position = Vector2(700, 276)
	add_child(clone_lixo)
	
