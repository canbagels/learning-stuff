extends Area2D

@onready var playeranimator = %playeranimator


@onready var timer = $Timer

var IsDying = false

signal death
func _ready():
	IsDying = false

func _on_body_entered(_body):
	IsDying = true
	playeranimator.play("dying")
	await get_tree().create_timer(1).timeout
	print ("you died lol")
	timer.start()


func _on_timer_timeout():
	get_tree().reload_current_scene()



