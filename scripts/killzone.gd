extends Area2D

@onready var playeranimator = %playeranimator

var Deathcount = 0
@onready var timer = $Timer

var IsDying = false

signal death
func _ready():
	IsDying = false
	Deathcount = 0

func _on_body_entered(_body):
	Deathcount += 1
	IsDying = true
	if Deathcount == 1:
		playeranimator.play("dying")
	print ("you died lol")
	timer.start()


func _on_timer_timeout():
	get_tree().reload_current_scene()



