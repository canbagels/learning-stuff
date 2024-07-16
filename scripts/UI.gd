extends CanvasLayer

class_name ui
signal game_started
var score = 0

@onready var end_score = $end_game_screen/end_game_score_display/end_score

@onready var end_game_screen = $end_game_screen

func _ready():
	pass

func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func update_points(points: int):
	score = points

func on_game_over():
	end_game_screen.visible = true
	$end_game_screen/end_game_score_display/end_score.text = "%d" % score
func _get_configuration_warnings():
	get_tree().reload_current_scene()
