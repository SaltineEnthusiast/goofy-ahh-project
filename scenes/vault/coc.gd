extends Node2D

func _ready():
	await(get_tree().create_timer(3)).timeout
	$CocStickman.show()
	$AudioStreamPlayer2D.play()
	await(get_tree().create_timer(5.3)).timeout
	get_tree().change_scene_to_file("res://scenes/vault/main/vault.tscn")
