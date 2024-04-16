extends Node

@onready var button = get_parent().get_node("Combat/Biden Buttons")
@onready var button2 = get_parent().get_node("Combat/Mario Buttons")
@onready var nuh_uh = get_parent().get_node("Combat/nuh uh")

var energy = 100

var playerTurn = true
var bidenMove = " "
var marioMove = " "
var bidenHP = 1000
var marioHP = 600
var akHits = 2
var bluntTurns = 0
var bluntTaken = false
var marioAlive = true
var bidenAlive = true

var enemyHP = 1200
var enemy = "Obama"
var nextAttack = "Presidential Press"
var nextAttackEncode = 1

var bBlocking = false
var mBlocking = false
var healed = false


func _process(_delta):
	if bidenAlive == false and marioAlive == false:
		get_tree().change_scene_to_file("res://scenes/game/You Died.tscn")
	
	if enemyHP < 1:
		get_tree().change_scene_to_file("res://scenes/basic stuff/ui.tscn")
	
	if marioHP < 1:
		marioAlive = false
		marioMove = "Dead"
	
	if bidenHP < 1:
		bidenAlive = false
		bidenMove = "Dead"
	
	if playerTurn == false:
		if energy < 1:
			energy = 0
			bidenHP -= 500
			marioHP -= 300
		
		if nextAttack == "Presidential Press":
			if bBlocking == false:
				bidenHP -= 100
			elif bBlocking == true:
				bidenHP -= 50
			
			elif mBlocking == false and bluntTaken == false:
				marioHP -= 60
			elif mBlocking == true and bluntTaken == false:
				marioHP -= 30
			else:
				marioHP -= 10
			
		elif nextAttack == "Obama Obliteration":
			if bBlocking == false:
				bidenHP -= 250
			elif bBlocking == true:
				bidenHP -= 125
			
			elif mBlocking == false and bluntTaken == false:
				marioHP -= 200
			elif mBlocking == true and bluntTaken == false:
				marioHP -= 100
			else:
				marioHP -= 10
			
		elif nextAttack == "KFC":
			enemyHP += 150
		
		elif nextAttack == "Drone Strike":
			@warning_ignore("integer_division")
			bidenHP = snappedi(bidenHP/2, 0)
		
			if bluntTaken == false:
				@warning_ignore("integer_division")
				marioHP = snappedi(marioHP/2, 0)
			elif bluntTaken == true:
				marioHP -= 10
			
		elif nextAttack == "White Supremacy":
			if healed == true:
				bidenHP -= 350
			else:
				bidenHP += 50
			
			if bluntTaken == true:
				marioHP -= 300
			elif healed == true:
				marioHP -= 150
			else:
				marioHP += 50
			
		playerTurn = true
		bBlocking = false
		mBlocking = false
		if bidenAlive == true:
			bidenMove = " "
		if marioAlive == true:
			marioMove = " "
		if bluntTaken == true:
			bluntTurns += 1
		nextAttackEncode = randi() % 5
	else:
		if nextAttackEncode == 0:
			nextAttack = "Presidential Press"
		elif nextAttackEncode == 1:
			nextAttack = "Obama Obliteration"
		elif nextAttackEncode == 2:
			nextAttack = "KFC"
		elif nextAttackEncode == 3:
			nextAttack = "Drone Strike"
		elif nextAttackEncode == 4:
			nextAttack = "White Supremacy"


func _on_biden_blast_pressed():
	bidenMove = "Biden Blast"
	if marioAlive == true:
		button2._on_mario_select_pressed()
	else:
		button._on_back_pressed()


func _on_obama_chicken_pressed():
	bidenMove = "Obama Fried Chicken"
	if marioAlive == true:
		button2._on_mario_select_pressed()
	elif marioAlive == false:
		button._on_back_pressed()


func _on_block_pressed():
	bidenMove = "Block"
	if marioAlive == true:
		button2._on_mario_select_pressed()
	elif marioAlive == false:
		button._on_back_pressed()


func _on_ak_47_pressed():
	marioMove = "AK 47"
	if bidenAlive == true:
		button._on_biden_select_pressed()
	elif bidenAlive == false:
		button2._on_back_pressed()


func _on_fat_blunt_pressed():
	marioMove = "Fat Blunt"
	if bidenAlive == true:
		button._on_biden_select_pressed()
	elif bidenAlive == false:
		button2._on_back_pressed()


func _on_mario_block_pressed():
	marioMove = "Block"
	if bidenAlive == true:
		button._on_biden_select_pressed()
	elif bidenAlive == false:
		button2._on_back_pressed()


func _on_dementia_dimension_pressed():
	bidenMove = "Dementia Dimension"
	if marioAlive == true:
		button2._on_mario_select_pressed()
	elif marioAlive == false:
		button._on_back_pressed()


func _on_finish_pressed():
	if not bidenMove == " " and not marioMove == " ":
		if bidenMove == "Biden Blast":
			enemyHP -= 100
			energy -= 20
		elif bidenMove == "Obama Fried Chicken":
			bidenHP += 150
			marioHP += 100
			healed = true
			energy -= 10
		elif bidenMove == "Block":
			bBlocking = true
			energy += 10
		elif bidenMove == "Dementia Dimension":
			nextAttackEncode = randi() % 3
			if nextAttackEncode == 1:
				nextAttack = "Presidential Press"
			else:
				nextAttack = "KFC"
		
		if marioMove == "AK 47":
			energy -= 40
			akHits = 1 + randi() % 3
			enemyHP -= 100 * akHits
		elif marioMove == "Fat Blunt":
			if bluntTaken == false:
				bluntTurns = 0
				bluntTaken = true
				marioHP += 100
				energy -= 10
			else:
				marioHP -= 300
				bluntTurns = 0
				bidenHP -= 50
				energy -= 10
		elif marioMove == "Block":
			mBlocking = true
			energy += 10
		
		if bluntTurns > 2:
			bluntTaken = false
			bluntTurns = 0
			@warning_ignore("integer_division")
			marioHP = snappedi(marioHP/10, 0)
		
		energy += 20
		if energy > 100:
			energy = 100
		
		if energy <= 0:
			bidenHP -= 100
			marioHP -= 75
		
		if bidenAlive == false:
			button2._on_mario_select_pressed()
	
		if marioAlive == false:
			button._on_biden_select_pressed()
		
		playerTurn = false
		nuh_uh.hide()
	else:
		nuh_uh.show()
		nuh_uh.text = "nothing selected"
