extends Node2D

const SPEED = 40

var direction = 1

@onready var ray_cast_r = $"RayCast R"
@onready var ray_cast_l = $"RayCast L"
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_l.is_colliding():
		direction= 1
		animated_sprite.flip_h = false
	if ray_cast_r.is_colliding():
		direction= -1
		animated_sprite.flip_h = true
	position.x += direction * SPEED * delta
