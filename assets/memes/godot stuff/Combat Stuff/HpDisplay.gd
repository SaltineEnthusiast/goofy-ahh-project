extends Label

@onready var Combat = get_parent()
@onready var Mario = get_parent().get_node("Mario HP")
@onready var Enemy = get_parent().get_node("Enemy HP")

func _process(_delta):
	text = str(Combat.bidenHP) + "/1000"
	Enemy.text = str(Combat.enemyHP) + "/1200"
	Mario.text = str(Combat.marioHP) + "/600"
