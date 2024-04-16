extends Node

@onready var Combat = get_parent()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var Energy = Combat.energy
	
	$Bar.scale = Vector2(Energy*.002, 0.15)
	
	if Energy > 0:
		$Bg.show()
		$LowHpBg.hide()
	else:
		$Bg.hide()
		$LowHpBg.show()
	
