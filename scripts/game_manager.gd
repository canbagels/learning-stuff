extends Node

@onready var score_label = $"score label"

var score = 0
var endofgame = false


	

func add_point():
	score += 1
	score_label.text = " you collected " + str(score) + " coins. "
func end_game():
	var endofgame = true
	
