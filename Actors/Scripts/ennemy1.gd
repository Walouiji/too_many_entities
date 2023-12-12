extends CharacterBody2D

var target = position

var player = null

const SPEED = 150
var can_hit = false
func _physics_process(_delta):
	if player != null:
		look_at(player.position)
		if(position.distance_to(player.position) > 100):
			velocity = position.direction_to(player.position) * SPEED
			move_and_slide()
		if(position.distance_to(player.position) < 100):
			velocity = position.direction_to(player.position) * -SPEED
			move_and_slide()
		


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		player = body
	pass # Replace with function body.


func _on_timer_timeout():
	print("hit target")
	can_hit = true
	pass # Replace with function body.
