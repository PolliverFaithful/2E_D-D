extends Node

func _ready():
	if GD.PC["Race"] == 3:
		$"Class Options".set_item_disabled(8, true)
		$"Class Options".set_item_disabled(9, true)

func _on_item_list_item_clicked(_index: int, _at_position: Vector2, _mouse_button_index: int):
	$Next.visible = true
	if $"Class Options".is_selected(0) == true:
		GD.PC["Class"] = 0
		$"Fighter Flavor Text".visible = true
		$"Fighter Bonuses".visible = true
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(1) == true:
		GD.PC["Class"] = 1
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = true
		$"Paladin Bonuses".visible = true
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(2) == true:
		GD.PC["Class"] = 2
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = true
		$"Ranger Bonuses".visible = true
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(3) == true:
		GD.PC["Class"] = 3
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = true
		$"Thief Bonuses".visible = true
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(4) == true:
		GD.PC["Class"] = 4
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = true
		$"Bard Bonuses".visible = true
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(5) == true:
		GD.PC["Class"] = 5
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = true
		$"Priest Bonuses".visible = true
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(6) == true:
		GD.PC["Class"] = 6
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = true
		$"Cleric Bonuses".visible = true
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(7) == true:
		GD.PC["Class"] = 7
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = true
		$"Druid Bonuses".visible = true
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(8) == true:
		GD.PC["Class"] = 8
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = true
		$"Mage Bonuses".visible = true
		$"Wizard Flavor Text".visible = false
		$"Wizard Bonuses".visible = false

	elif $"Class Options".is_selected(9) == true:
		GD.PC["Class"] = 9
		$"Fighter Flavor Text".visible = false
		$"Fighter Bonuses".visible = false
		$"Paladin Flavor Text".visible = false
		$"Paladin Bonuses".visible = false
		$"Ranger Flavor Text".visible = false
		$"Ranger Bonuses".visible = false
		$"Thief Flavor Text".visible = false
		$"Thief Bonuses".visible = false
		$"Bard Flavor Text".visible = false
		$"Bard Bonuses".visible = false
		$"Priest Flavor Text".visible = false
		$"Priest Bonuses".visible = false
		$"Cleric Flavor Text".visible = false
		$"Cleric Bonuses".visible = false
		$"Druid Flavor Text".visible = false
		$"Druid Bonuses".visible = false
		$"Mage Flavor Text".visible = false
		$"Mage Bonuses".visible = false
		$"Wizard Flavor Text".visible = true
		$"Wizard Bonuses".visible = true

func Class_Identity():
	if GD.PC["Class"] == 0:
		print ("Fighter")
	if GD.PC["Class"] == 1:
		print ("Paladin")
	if GD.PC["Class"] == 2:
		print ("Ranger")
	if GD.PC["Class"] == 3:
		print ("Thief")
	if GD.PC["Class"] == 4:
		print ("Bard")
	if GD.PC["Class"] == 5:
		print ("Preist")
	if GD.PC["Class"] == 6:
		print ("Cleric")
	if GD.PC["Class"] == 7:
		print ("Druid")
	if GD.PC["Class"] == 8:
		print ("Mage")
	if GD.PC["Class"] == 9:
		print ("Wizard")
	if GD.PC["Class"] == 10:
		print ("None") #Every good Wizard has a magic sword.

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Character Select.tscn")
