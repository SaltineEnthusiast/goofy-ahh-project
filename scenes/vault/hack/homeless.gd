extends Node2D


func _on_button_1_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/main/vault.tscn")


func _on_button_2_pressed():
	$Button2.hide()
	$Button3.show()
	$Label2.show()


func _on_button_3_pressed():
	$Button3.hide()
	$Button4.show()
	$Label2.hide()
	$Label3.show()


func _on_button_4_pressed():
	get_tree().quit()
