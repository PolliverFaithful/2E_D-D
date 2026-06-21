extends Node2D

signal unit_selected(unit)
signal unit_deselected()

@onready var background = $Background
@onready var stat_sheet = $"Character Stats"

var Kobold = preload("res://Scenes/Unit.tscn")

var selected_unit = null
var Active_Unit = null

enum ActionMode {None, Move, Attack, Spell, Pass, Observe, Other}
var Current_Mode = ActionMode.None


func _ready():
	$"Kobold Jinjo".setup(background)
	spawn_unit(Kobold, Vector2i(2, 3))
	spawn_unit(Kobold, Vector2i(5, 6))



func select_unit(unit):
	if selected_unit == unit:
		selected_unit.set_selected(false)
		selected_unit = null
		emit_signal("unit_deselected")
		print("Deselected: ", unit.name)
		return

	if selected_unit:
		selected_unit.set_selected(false)
	selected_unit = unit
	selected_unit.set_selected(true)
	emit_signal("unit_selected", selected_unit)
	print("Selected: ", unit.name)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var mouse_pos = get_global_mouse_position()
			# First check if a unit was clicked
			var clicked_unit = get_unit_at_position(mouse_pos)
			if clicked_unit:
				select_unit(clicked_unit)
				return
			# Otherwise try moving selected unit
			if selected_unit:
				var clicked_cell = background.local_to_map(
					background.to_local(mouse_pos)
				)
				try_move_unit(selected_unit, clicked_cell)



func get_unit_at_position(mouse_position):
	var units = get_tree().get_nodes_in_group("units")
	for unit in units:
		if unit.global_position.distance_to(mouse_position) < 4:
			return unit
	return null


func is_adjacent(a: Vector2i, b: Vector2i) -> bool:
	var directions = [
		TileSet.CELL_NEIGHBOR_RIGHT_SIDE,
		TileSet.CELL_NEIGHBOR_LEFT_SIDE,
		TileSet.CELL_NEIGHBOR_TOP_RIGHT_SIDE,
		TileSet.CELL_NEIGHBOR_TOP_LEFT_SIDE,
		TileSet.CELL_NEIGHBOR_BOTTOM_RIGHT_SIDE,
		TileSet.CELL_NEIGHBOR_BOTTOM_LEFT_SIDE
	]
	for dir in directions:
		if background.get_neighbor_cell(a, dir) == b:
			return true
	return false


func try_move_unit(unit, target_cell):
	var current_cell = unit.current_cell
	if not is_adjacent(unit.current_cell, target_cell):
		return
	if is_cell_occupied(target_cell, unit):
		return
	unit.move_to_cell(target_cell)


func is_cell_occupied(cell: Vector2i, ignore_unit = null) -> bool:
	var units = get_tree().get_nodes_in_group("units")
	for other_unit in units:
		# Skip invalid nodes
		if other_unit == ignore_unit:
			continue
		var unit_cell = background.local_to_map(
			background.to_local(other_unit.global_position)
		)
		if unit_cell == cell:
			return true
	return false


func spawn_unit(scene, cell: Vector2i):
	var unit = scene.instantiate()
	add_child(unit)
	unit.add_to_group("units")
	unit.setup(background)
	unit.current_cell = cell
	unit.global_position = background.to_global(
		background.map_to_local(cell)
	)
	return unit


func _on_control_attack_requested() -> void:
	print("Attack Pressed")
	var Attack_Cursor = load("res://Images/Kenney Cursors/Tiles/tile_0106.png")
	Input.set_custom_mouse_cursor(Attack_Cursor)
	Current_Mode = ActionMode.Attack


func _on_control_move_requested() -> void:
	print("Move Pressed")
	var Move_Cursor = load("res://Images/Kenney Cursors/Tiles/tile_0098.png")
	Input.set_custom_mouse_cursor(Move_Cursor)
	Current_Mode = ActionMode.Move


func _on_control_spell_requested() -> void:
	print("Spell Pressed")
	var Move_Cursor = load("res://Images/Kenney Cursors/Tiles/tile_0128.png")
	Input.set_custom_mouse_cursor(Move_Cursor)
	Current_Mode = ActionMode.Spell


func _on_control_other_requested() -> void:
	print("Other Pressed")
	var Move_Cursor = load("res://Images/Kenney Cursors/Tiles/tile_0180.png")
	Input.set_custom_mouse_cursor(Move_Cursor)
	Current_Mode = ActionMode.Other
