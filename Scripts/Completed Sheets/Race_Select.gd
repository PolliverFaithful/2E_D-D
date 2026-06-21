extends Control


func _on_item_list_item_clicked(_index: int, _at_position: Vector2, _mouse_button_index: int):
	if $"Race Options".is_selected(0) == true:
		GD.PC["Race"] = 0
		$"Human Flavor Text".visible = true
		$"Human Bonuses".visible = true
		$"Half-Elf Flavor Text".visible = false
		$"Half-Elf Bonuses".visible = false
		$"Gnome Flavor Text".visible = false
		$"Gnome Bonuses".visible = false
		$"Elf Flavor Text".visible = false
		$"Elf Bonuses".visible = false
		$"Dwarf Flavor Text".visible = false
		$"Dwarf Bonuses".visible = false
		$"Halfling Flavor Text".visible = false
		$"Halfling Bonuses".visible = false

	elif $"Race Options".is_selected(1) == true:
		GD.PC["Race"] = 2
		$"Human Flavor Text".visible = false
		$"Human Bonuses".visible = false
		$"Half-Elf Flavor Text".visible = true
		$"Half-Elf Bonuses".visible = true
		$"Gnome Flavor Text".visible = false
		$"Gnome Bonuses".visible = false
		$"Elf Flavor Text".visible = false
		$"Elf Bonuses".visible = false
		$"Dwarf Flavor Text".visible = false
		$"Dwarf Bonuses".visible = false
		$"Halfling Flavor Text".visible = false
		$"Halfling Bonuses".visible = false

	elif $"Race Options".is_selected(2) == true:
		GD.PC["Race"] = 1
		$"Human Flavor Text".visible = false
		$"Human Bonuses".visible = false
		$"Half-Elf Flavor Text".visible = false
		$"Half-Elf Bonuses".visible = false
		$"Gnome Flavor Text".visible = false
		$"Gnome Bonuses".visible = false
		$"Elf Flavor Text".visible = true
		$"Elf Bonuses".visible = true
		$"Dwarf Flavor Text".visible = false
		$"Dwarf Bonuses".visible = false
		$"Halfling Flavor Text".visible = false
		$"Halfling Bonuses".visible = false

	elif $"Race Options".is_selected(3) == true:
		GD.PC["Race"] = 3
		$"Human Flavor Text".visible = false
		$"Human Bonuses".visible = false
		$"Half-Elf Flavor Text".visible = false
		$"Half-Elf Bonuses".visible = false
		$"Gnome Flavor Text".visible = false
		$"Gnome Bonuses".visible = false
		$"Elf Flavor Text".visible = false
		$"Elf Bonuses".visible = false
		$"Dwarf Flavor Text".visible = true
		$"Dwarf Bonuses".visible = true
		$"Halfling Flavor Text".visible = false
		$"Halfling Bonuses".visible = false

	elif $"Race Options".is_selected(4) == true:
		GD.PC["Race"] = 8
		$"Human Flavor Text".visible = false
		$"Human Bonuses".visible = false
		$"Half-Elf Flavor Text".visible = false
		$"Half-Elf Bonuses".visible = false
		$"Gnome Flavor Text".visible = true
		$"Gnome Bonuses".visible = true
		$"Elf Flavor Text".visible = false
		$"Elf Bonuses".visible = false
		$"Dwarf Flavor Text".visible = false
		$"Dwarf Bonuses".visible = false
		$"Halfling Flavor Text".visible = false
		$"Halfling Bonuses".visible = false

	elif $"Race Options".is_selected(5) == true:
		GD.PC["Race"] = 4
		$"Human Flavor Text".visible = false
		$"Human Bonuses".visible = false
		$"Half-Elf Flavor Text".visible = false
		$"Half-Elf Bonuses".visible = false
		$"Gnome Flavor Text".visible = false
		$"Gnome Bonuses".visible = false
		$"Elf Flavor Text".visible = false
		$"Elf Bonuses".visible = false
		$"Dwarf Flavor Text".visible = false
		$"Dwarf Bonuses".visible = false
		$"Halfling Flavor Text".visible = true
		$"Halfling Bonuses".visible = true




func _on_next_pressed() -> void:
		get_tree().change_scene_to_file("res://Scenes/Class Select.tscn")
