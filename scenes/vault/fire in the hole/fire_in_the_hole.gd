extends Node2D

var rng = RandomNumberGenerator.new()

func _ready():
	var varible = 1
	while varible == 1:
		var random_number = rng.randi_range(1, 3)
		if random_number == 1:
			$AudioStreamPlayer2D.play()
		elif random_number == 2:
			$AudioStreamPlayer2D2.play()
		elif random_number == 3:
			$AudioStreamPlayer2D3.play()
		await(get_tree().create_timer(1.3)).timeout


func _on_button_1_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/fire in the hole/lobotomy.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/fire in the hole/lobotomy.tscn")


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/vault/fire in the hole/lobotomy.tscn")
