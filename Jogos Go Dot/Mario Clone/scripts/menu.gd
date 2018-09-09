extends Node2D

func _ready():
	pass


func _on_botaoIniciar_pressed():
	get_tree().change_scene("res://cenas/game.tscn")
