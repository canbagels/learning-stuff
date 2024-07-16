extends CanvasLayer

@onready var start_button = $CanvasLayer/CenterContainer/Start
var score =0

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res:://game.tscn")
