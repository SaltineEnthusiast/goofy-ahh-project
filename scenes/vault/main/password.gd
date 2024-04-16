extends Node2D

var progress = 0


func _on_button_4_pressed():
	if progress == 0 or 1:
		progress += 1
	else:
		progress = 0


func _on_button_1_pressed():
	if progress == 2 or 3:
		progress += 1
	else:
		progress = 0


func _on_button_3_pressed():
	if progress == 4 or 6:
		progress +=1
	else:
		progress = 0


func _on_button_2_pressed():
	if progress == 5 or 7:
		progress += 1
	else:
		progress = 0


func _on_button_6_pressed():
	if progress == 8:
		progress += 1
	else:
		progress = 0


func _on_button_5_pressed():
	if progress == 9:
		progress += 1
	else:
		progress = 0


func _on_button_7_pressed():
	if progress == 10:
		Utils.secret = true
		Utils.save_game()
		get_tree().change_scene_to_file("res://scenes/vault/main/vault.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/vault/main/wrong.tscn")


func _on_button_8_pressed():
	get_tree().change_scene_to_file("res://scenes/basic stuff/ui.tscn")
