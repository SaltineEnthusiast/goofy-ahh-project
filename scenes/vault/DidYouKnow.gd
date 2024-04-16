extends Node2D

@onready var text = $Label

func _process(_delta):
	text.global_position = (text.global_position + Vector2(0,-1))
	$Foxy.global_position = ($Foxy.global_position + Vector2(0,-1))
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/vault/main/vault.tscn")
