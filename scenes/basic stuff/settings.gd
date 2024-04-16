extends Node2D

@onready var current = get_node("Label2")
@onready var master_slider = %master
@onready var music_slider = %music
@onready var sfx_slider = %sfx

var user_prefs: UserPreferences

func _ready():
	$".".show()
	user_prefs = UserPreferences.load_or_create()
	if master_slider:
		master_slider.value = user_prefs.master_v
	if music_slider:
		music_slider.value = user_prefs.music_v
	if sfx_slider:
		sfx_slider.value = user_prefs.sfx_v


func _on_button_1_pressed():
	if Utils.music == "main":
		Utils.music = "winter"
		current.text = "current music: Winter by Vivaldi"
		$"ui music".stop()
		$"ui music2".play()
		Utils.save_game()
		await(get_tree().create_timer(45.75)).timeout
		$"ui music2".stop()
	elif Utils.music == "winter":
		Utils.music = "main"
		current.text = "current music: Main Menu by Noah"
		$"ui music".play()
		$"ui music2".stop()
		Utils.save_game()
		await(get_tree().create_timer(24)).timeout
		$"ui music".stop()


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/basic stuff/ui.tscn")
	$".".hide()


func _on_button_3_pressed():
	$"sfx test".play()


func _on_master_value_changed(value):
	if user_prefs:
		user_prefs.master_v = value
		user_prefs.save()


func _on_music_value_changed(value):
	if user_prefs:
		user_prefs.music_v = value
		user_prefs.save()


func _on_sfx_value_changed(value):
	if user_prefs:
		user_prefs.sfx_v = value
		user_prefs.save()
