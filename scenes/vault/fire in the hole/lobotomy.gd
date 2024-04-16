extends Node2D

var something = 0

func _on_button_1_pressed():
	$Button1.hide()
	$AudioStreamPlayer2D.play()
	something += 1


func _on_button_2_pressed():
	if something == 1:
		$Button2.hide()
		$AudioStreamPlayer2D2.play()
		something += 1


func _on_button_3_pressed():
	if something == 2:
		$Button3.hide()
		$AudioStreamPlayer2D3.play()
		$Button4.show()


func _on_button_4_pressed():
	$AudioStreamPlayer2D.play()
	$AudioStreamPlayer2D2.play()
	$AudioStreamPlayer2D3.play()
	await(get_tree().create_timer(1.5)).timeout
	Utils.lobotomy = true
	Utils.save_game()
	get_tree().change_scene_to_file("res://scenes/vault/main/vault.tscn")
