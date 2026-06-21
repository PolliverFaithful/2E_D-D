extends Node2D
@export var character_data: Character

@export var current_cell: Vector2i = Vector2i.ZERO

var background

func setup(tilemap_layer):
	background = tilemap_layer
	update_position()

func update_position():
	if background:
		global_position = background.to_global(background.map_to_local(current_cell))


func set_selected(value: bool):
	print("Selection changed: ", value)
	print(character_data.Bench)
	print(character_data.XP_To_Level)
	if value:
		$Sprite2D.modulate = Color.RED
	else:
		$Sprite2D.modulate = Color.WHITE


func move_to_cell(target_cell: Vector2i):

	var target_local = background.map_to_local(target_cell)
	var target_global = background.to_global(target_local)

	global_position = target_global

	current_cell = target_cell
