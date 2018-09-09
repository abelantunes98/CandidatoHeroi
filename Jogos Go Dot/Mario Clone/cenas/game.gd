extends Node2D

var score = 0
enum game_state {PLAYING, STOPED}
var state = game_state.PLAYING

func _ready():
	$hud/score.text = str(score)
	var state = game_state.PLAYING

func count_score():
	score += 1
	$hud/score.text = str(score)

func game_over():
	state = game_state.STOPED
	
	saveData.last_score = score
	
	if saveData.best_score < score:
		saveData.best_score = score
	
	$obstaculos/Timer.stop()
	$mario.die()
	

