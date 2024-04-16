extends Node2D

func _ready():
	Settings.hide()
	Utils.load_game()
	if Utils.music == "main":
		$"ui music".play()
	elif Utils.music == "winter":
		$"ui music2".play()


func _on_button_1_pressed():
	get_tree().change_scene_to_file("res://scenes/game/joke.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/basic stuff/credits.tscn")


func _on_button_3_pressed():
	get_tree().quit()


func _on_secret_pressed():
	if Utils.secret == false:
		get_tree().change_scene_to_file("res://scenes/vault/main/password.tscn")
	elif Utils.secret == true:
		get_tree().change_scene_to_file("res://scenes/vault/main/vault.tscn")


func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://scenes/basic stuff/settings.tscn")
