extends CharacterBody2D


@export var SPEED = 300.0

@export var lp = 10

func _physics_process(_delta):
	print(lp)
	look_at(get_global_mouse_position())
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	
	move_and_slide()
	
func _input(event):
	if event.is_action_pressed("left_click"):
		$Hit_area/Hitbox.disabled = false
		$Timer.start()


func _on_timer_timeout():
	$Hit_area/Hitbox.disabled = true
	$Timer.stop()


func _on_damage_area_area_entered(area):
	if(area.name == "Attack_area"):
		lp -= 1
