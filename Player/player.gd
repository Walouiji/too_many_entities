extends CharacterBody2D


@export var SPEED = 300.0

@export var lp = 3

func _physics_process(_delta):
	look_at(get_global_mouse_position())
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	
	move_and_slide()
