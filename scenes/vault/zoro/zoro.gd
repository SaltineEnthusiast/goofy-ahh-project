extends Node2D

func _ready():
	await(get_tree().create_timer(1.5)).timeout
	get_tree().change_scene_to_file("res://scenes/vault/zoro/zoro_2.tscn")
