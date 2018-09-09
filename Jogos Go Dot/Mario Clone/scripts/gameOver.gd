extends Node2D

func _ready():
	$canvas/Last_Score.text = "Last: " + str(saveData.last_score)
	$canvas/Best_Score.text =  "Best: " + str(saveData.best_score)


func _on_restart_pressed():
	get_tree().change_scene("res://cenas/game.tscn")


func _on_menu_pressed():
	get_tree().change_scene("res://cenas/menu.tscn")
