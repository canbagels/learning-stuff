extends CanvasLayer



func _on_continue_pressed():
	print("ok")
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_quit_pressed():
	print("womp womp")
	get_tree().quit()
