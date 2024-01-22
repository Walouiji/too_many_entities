extends CharacterBody2D

var target = position

var player = null

var hp = 1

const SPEED = 150

const distance_to_player = 50

func init(init_position):
	position = init_position	

func _physics_process(_delta):
	if player != null:
		look_at(player.position)
		if(position.distance_to(player.position) > distance_to_player):
			velocity = position.direction_to(player.position) * SPEED
			move_and_slide()
		if(position.distance_to(player.position) < distance_to_player	):
			velocity = position.direction_to(player.position) * -SPEED
			move_and_slide()
	if is_instance_valid(self) and hp <= 0:
		self.queue_free()
		


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		player = body


func _on_timer_timeout():
	$Attack_area/attack_box.disabled = false
	$Timer.start()


func _on_damage_area_area_entered(area):
	if(area.name == "Hit_area"):
		hp -= 1
