extends Control

@export var player_entity: Node2D

func _physics_process(_delta):
	$"LP value".text = str(player_entity.lp)
