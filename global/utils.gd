extends Node

var secret = false
var lobotomy = false
var music = "main"

const save_path = "res://saves/savegame.bin"


func save_game():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	var data: Dictionary = {
		"secret": secret,
		"lobotomy": lobotomy,
		"music": music,
	}
	var jstr = JSON.stringify(data)
	file.store_line(jstr)
	file = null


func load_game():
	var file = FileAccess.open(save_path, FileAccess.READ)
	if FileAccess.file_exists(save_path) == true:
		if not file.eof_reached():
			var current_line = JSON.parse_string(file.get_line())
			if current_line:
				secret = current_line["secret"]
				lobotomy = current_line["lobotomy"]
				music = current_line["music"]
	file = null
