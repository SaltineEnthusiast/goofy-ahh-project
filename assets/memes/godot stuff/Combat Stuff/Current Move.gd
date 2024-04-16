extends Label

@onready var Combat = get_parent()


func _process(_delta):
	if Combat.marioAlive == true and Combat.bidenAlive == true:
		text = "Biden Move: " + String(Combat.bidenMove) + " | " + "Mario Move: " + String(Combat.marioMove)
	elif Combat.marioAlive == false and Combat.bidenAlive == true:
		text = "Biden Move: " + String(Combat.bidenMove) + " | " + "Mario died"
	elif Combat.marioAlive == true and Combat.bidenAlive == false:
		text = "Biden died" + " | " + "Mario Move: " + String(Combat.marioMove)
