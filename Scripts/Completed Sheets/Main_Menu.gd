extends Control


func _on_Begin_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Introduction to the Game.tscn")


func _on_Exit_pressed() -> void:
	print("Exit Pressed")


func _on_Settings_pressed() -> void:
	get_tree().quit()
