extends Node2D



func _on_button_1_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/hack/homeless.tscn")


func _on_button_2_pressed():
	get_tree().quit()
