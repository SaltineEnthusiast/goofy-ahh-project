extends Node

@onready var Combat = get_parent()
@onready var Sprite = get_parent().get_node("Biden/JoeBiden")
@onready var Name = get_parent().get_node("Biden/Name")
@onready var Health = get_parent().get_node("Biden HP")

func _process(_delta):
	if Combat.bidenAlive == false:
		$Attack.hide()
		$Block.hide()
		$Item.hide()
		$Back.hide()
		$"Obama Chicken".hide()
		$"Biden Blast".hide()
		$"Biden Select".hide()
		Sprite.hide()
		Name.hide()
		Health.hide()

func _on_attack_pressed():
	$Attack.hide()
	$Item.hide()
	$Block.hide()
	$Back.show()
	$"Obama Chicken".hide()
	$"Biden Blast".show()
	$"Dementia Dimension".show()


func _on_item_pressed():
	$Attack.hide()
	$Block.hide()
	$Item.hide()
	$Back.show()
	$"Obama Chicken".show()
	$"Biden Blast".hide()

func _on_back_pressed():
	$Attack.show()
	$Block.show()
	$Item.show()
	$Back.hide()
	$"Obama Chicken".hide()
	$"Biden Blast".hide()
	$"Dementia Dimension".hide()


func _on_biden_select_pressed():
	$Attack.show()
	$Block.show()
	$Item.show()
	$"Biden Select".hide()
	$"../Mario Buttons/Mario Select".show()
	$"../Mario Buttons/Attack".hide()
	$"../Mario Buttons/Item".hide()
	$"../Mario Buttons/AK 47".hide()
	$"../Mario Buttons/Fat Blunt".hide()
	$"../Mario Buttons/Back".hide()
	$"../Mario Buttons/Block".hide()


func _on_die_pressed():
	get_tree().change_scene_to_file("res://scenes/basic stuff/ui.tscn")
