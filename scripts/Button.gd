extends Control
@onready var play_button = $playButton

func _ready():
	var playButton = $Button
	play_button.connect("pressed", self, "_on_playButton_pressed")

func _on_PlayButton_pressed():
	# Load the game scene
	var gameScene = preload("res://GameScene.tscn")
	
	# Transition to the game scene
	get_tree().change_scene(gameScene)
