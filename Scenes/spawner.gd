extends Node2D

@export var ennemy_entity:PackedScene

	
func _process(_delta):
	if get_tree().paused == true:
		$GameOverScreen.visible = true

func _on_timer_timeout():
	var mob = ennemy_entity.instantiate()
	
	mob.init($Marker2D.position)
	add_child(mob)
	pass # Replace with function body.
