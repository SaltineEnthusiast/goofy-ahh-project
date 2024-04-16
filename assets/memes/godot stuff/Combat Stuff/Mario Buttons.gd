extends Node


@onready var Combat = get_parent()
@onready var Sprite = get_parent().get_node("Mario/GangstaMario")
@onready var Name = get_parent().get_node("Mario/Name")
@onready var Health = get_parent().get_node("Mario HP")

func _process(_delta):
	if Combat.marioAlive == false:
		$Attack.hide()
		$Block.hide()
		$Item.hide()
		$Back.hide()
		$"Fat Blunt".hide()
		$"AK 47".hide()
		$"Mario Select".hide()
		Sprite.hide()
		Name.hide()
		Health.hide()

func _on_attack_pressed():
	$Attack.hide()
	$Block.hide()
	$Item.hide()
	$Back.show()
	$"Fat Blunt".hide()
	$"AK 47".show()


func _on_item_pressed():
	$Attack.hide()
	$Block.hide()
	$Item.hide()
	$Back.show()
	$"Fat Blunt".show()
	$"AK 47".hide()


func _on_back_pressed():
	$Attack.show()
	$Block.show()
	$Item.show()
	$Back.hide()
	$"Fat Blunt".hide()
	$"AK 47".hide()


func _on_mario_select_pressed():
	$Attack.show()
	$Block.show()
	$Item.show()
	$"Mario Select".hide()
	$"../Biden Buttons/Biden Select".show()
	$"../Biden Buttons/Attack".hide()
	$"../Biden Buttons/Item".hide()
	$"../Biden Buttons/Biden Blast".hide()
	$"../Biden Buttons/Dementia Dimension".hide()
	$"../Biden Buttons/Obama Chicken".hide()
	$"../Biden Buttons/Back".hide()
	$"../Biden Buttons/Block".hide()

