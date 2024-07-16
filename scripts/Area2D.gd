extends Area2D



@onready var timer = $Timer


signal death


func _on_body_entered(_body):
	print ("you died lol")
	
