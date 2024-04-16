extends Node2D

func _ready():
	if Utils.lobotomy == true:
		$CanvasLayer.show()
		$Button9.show()


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/zoro/zoro.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/basic stuff/ui.tscn")


func _on_button_4_pressed():
	$AudioStreamPlayer2D.play()


func _on_button_5_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/racism.tscn")

func B_Movie():
	get_tree().change_scene_to_file("res://scenes/vault/DidYouKnow.tscn")


func _on_button_8_pressed():
	$AudioStreamPlayer2D2.play()
	$normal.show()
	await(get_tree().create_timer(1)).timeout
	get_tree().change_scene_to_file("res://scenes/vault/fire in the hole/fire_in_the_hole.tscn")


func _on_button_9_pressed():
	Utils.lobotomy = false
	Utils.save_game()
	$"Extreme-demon".show()
	$AudioStreamPlayer2D3.play()
	await(get_tree().create_timer(2)).timeout
	$CanvasLayer.hide()
	$Button9.hide()
	$"Extreme-demon".hide()
	$AudioStreamPlayer2D4.play()


func _on_button_6_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/hack/yourhacked.tscn")


func _on_button_10_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/coc.tscn")
