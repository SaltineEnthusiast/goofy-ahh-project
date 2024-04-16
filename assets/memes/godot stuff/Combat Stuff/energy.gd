extends Label

@onready var energy = get_parent().get_parent()

func _process(_delta):
	text = str(energy.energy) + "%"
