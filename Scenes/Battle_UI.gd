extends Control

signal Attack_Requested
signal Move_Requested
signal Spell_Requested
signal Other_Requested

var Main
func _ready() -> void:
	Main = get_parent()

func _on_stats_button_pressed() -> void:
	$"../Character Stats".visible = !$"../Character Stats".visible

func _on_move_button_pressed() -> void:
	emit_signal("Move_Requested")

func _on_attack_button_pressed() -> void:
	emit_signal("Attack_Requested")

func _on_spell_button_pressed() -> void:
	emit_signal("Spell_Requested")

func _on_other_button_pressed() -> void:
	emit_signal("Other_Requested")

@onready var STR_Score = $"../Character Stats/Stat Scores/STR_Score"
@onready var DEX_Score = $"../Character Stats/Stat Scores/DEX_Score"
@onready var CON_Score = $"../Character Stats/Stat Scores/CON_Score"
@onready var INT_Score = $"../Character Stats/Stat Scores/INT_Score"
@onready var WIS_Score = $"../Character Stats/Stat Scores/WIS_Score"
@onready var CHR_Score = $"../Character Stats/Stat Scores/CHR_Score"
@onready var Class = $"../Character Stats/Class/GD PC Class"
@onready var Race = $"../Character Stats/Race/GD PC Race"
@onready var Level = $"../Character Stats/Level/Level Variable"
@onready var Max_HP = $"../Character Stats/Max HP/Max HP Score"
@onready var Current_HP = $"../Character Stats/Max HP/Current HP/Current HP Score"
@onready var AC = $"../Character Stats/Armor Class/AC Score"
@onready var XP_To_Level = $"../Character Stats/Experience Values/EXP to Level Value"

func display_character(Character):
	STR_Score.text = str(Character.Ability_Scores["STR"])
	DEX_Score.text = str(Character.Ability_Scores["DEX"])
	CON_Score.text = str(Character.Ability_Scores["CON"])
	INT_Score.text = str(Character.Ability_Scores["INT"])
	WIS_Score.text = str(Character.Ability_Scores["WIS"])
	CHR_Score.text = str(Character.Ability_Scores["CHR"])
	Class.text = str(Character.Class)
	Race.text = str(Character.Race)
	Level.text = str(Character.Experience["Level"])
	Max_HP.text = str(Character.Combat_Stats["Max_HP"])
	Current_HP.text = str(Character.Combat_Stats["Current_HP"])
	AC.text = str(Character.Combat_Stats["AC"])
	XP_To_Level.text = str(Character.XP_To_Level)

func clear_stats():
	STR_Score.text = "-"
	DEX_Score.text = "-"
	CON_Score.text = "-"
	INT_Score.text = "-"
	WIS_Score.text = "-"
	CHR_Score.text = "-"

func _on_main_unit_selected(unit: Variant) -> void:
	display_character(unit.character_data)
