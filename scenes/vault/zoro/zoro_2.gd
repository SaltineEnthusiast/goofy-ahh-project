extends Node2D


func _on_button_1_pressed():
	get_tree().change_scene_to_file("res://scenes/vault//zoro/zoro.tscn")


func _on_button_2_pressed():
	$AudioStreamPlayer2D.play()
	await(get_tree().create_timer(2.1)).timeout
	get_tree().change_scene_to_file("res://scenes/vault/main/vault.tscn")
