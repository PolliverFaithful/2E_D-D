extends Window

@onready var STR_Label = $"NinePatchRect/Stat Scores/STR_Score"

func Display_Stats (Stats: Character):
	STR_Label.text = str(Stats.Ability_Scores["STR"])
