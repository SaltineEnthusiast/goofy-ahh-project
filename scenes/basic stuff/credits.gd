extends Node2D


func _on_button_1_pressed():
	get_tree().change_scene_to_file("res://scenes/basic stuff/ui.tscn")


func _on_button_2_pressed():
	OS.shell_open("https://godotengine.org")
